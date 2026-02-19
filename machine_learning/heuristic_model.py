def modelo_scoring(row):
    """
       Calcula el nivel de riesgo académico de un estudiante mediante
       un sistema de puntuación basado en variables académicas y socioeconómicas.

       La función asigna puntos según ciertas condiciones:

       Factores académicos:
       - Promedio general bajo.
       - Bajo porcentaje de asistencia.
       - Número de materias reprobadas.
       - Condición de repitencia.

       Factores socioeconómicos:
       - Falta de apoyo familiar.
       - Situación laboral del estudiante.
       - Bajo ingreso del hogar.

       Clasificación final:
       - "Alto": score >= 7
       - "Medio": 3 <= score < 7
       - "Bajo": score < 3

       Args:
           row (pd.Series): Fila de un DataFrame que contiene
                            las variables del estudiante.
       Returns:
           str: Nivel de riesgo ("Alto", "Medio" o "Bajo").
       """
    score = 0
    # Académico
    if row['promedio_general']<6:
        score += 3
    elif row['promedio_general']<7.5:
        score +=1
    if row['asistencia_porcentaje']<65:
        score += 3
    elif row['asistencia_porcentaje']<80:
        score += 1
    if row['materias_reprobadas'] >=3:
        score += 2
    if row['repitencia'] == 1:
        score += 2

    # Socioeconomico
    if row['apoyo_familiar'] == 0:
        score += 2
    if row['trabaja'] == 1:
        score += 1
    if row['ingreso_hogar'] < 300:
        score += 1

    # Clasificacion final
    if score >= 7:
        return "Alto"
    elif score >= 3:
        return "Medio"
    else:
        return "Bajo"