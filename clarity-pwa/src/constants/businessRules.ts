export const BUSINESS_RULES = {
    /** UMBRAL DE URGENCIA (DÍAS)
     * Tareas con fecha objetivo menor o igual a hoy + X días se consideran urgentes (Q1/Q3).
     */
    URGENCY_THRESHOLD_DAYS: 2,

    /** REGLA 1-3-5: Máximo de tareas de prioridad ALTA sugeridas para un día */
    MAX_PRIORITY_TASKS: 3, // Debería ser 1 Big + 3 Medium, pero aquí simplificamos

    /** Límites visuales (Warnings) */
    WARNING_LIMIT_TASKS_PER_DAY: 9,

    /** Prioridades numéricas (Menor es más importante) */
    PRIORITY_WEIGHTS: {
        'Alta': 1,
        'Media': 2,
        'Baja': 3
    },

    /** Esfuerzos numéricos estimados (Horas relativas) */
    EFFORT_WEIGHTS: {
        'S': 1, // Small ~ 1-2h
        'M': 3, // Medium ~ 4h
        'L': 6  // Large ~ 8h+
    }
};
