# Módulo 2: NestJS Explicado para Desarrolladores Java/C#

Si vienes de Java (Spring Boot) o C# (.NET Core), NestJS te resultará **extremadamente familiar**. Fue diseñado inspirándose fuertemente en Angular, que a su vez se inspira en Java.

## Analizando `app.module.ts`

Este archivo es el corazón de la configuración. Es equivalente a tu clase `@Configuration` en Spring o `Startup.cs` en .NET.

```typescript
// Imports... (Equivalente a 'using' o 'import')

// El decorador @Module es como @Configuration en Spring
@Module({
  imports: [
    // 1. Configuración Global (Variables de entorno, .env)
    ConfigModule.forRoot({ isGlobal: true }),

    // 2. Conexión a Base de Datos (Equivalente a configurar DbContext en .NET)
    TypeOrmModule.forRootAsync({
      // Inyección de Dependencias para leer la configuración
      useFactory: (config: ConfigService) => {
        // En tu código, aquí decides si usas SQL Server o Postgres
        // Esto es código dinámico real, ¡muy potente!
        const dbType = config.get('DB_TYPE') || 'postgres';
        if (dbType === 'mssql') { return { ... }; }
        return { ... };
      },
      inject: [ConfigService],
    }),

    // 3. Módulos de Funcionalidad (Agrupación lógica de código)
    AuthModule,     // Seguridad, Login
    PlanningModule, // Tu lógica de negocio principal
    // ...
  ],
  controllers: [AppController], // Endpoints REST
  providers: [AppService],      // Lógica de Negocio Global
})
export class AppModule { }
```

### Conceptos Clave Mapeados

| Concepto NestJS | Java (Spring Boot) | C# (.NET Core) | Explicación |
| :--- | :--- | :--- | :--- |
| **@Module** | `@Configuration` | `IServiceCollection` (Startup) | Agrupa controladores y servicios. |
| **@Controller** | `@RestController` | `[ApiController]` | Define rutas HTTP (`GET`, `POST`). |
| **@Injectable** (Provider) | `@Service` / `@Component` | Interface + Implementation | Clase con lógica de negocio que se puede inyectar. |
| **DTO** (Data Transfer Object) | POJO / Record | DTO / Record | Objeto simple para definir qué datos entran/salen. |
| **TypeORM** | Hibernate / JPA | Entity Framework | Mapea clases (Entidades) a tablas SQL. |
| **Decoradores** (`@Get()`) | Anotaciones (`@GetMapping`) | Atributos (`[HttpGet]`) | Metadatos sobre clases o métodos. |

## Analizando `main.ts`

Este es el punto de entrada (`entry point`).

```typescript
async function bootstrap() {
  // Crea la aplicación NestJS
  // Nota: Estás usando Fastify en lugar de Express.
  // Fastify es una alternativa ultra-rápida a Express (standard en Node).
  const app = await NestFactory.create<NestFastifyApplication>(AppModule, adapter, ...);

  // Configuración Global
  app.setGlobalPrefix('api'); // Todas las rutas empiezan con /api
  
  // Swagger (Documentación automática de API)
  // Igual que SwaggerGen en .NET
  const config = new DocumentBuilder()...build();

  // Iniciar servidor http
  await app.listen(port, '0.0.0.0');
}
bootstrap();
```

## Por qué NestJS es genial para un Backend Dev
NestJS te "obliga" a usar una arquitectura ordenada. A diferencia de Express "crudo" donde puedes poner todo en un archivo, NestJS te exige separar **Controladores** de **Servicios** y de **Módulos**. Esto hace que el código sea mantenible, testeable y muy parecido a arquitecturas empresariales Java/C#.

## Tu Tarea
Abre el archivo `planning/planning.controller.ts` y trata de identificar las anotaciones (`@Get`, `@Post`). Verás que puedes leerlo casi como si fuera Java.
En el próximo módulo específico de Backend, desglosaremos ese archivo.
