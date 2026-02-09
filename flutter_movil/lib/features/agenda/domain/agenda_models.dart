
class AgendaResponse {
  final Checkin? checkinHoy;
  final List<Tarea> tareasSugeridas;
  final List<Tarea> backlog;
  final List<Bloqueo> bloqueosActivos;
  final List<Bloqueo> bloqueosMeCulpan;

  AgendaResponse({
    this.checkinHoy,
    required this.tareasSugeridas,
    required this.backlog,
    required this.bloqueosActivos,
    required this.bloqueosMeCulpan,
  });

  factory AgendaResponse.fromJson(Map<String, dynamic> json) {
    return AgendaResponse(
      checkinHoy: json['checkinHoy'] != null ? Checkin.fromJson(json['checkinHoy']) : null,
      tareasSugeridas: (json['tareasSugeridas'] as List?)?.map((e) => Tarea.fromJson(e)).toList() ?? [],
      backlog: (json['backlog'] as List?)?.map((e) => Tarea.fromJson(e)).toList() ?? [],
      bloqueosActivos: (json['bloqueosActivos'] as List?)?.map((e) => Bloqueo.fromJson(e)).toList() ?? [],
      bloqueosMeCulpan: (json['bloqueosMeCulpan'] as List?)?.map((e) => Bloqueo.fromJson(e)).toList() ?? [],
    );
  }
}

class Checkin {
  final int idCheckin;
  final String fecha;
  final String? entregableTexto;
  final String? nota;
  final String? estadoAnimo;
  final int? energia;

  Checkin({
    required this.idCheckin,
    required this.fecha,
    this.entregableTexto,
    this.nota,
    this.estadoAnimo,
    this.energia,
  });

  factory Checkin.fromJson(Map<String, dynamic> json) {
    return Checkin(
      idCheckin: json['idCheckin'] ?? 0,
      fecha: json['fecha'] ?? '',
      entregableTexto: json['entregableTexto'],
      nota: json['nota'],
      estadoAnimo: json['estadoAnimo'],
      energia: json['energia'],
    );
  }
}

class Tarea {
  final int idTarea;
  final String titulo;
  final String? descripcion;
  final String estado; // Pendiente, EnCurso, Hecha, etc.
  final String prioridad; // Alta, Media, Baja
  final int? idProyecto;
  final String? proyectoNombre;
  final String? fechaObjetivo;
  final int progreso;
  final int orden;

  Tarea({
    required this.idTarea,
    required this.titulo,
    this.descripcion,
    required this.estado,
    required this.prioridad,
    this.idProyecto,
    this.proyectoNombre,
    this.fechaObjetivo,
    required this.progreso,
    required this.orden,
  });

  factory Tarea.fromJson(Map<String, dynamic> json) {
    return Tarea(
      idTarea: json['idTarea'] ?? 0,
      titulo: json['titulo'] ?? 'Sin Título',
      descripcion: json['descripcion'],
      estado: json['estado'] ?? 'Pendiente',
      prioridad: json['prioridad'] ?? 'Media',
      idProyecto: json['idProyecto'],
      proyectoNombre: json['proyectoNombre'],
      fechaObjetivo: json['fechaObjetivo'],
      progreso: json['progreso'] ?? 0,
      orden: json['orden'] ?? 0,
    );
  }
}

class Bloqueo {
  final int idBloqueo;
  final int? idTarea;
  final String motivo;
  final String? destinoTexto;
  final Tarea? tarea;

  Bloqueo({
    required this.idBloqueo,
    this.idTarea,
    required this.motivo,
    this.destinoTexto,
    this.tarea,
  });

  factory Bloqueo.fromJson(Map<String, dynamic> json) {
    return Bloqueo(
      idBloqueo: json['idBloqueo'] ?? 0,
      idTarea: json['idTarea'],
      motivo: json['motivo'] ?? '',
      destinoTexto: json['destinoTexto'],
      tarea: json['tarea'] != null ? Tarea.fromJson(json['tarea']) : null,
    );
  }
}
