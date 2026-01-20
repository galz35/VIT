# 🔄 CONFIGURACIÓN MULTI-BASE DE DATOS

El backend soporta **dos bases de datos** intercambiables:

| Base de Datos | Variable | Cuándo usar |
|---------------|----------|-------------|
| **PostgreSQL (Supabase)** | `DB_TYPE=postgres` | Desarrollo, pruebas gratis en la nube |
| **SQL Server** | `DB_TYPE=mssql` | Producción local en Claro |

---

## 🐘 OPCIÓN 1: Supabase (PostgreSQL) - Actual

Esta es la configuración actual. No necesitas cambiar nada.

```env
DB_TYPE=postgres

DB_HOST=aws-0-us-west-2.pooler.supabase.com
DB_PORT=6543
DB_USER=postgres.ddmeodlpdxgmadduwdas
DB_PASSWORD="92li!ra$Gu2"
DB_NAME=postgres
DB_SSL=true
```

**Ventajas:**
- ✅ Gratis hasta 500MB
- ✅ Accesible desde cualquier lugar
- ✅ Ya tiene datos de prueba

**Cuándo usar:**
- Desarrollo diario
- Pruebas
- Demos remotos

---

## 🔷 OPCIÓN 2: SQL Server Local

Para producción en Claro, usa SQL Server local.

### Paso 1: Configura el .env

```env
DB_TYPE=mssql

MSSQL_HOST=localhost
MSSQL_PORT=1433
MSSQL_USER=sa
MSSQL_PASSWORD=TuPasswordAqui
MSSQL_DATABASE=MOMENTUS
MSSQL_ENCRYPT=false
MSSQL_TRUST_CERT=true
```

### Paso 2: Crea la Base de Datos en SQL Server

```sql
-- Ejecutar en SQL Server Management Studio
CREATE DATABASE MOMENTUS;
GO
```

### Paso 3: Reinicia el Backend

```powershell
# Detener el backend actual (Ctrl+C)
# Volver a iniciar
npm run start:dev
```

Las tablas se crearán automáticamente gracias a `synchronize: true`.

---

## 🔀 CAMBIAR ENTRE BASES DE DATOS

### De Supabase a SQL Server:

1. Abre `.env`
2. Cambia `DB_TYPE=postgres` por `DB_TYPE=mssql`
3. Configura las variables `MSSQL_*`
4. Reinicia el backend

### De SQL Server a Supabase:

1. Abre `.env`
2. Cambia `DB_TYPE=mssql` por `DB_TYPE=postgres`
3. Reinicia el backend

---

## ⚠️ NOTAS IMPORTANTES

### Los datos NO se sincronizan

Cada base de datos tiene sus propios datos. Si cambias de una a otra:
- Los usuarios no se copian
- Las tareas no se copian
- Tendrás que importar de nuevo

### Diferencias entre PostgreSQL y SQL Server

| Aspecto | PostgreSQL | SQL Server |
|---------|------------|------------|
| Tipos de datos | Algunos difieren | Algunos difieren |
| Fechas | `timestamp` | `datetime2` |
| Booleanos | `boolean` | `bit` |
| Auto-increment | `SERIAL` | `IDENTITY` |

**TypeORM maneja estas diferencias automáticamente** gracias a las entidades.

### Producción

Para producción, desactiva `synchronize`:

```typescript
synchronize: false, // NO modificar tablas en producción
```

Y usa migraciones:

```bash
npm run typeorm migration:generate -- -n NombreMigracion
npm run typeorm migration:run
```

---

## 📋 VERIFICAR CONEXIÓN

Al iniciar el backend, verás en consola:

**PostgreSQL:**
```
🐘 Conectando a PostgreSQL (Supabase)...
[Nest] INFO Nest application successfully started
```

**SQL Server:**
```
🔷 Conectando a SQL Server...
[Nest] INFO Nest application successfully started
```

---

## 🔧 TROUBLESHOOTING

### Error: "Cannot find module 'mssql'"

```bash
npm install mssql --save
```

### Error: "Login failed for user 'sa'"

- Verifica que SQL Server esté corriendo
- Verifica usuario/password en `.env`
- Habilita autenticación SQL en SQL Server

### Error: "Connection refused"

- Verifica que el puerto 1433 esté abierto
- Verifica que SQL Server permita conexiones TCP/IP

### Error: "Database does not exist"

```sql
CREATE DATABASE MOMENTUS;
```

---

*Última actualización: 14 de Enero 2026*
