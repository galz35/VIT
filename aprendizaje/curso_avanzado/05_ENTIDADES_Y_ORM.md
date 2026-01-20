# Módulo 5: Entidades y ORM (TypeORM vs Entity Framework)

Como experto en C# y Java, estás acostumbrado a trabajar con **Entity Framework (EF)** o **Hibernate/JPA**.
En este proyecto Node.js, usamos **TypeORM**.
La buena noticia: Son **casi idénticos**. Usan el mismo patrón de "Data Mapper" o "Active Record" y decoradores para mapear Clases a Tablas.

## Analizando `backend/src/auth/entities/usuario.entity.ts`

Este archivo define la tabla de usuarios. Vamos a diseccionarlo comparándolo con C# (EF Core).

### 1. La Clase Entidad

**En TypeORM (Tu código actual):**
```typescript
import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from 'typeorm';

@Entity({ name: 'p_Usuarios' }) // Mapea a tabla SQL 'p_Usuarios'
export class Usuario {
    @PrimaryGeneratedColumn() // IDENTITY(1,1) / AUTO_INCREMENT
    idUsuario: number;

    @Column({ length: 50, unique: true, nullable: true }) // NVARCHAR(50), UNIQUE, NULL
    carnet: string;
//...
```

**En C# (Entity Framework Core):**
```csharp
[Table("p_Usuarios")]
public class Usuario {
    [Key]
    public int IdUsuario { get; set; }

    [MaxLength(50)]
    public string Carnet { get; set; }
}
```

### 2. Relaciones (Foreign Keys)

Aquí es donde TypeORM brilla por su similitud con JPA/Hibernate.

**En TypeORM (Tu código):**
```typescript
    @ManyToOne(() => Rol)             // Relación N:1
    @JoinColumn({ name: 'idRol' })    // La columna física es 'idRol'
    rol: Rol;                         // Propiedad de navegación
```

**En C# (EF Core):**
```csharp
    [ForeignKey("IdRol")]
    public virtual Rol Rol { get; set; }
```

### 3. Diferencias Clave (¡Atención!)

#### A. Inicialización de Propiedades
*   **C#**: Las propiedades suelen ser `public string Nombre { get; set; }`.
*   **TypeScript (Strict Mode)**: Si no inicializas una propiedad, el compilador se queja.
    *   Truco: Usan el signo "!" (`nombre!: string;`) para decirle a TS "Tranquilo, TypeORM va a llenar esto desde la base de datos".

#### B. Repository Pattern
TypeORM usa el patrón **Repository** por defecto.
*   En tu `UsersService`, verás esto:
    ```typescript
    this.usuarioRepo.findOne({ where: { id: 1 } })
    ```
*   En Entity Framework, usas `DbContext` directo:
    ```csharp
    context.Usuarios.FirstOrDefault(u => u.Id == 1);
    ```

### 4. Consultas (LINQ vs FindOptions)

Esta es la parte que más extrañarás de C#: **LINQ**.
TypeScript no tiene LINQ nativo integrando SQL. TypeORM usa objetos JSON para las consultas.

**Tu Reto (Comparativa):**

| Operación | C# (LINQ) | TypeORM |
| :--- | :--- | :--- |
| **SELECT * WHERE** | `db.Users.Where(u => u.Activo)` | `repo.find({ where: { activo: true } })` |
| **JOIN (Eager)** | `.Include(u => u.Rol)` | `repo.find({ relations: ['rol'] })` |
| **ORDER BY** | `.OrderBy(u => u.Nombre)` | `order: { nombre: 'ASC' }` |
| **SELECT parcial** | `.Select(u => new { u.Nombre })` | `select: ['nombre']` |

### Resumen
TypeORM es lo más cercano a Entity Framework que existe en Node.js. Si entiendes las anotaciones (`@Column`, `@Entity`), ya sabes el 90%.
El otro 10% es acostumbrarse a escribir las consultas (`Author.find(...)`) en lugar de usar LINQ.
