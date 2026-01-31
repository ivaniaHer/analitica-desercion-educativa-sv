# Plataforma de Análisis Integral del Desempeño Académico y Permanencia Estudiantil

<div align="center">

![Estado del Proyecto](https://img.shields.io/badge/Estado-En%20Desarrollo-yellow)
![Versión](https://img.shields.io/badge/Versión-0.1.0-blue)

**Análisis del riesgo de deserción escolar en educación media de El Salvador**

</div>

---

## Descripción del Proyecto

Este proyecto analiza el desempeño académico y el riesgo de deserción de estudiantes de educación media en El Salvador, considerando factores **académicos, socioeconómicos y tecnológicos**.

A partir de **estadísticas educativas reales** del contexto salvadoreño (MINEDUCYT, EHPM, entre otras) y **datos individuales simulados con fines académicos**, se propone el desarrollo de una **plataforma de análisis visual** que permita identificar patrones de riesgo y apoyar la toma de decisiones institucionales.

> **Nota:** Los datos individuales son completamente simulados y no representan estudiantes reales.

---

## Objetivo del Proyecto

Desarrollar una plataforma analítica que permita:

- Identificar patrones asociados al riesgo de deserción escolar  
- Analizar la relación entre rendimiento académico y condiciones socioeconómicas  
- Visualizar indicadores educativos clave mediante dashboards interactivos  
- Establecer una base analítica sólida para la implementación futura de modelos de IA  

---

## Alcance Actual

### Incluye
- Diseño del modelo de datos relacional  
- Generación de dataset sintético a nivel estudiante  
- Construcción de dashboards analíticos en **Looker Studio**  
- Análisis descriptivo, comparativo y de correlación  
- Documentación técnica y metodológica  


---

## Modelo de Datos

La base de datos se estructura alrededor de la entidad **Estudiante**, relacionada con las siguientes dimensiones:

- **Desempeño Académico**
- **Condición Socioeconómica**
- **Acceso Tecnológico**
- **Variable Objetivo (Riesgo de Deserción)**

El modelo permite análisis multidimensional y segmentación por contexto.

**Diagrama ER:**  
> Enlace a diagrama en draw.io (pendiente de publicación)

---

## Diseño Analítico y Visualización

La plataforma se implementa en **Looker Studio**, permitiendo:

- Dashboards interactivos  
- Filtros dinámicos  
- Comparación entre grupos  
- Visualización clara de indicadores clave  

El diseño prioriza claridad, interpretación y enfoque educativo.

---

## Tipos de Análisis

### Análisis Descriptivo
Exploración del desempeño académico, asistencia, contexto socioeconómico y acceso tecnológico.

### Análisis Comparativo
Comparación de indicadores entre:
- Zonas urbanas y rurales  
- Modalidades educativas  
- Niveles de riesgo  

### Análisis de Correlación
Identificación de relaciones entre:
- Rendimiento académico  
- Asistencia  
- Condiciones económicas  
- Acceso tecnológico  

### Análisis Predictivo Básico (fase posterior)
Clasificación del riesgo de deserción mediante modelos sencillos de Machine Learning.

---

## Indicadores Clave

### Académicos
- Promedio general  
- Materias reprobadas  
- Porcentaje de asistencia  
- Repitencia  

### Socioeconómicos
- Ingreso del hogar  
- Situación laboral del estudiante  
- Apoyo familiar  
- Migración familiar  

### Tecnológicos
- Acceso a internet  
- Tipo de dispositivo  
- Modalidad educativa  

### Indicador Principal
- **Riesgo de Deserción** (Bajo, Medio, Alto)

---

## Filtros y Segmentaciones

### Filtros Analíticos
- Año lectivo  
- Zona geográfica (urbana/rural)  
- Modalidad educativa  
- Nivel de riesgo  
- Situación laboral  
- Acceso a internet  

### Segmentaciones
- Bajo rendimiento académico  
- Alta inasistencia  
- Dificultades económicas  
- Estudiantes que trabajan  
- Estudiantes sin acceso a internet  
- Comparación urbano vs rural  

---

## Tecnologías Utilizadas

### Análisis y Visualización
- **Looker Studio** (plataforma principal)  
- Google Sheets / CSV como fuente inicial  

### Base de Datos
- MySQL / PostgreSQL  

### Procesamiento y IA (fase posterior)
- Python  
- pandas, numpy  
- scikit-learn  

### Control de Versiones
- Git / GitHub  

---

## Plan de Implementación de IA

La inteligencia artificial se incorporará en una **segunda fase**, con un enfoque educativo y exploratorio.

### Tipo de problema
- **Clasificación supervisada**

### Entrada
- Variables académicas  
- Socioeconómicas  
- Tecnológicas  
- Contextuales  

### Salida
- Nivel de riesgo de deserción:
  - Bajo  
  - Medio  
  - Alto  

### Modelos propuestos
- Reglas heurísticas  
- Árboles de decisión  
- Regresión logística  
- K-Nearest Neighbors  

---

## Limitaciones del Análisis

- Los datos individuales son simulados  
- No representan estadísticas oficiales  
- El modelo predictivo es exploratorio  
- No incluye variables psicológicas profundas  
- Los resultados deben interpretarse como apoyo analítico  

---

## Resultados Esperados

- Identificación de perfiles de riesgo  
- Visualización clara de factores de deserción  
- Insumos analíticos para toma de decisiones  
- Base conceptual para futuros desarrollos con IA  

---
By Ivania Hernández
