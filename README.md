# Clarity - Sistema de Gestión de Productividad

![Clarity Logo](./momentus_logo.png)

## 📖 Descripción
**Clarity** es una plataforma integral para la gestión de equipos de alto rendimiento, diseñada para alinear objetivos diarios, gestionar bloqueos en tiempo real y visualizar la productividad utilizando metodologías ágiles y **Eisenhower Matrix**.

El sistema permite a los líderes gestionar equipos distribuidos, priorizar tareas mediante el método **1-3-5** (1 Objetivo, 3 Avances, 5 Extras) y obtener métricas claras de desempeño.

---

## 🚀 Stack Tecnológico

### Backend
- **Framework**: NestJS (Node.js)
- **Base de Datos**: PostgreSQL + TypeORM
- **Autenticación**: JWT + Refresh Tokens
- **Seguridad**: Helmet, Throttling (Rate Limiting), Class-Sanitizer
- **Documentación**: Swagger (OpenAPI)

### Frontend
- **Framework**: React (Vite) + TypeScript
- **Estilos**: Tailwind CSS
- **Estado**: Context API
- **Visualización**: Recharts
- **PWA**: Soporte progresivo para móviles

---

## 🛠️ Instalación y Ejecución

### Requisitos Previos
- Node.js (v18+)
- PostgreSQL (v14+)
- npm o yarn

### 1. Configuración del Backend

```bash
cd backend
npm install

# Configurar variables de entorno
cp .env.example .env
# Editar .env con tus credenciales de BD

# Iniciar en desarrollo
npm run start:dev
```
El servidor corre en: `http://localhost:3000`
Documentación API: `http://localhost:3000/api/docs`

### 2. Configuración del Frontend

```bash
cd clarity-pwa
npm install

# Iniciar en desarrollo
npm run dev
```
La aplicación corre en: `http://localhost:5173`

---

## ✨ Funcionalidades Clave

- **Mi Día (1-3-5 Check-in)**: Rutina diaria obligatoria para definir prioridades.
- **Gestión de Bloqueos**: Reporte y escalado automático de impedimentos.
- **Matriz de Eisenhower**: Clasificación visual de tareas (Urgente vs Importante).
- **Dashboard Gerencial**: Vista 360° del estado del equipo y alertas.
- **Cronograma de Proyectos**: Diagrama de Gantt interactivo.
- **Reportes Avanzados**: Tendencias de productividad y cuellos de botella.

---

## 🔒 Roles y Permisos (RBAC)
- **Miembro**: Acceso básico a sus tareas y reportes propios.
- **Líder**: Gestión de su nodo organizativo y subordinados.
- **Gerencia/Admin**: Acceso total al sistema, auditoría y configuración global.

---

## 📄 Documentación Adicional
- [Manual de Usuario](./manuales/MANUAL_USUARIO.md)
- [Inventario de Tareas](./INVENTARIO_TAREAS_COMPLETO.md)
