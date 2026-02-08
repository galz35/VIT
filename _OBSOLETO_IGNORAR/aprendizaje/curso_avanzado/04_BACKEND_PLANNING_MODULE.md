# Módulo 4: Anatomía de un Controlador NestJS (Backend)

Vamos a analizar tu archivo `backend/src/planning/planning.controller.ts` línea por línea.
Este archivo define la **API REST** para el módulo de planificación.

## El Código Explicado

```typescript
// 1. Decoradores: NestJS usa decoradores para TODO.
// Son equivalentes a las Anotaciones de Java (@RestController) o Atributos de C# ([ApiController]).
import { Controller, Post, Body, Get, UseGuards, Request, Query, Param, Delete } from '@nestjs/common';
import { PlanningService } from './planning.service';
import { AnalyticsService } from './analytics.service';

// 2. Definición del Controller
// 'planning' significa que todas las rutas empezarán por /api/planning
@Controller('planning')
// 3. Seguridad
// @UseGuards funciona como un Filtro o Middleware.
// AuthGuard('jwt') verifica que la petición tenga un token válido en el Header Authorization.
@UseGuards(AuthGuard('jwt'))
export class PlanningController {
    // 4. Inyección de Dependencias (Constructor Injection)
    // NestJS instancia automáticamente PlanningService y te lo da aquí.
    // Igual que @Autowired en Spring o DI Container en .NET.
    constructor(
        private planningService: PlanningService,
        private analyticsService: AnalyticsService
    ) { }

    // 5. Endpoint POST (Crear/Modificar)
    // Ruta final: POST /api/planning/check-permission
    @Post('check-permission')
    async checkPermission(
        @Request() req: any,          // Accede al objeto Request completo (y al usuario logueado)
        @Body() body: { idTarea: number } // Extrae el JSON del cuerpo de la petición (DTO)
    ) {
        // req.user.userId viene del Token JWT decodificado automáticamente por el Guard
        return await this.planningService.checkEditPermission(body.idTarea, req.user.userId);
    }
    
    // 6. Endpoint GET con Query Params
    // Ruta: GET /api/planning/plans?mes=1&anio=2026
    @Get('plans')
    async getPlans(
        @Request() req: any,
        @Query('mes') mes: number,   // Extrae ?mes=X de la URL
        @Query('anio') anio: number
    ) {
        return await this.planningService.getPlans(..., Number(mes), Number(anio));
    }

    // 7. Endpoint con Path Param
    // Ruta: POST /api/planning/tasks/123/clone
    @Post('tasks/:id/clone')
    async cloneTask(
        @Param('id') id: number, // Extrae el '123' de la URL (:id)
        @Request() req: any
    ) {
        return await this.planningService.cloneTask(req.user.userId, id);
    }
}
```

## Conceptos Clave para Estudiar

1.  **Inyección de Dependencias**: Observa que `PlanningController` NO hace `new PlanningService()`. Pide el servicio en el constructor y NestJS se lo da. Esto hace el código fácil de probar (Test Unitarios).
2.  **Async/Await**: Todo es asíncrono. NestJS espera a que la Promesa (Promise) se resuelva antes de responder al cliente.
3.  **DTOs (Data Transfer Objects)**: En lugar de usar `body: { idTarea: number }`, lo ideal en NestJS es crear una clase `CheckPermissionDto`.
    ```typescript
    export class CheckPermissionDto {
        @IsNumber()
        idTarea: number;
    }
    ```
    Esto permite validación automática.

## Comparación rápida
*   **Java**: `@GetMapping("/plans") public List<Plan> getPlans(@RequestParam int mes)`
*   **NestJS**: `@Get('plans') getPlans(@Query('mes') mes: number)`
*   **C#**: `[HttpGet("plans")] public async Task<ActionResult> GetPlans([FromQuery] int mes)`

¡Son idénticos en concepto! Solo cambia la sintaxis.
