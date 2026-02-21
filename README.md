# Plataforma de Análisis Integral del Desempeño Académico y Permanencia Estudiantil

<div align="center">

![Estado del Proyecto](https://img.shields.io/badge/Estado-Completo-green)
![Versión](https://img.shields.io/badge/Versión-1.0.1-pink)

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
> Enlace a diagrama en draw.io
https://drive.google.com/file/d/1lGCZtPIlKLAortr4YwYZS950bHEfmhZm/view
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
- MySQL  

### Procesamiento y IA
- Python  
- pandas, numpy  
- scikit-learn  
- sqlachemy

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
- Reglas heurísticas (scoring) 
- Árboles de decisión 
- Random Forest
- Regresión logística  

---

## Limitaciones del Análisis

- Los datos individuales son simulados  
- No representan estadísticas oficiales  
- El modelo predictivo es exploratorio  
- No incluye variables psicológicas profundas  
- Los resultados deben interpretarse como apoyo analítico  

---
## Guía de Instalación y Ejecución
### Requisitos previos
- Python 3.8 o superior
- MySQL (base de datos)
- pip (gestor de paquetes)
### Paso 1: Clonar el repositorio
```bash
git clone https://github.com/ivaniaHer/analitica-desercion-educativa-sv.git
cd analitica-desercion-educativa-sv
```
### Paso 2: Crear un entorno virtual
#### En Windows:
```bash
python -m venv venv
venv\Scripts\activate
```
#### En macOS/Linux:
```bash
python3 -m venv venv
source venv\Scripts\activate
```
### Paso 3: Instalar dependencias
Una vez activado el entorno virtual, ejecuta: 
```bash
pip install -r requirements.txt
```
### Paso 4: Configurar la base de datos en MySQL
Ejecutar el script que se encuentra en `/data/sql/analitica_proj_db.sql`

### Paso 5: Configurar credenciales de base de datos
En el archivo `machine_learning/main.py`, modifica las credenciales: 
```python
# Lineas 28-21 en main.py
usuario = 'root'        #Cambiar por tu usuario
password = 'root'       #Cambiar por tu contraseña
host = 'localhost'      #Cambiar si MySQL está en otro servidor
database = 'desercion_educativa'
```
### Paso 6: Ejecutar el script principal
```bash
python -m machine_learning.main
```
O desde el directorio raíz:
```bash
python machine_learning/main.py
```
## Salida del Programa
Al ejecutar el script, se generarán los siguientes archivos CSV:
1. **model_results.csv**: Resultados de la evaluación de todos los modelos
   - Columnas: modelo, accuracy, recall_macro, f1_wighted, fecha_modelo
2. **predicciones_estudiantes.csv**: Predicciones completas para todos los estudiantes
   - Incluye probabilidades por clase
   - Predicción del riesgo de deserción
3. **importancia_variables.csv**: Importancia de las variables en Regresión Logística
   - Ordenadas por impacto total
4. **heuristic_logistic.csv**: Comparación entre modelo heurístico y regresión logística
---
## Descripción de Modelos
### Decision Tree 
- **max_depth**: 5
- **min_samples_leaf**: 5
- Modelo interpretable con bajo de riesgo de sobreajuste

### Random Forest 
- **n_estimators**: 100
- Robusto ante datos heterogéneos

### Logistic Regression
- **max_iter**: 1000
- Mejor generalización, recomendado para producción

### Heuristic Scoring
- Basado en reglas manuales
- Variables: 
  - Promedio general
  - Asistencia
  - Materias reprobadas
  - Repitencia
  - Apoyo familiar
  - Situación laboral
  - Ingreso de hogar
---
## Próximos Pasos
- Ajustar hiperparámetros de los modelos 
- Implementar validación cruzada
- Crear visualizaciones adicionales
---

By Ivania Hernández
