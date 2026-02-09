import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import '../../domain/task_item.dart';
import 'local_database.dart';

class TaskLocalDataSource {
  Future<List<TaskItem>> getAll() async {
    final db = await LocalDatabase.instance.database;
    final rows = await db.query('tasks', orderBy: 'fecha_creacion DESC');
    return rows.map(TaskItem.fromMap).toList();
  }

  Future<int> insert(TaskItem task, {Map<String, dynamic>? additionalPayload}) async {
    final db = await LocalDatabase.instance.database;
    final id = await db.insert('tasks', task.toMap());
    
    final fullPayload = {
        ...task.toMap(), 
        'id': id,
        ...?additionalPayload,
    };

    await _enqueueSync(
      entidad: 'task',
      entidadId: id,
      operacion: 'create',
      payload: jsonEncode(fullPayload),
    );
    return id;
  }

  Future<int> insertSynced(TaskItem task) async {
    final db = await LocalDatabase.instance.database;
    // Asegurar que synced sea true
    final syncedTask = task.copyWith(synced: true);
    // Si la tarea ya tiene ID del servidor, usarlo. 
    // Pero la base de datos local 'id' es auto-increment si no se especifica.
    // Si el servidor envía ID, deberíamos usar ese ID como PK si es posible, 
    // pero si PK es autoincrement integer local, tendríamos conflicto.
    // Asumiré que el ID del servidor se mapea al ID local por ahora, o que el ID local es independiente.
    // Revisando insert: `id` es generado por local.
    // Si queremos reflejar el ID real, deberíamos hacer insert con conflicto replace.
    // Pero si el ID local es diferente al ID remoto, tenemos un problema de mapeo.
    // Por simplicidad para "reflejar inmediatamente", guardaremos con el ID que venga, o generado.
    return await db.insert('tasks', syncedTask.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> update(TaskItem task) async {
    if (task.id == null) return;
    final db = await LocalDatabase.instance.database;
    await db.update(
      'tasks',
      task.copyWith(synced: false).toMap(),
      where: 'id = ?',
      whereArgs: [task.id],
    );
    if (task.id != null) {
      await _enqueueSync(
        entidad: 'task',
        entidadId: task.id!,
        operacion: 'update',
        payload: jsonEncode(task.copyWith(synced: false).toMap()),
      );
    }
  }

  Future<void> markAsSynced(int id) async {
    final db = await LocalDatabase.instance.database;
    await db.update(
      'tasks',
      {'synced': 1, 'fecha_actualizacion': DateTime.now().toIso8601String()},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Map<String, Object?>>> getPendingSyncEvents() async {
    final db = await LocalDatabase.instance.database;
    final now = DateTime.now().toIso8601String();
    return db.query(
      'sync_queue',
      where: 'next_retry_at IS NULL OR next_retry_at <= ?',
      whereArgs: [now],
      orderBy: 'creado_en ASC',
      limit: 100,
    );
  }

  Future<void> removeSyncEvent(int queueId) async {
    final db = await LocalDatabase.instance.database;
    await db.delete('sync_queue', where: 'id = ?', whereArgs: [queueId]);
  }

  Future<void> markSyncEventFailed({
    required int queueId,
    required int attempts,
    required String error,
  }) async {
    final db = await LocalDatabase.instance.database;
    final seconds = _retryDelaySeconds(attempts);
    final retryAt = DateTime.now().add(Duration(seconds: seconds)).toIso8601String();

    await db.update(
      'sync_queue',
      {
        'sync_attempts': attempts,
        'last_error': error,
        'next_retry_at': retryAt,
      },
      where: 'id = ?',
      whereArgs: [queueId],
    );
  }

  Future<void> _enqueueSync({
    required String entidad,
    required int entidadId,
    required String operacion,
    required String payload,
  }) async {
    final db = await LocalDatabase.instance.database;
    await db.insert('sync_queue', {
      'entidad': entidad,
      'entidad_id': entidadId,
      'operacion': operacion,
      'payload': payload,
      'creado_en': DateTime.now().toIso8601String(),
      'sync_attempts': 0,
      'next_retry_at': null,
      'last_error': null,
    });
  }

  int _retryDelaySeconds(int attempts) {
    if (attempts <= 1) return 5;
    if (attempts == 2) return 15;
    if (attempts == 3) return 45;
    if (attempts == 4) return 120;
    return 300;
  }
}
