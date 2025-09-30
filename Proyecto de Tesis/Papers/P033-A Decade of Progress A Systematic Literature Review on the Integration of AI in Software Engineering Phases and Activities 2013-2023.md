#CompletarCita 
Lectura basada en [[(Usman Khan Durrani) A Decade of Progress A Systematic Literature Review on the Integration of AI in Software Engineering Phases and Activities 2013-2023.pdf]]



### Resumen y Análisis Clave: "Una Década de Progreso: Revisión Sistemática de la Integración de IA en las Fases y Actividades de la Ingeniería de Software (2013-2023)"

Este documento es una **Revisión Sistemática de la Literatura (SLR)** que examina la integración de técnicas de Inteligencia Artificial (IA) en las fases y actividades de la Ingeniería de Software (SE) durante la década de 2013 a 2023. Su objetivo principal es ofrecer una visión panorámica y estructurada del campo, identificar qué técnicas de IA se utilizan, en qué fases de la SE se aplican, y cómo impactan la **eficiencia y la precisión** de los procesos de desarrollo de software.

#### Metodología y Alcance

La fortaleza del paper reside en su rigurosa metodología. Los autores siguieron directrices establecidas para estudios de mapeo sistemático en ingeniería de software.

- **Fuentes y Selección:** Se analizaron **110 artículos de investigación** seleccionados de una búsqueda inicial que arrojó 4,185 resultados en la base de datos Dimensions.ai. El periodo de estudio abarca desde 2013 hasta 2023.
- **Marco Conceptual:** El estudio clasifica las aplicaciones de IA según un **marco conceptual** que divide la IA en cinco categorías de alto nivel (Machine Learning, Deep Learning, Algoritmos de Optimización, Procesamiento del Lenguaje Natural y Sistemas Expertos) y el ciclo de vida del software en siete fases (planificación, ingeniería de requisitos, diseño, desarrollo, pruebas, despliegue y mantenimiento).

#### Ideas Clave Extraídas de las Preguntas de Investigación (RQ)

El estudio se estructura en torno a cuatro preguntas de investigación principales, cuyas respuestas constituyen los hallazgos más importantes del paper.

**1. ¿Qué técnicas de IA se aplican con más frecuencia en la Ingeniería de Software? (RQ1)**

- **Hallazgo Principal:** Los algoritmos de **Machine Learning (ML) tradicional son más utilizados que los de Deep Learning (DL)**.
- **Técnicas más populares:** **Random Forest** es la técnica más común (utilizada en 22 estudios), seguida de **Naïve Bayes** y **Support Vector Machine (SVM)** (ambas en 15 estudios).
- **Conclusión (Finding 1):** Los profesionales de la ingeniería de software tienden a preferir **soluciones de IA rápidas y sencillas** en lugar de otras más complejas.

**2. ¿Se aplican ciertas técnicas de IA con más frecuencia en fases específicas de la SE? (RQ2)**

- **Hallazgo Principal:** Sí, existe una clara especialización de las técnicas de IA por fase del ciclo de vida del software.
    - **Planificación:** Dominada por **ML** (29 estudios) para tareas como la estimación del esfuerzo del software (EEE).
    - **Ingeniería de Requisitos:** El **Procesamiento del Lenguaje Natural (NLP)** es la técnica principal (11 estudios), utilizada para la clasificación de requisitos, análisis de sentimientos y detección de vulnerabilidades a partir de documentos.
    - **Diseño:** Liderada por los **Algoritmos de Optimización (OA)** (14 estudios), especialmente para la predicción de defectos y la priorización de suites de pruebas.
    - **Desarrollo:** Fuerte presencia de **ML** (26 estudios) y **NLP** (20 estudios) para la detección temprana de problemas de seguridad, recomendación de código y categorización de _commits_.
    - **Pruebas:** Es la fase con la aplicación más intensiva de IA, dominada abrumadoramente por **ML** (82 estudios), seguido de **OA** (38) y **DL** (27) para mejorar la generación de casos de prueba y la cobertura.
    - **Despliegue y Mantenimiento:** El **ML** es la técnica más referenciada (62 menciones) para la predicción de errores, localización de características y predicción de la actividad de mantenimiento.

**3. ¿Cómo afectan las técnicas de IA a la "eficiencia" de la SE? (RQ3)**

- De los 110 artículos, **36 se centraron en mejorar la eficiencia** (reducir tiempo, costo, esfuerzo manual y optimizar recursos).
- Los **Algoritmos de Optimización (OA)** fueron los más utilizados para este fin (16 artículos), seguidos de ML y NLP.
- **Ejemplos Concretos:**
    - **OA:** Se usan para optimizar la priorización y selección de casos de prueba, generar suites de pruebas combinatorias, y para la re-modularización de software.
    - **ML:** Se aplica para mejorar el triaje de errores (_bug triage_) y para encontrar configuraciones de software óptimas más rápidamente.
    - **NLP:** Se utiliza para automatizar la transformación de _user stories_ en diagramas UML y para mejorar los algoritmos de búsqueda de código.

**4. ¿Cómo afectan las técnicas de IA a la "precisión" de la SE? (RQ4)**

- La mayoría de los estudios (**74 de 110**) se centraron en mejorar la precisión (reducir errores, mejorar la calidad del código, la fiabilidad y la corrección de las predicciones).
- El **ML fue la técnica más destacada** (20 artículos), seguida de DL (13), NLP (8) y OA (7).
- **Ejemplos Concretos:**
    - **ML:** Mejora significativamente la precisión en la predicción de defectos, la predicción de refactorización de software y la estimación de esfuerzo.
    - **DL:** Aumenta la precisión en la detección de _bugs_, el resumen de código fuente, la detección de clones de código y la detección de deuda técnica auto-admitida (SATD).
    - **NLP:** Mejora la precisión del análisis de requisitos, la detección de defectos en _user stories_ y la predicción de vulnerabilidades.
    - **OA:** Aumenta la precisión en la predicción de defectos y en el ajuste de la configuración del software.

#### Conclusión, Desafíos y Futuro

- **Conclusión General:** La IA está revolucionando la ingeniería de software, mejorando significativamente la calidad, eficiencia e innovación en todas sus fases.
- **Desafíos Identificados:** El estudio subraya varios obstáculos importantes:
    - La necesidad de una mayor **validación empírica y estudios de caso industriales**.
    - La complejidad de los modelos y la **falta de interpretabilidad** (_explainable AI_).
    - Problemas de **integración con herramientas y flujos de trabajo** existentes.
    - Consideraciones **éticas, de privacidad y sociales** que deben abordarse.
- **Direcciones Futuras:** La investigación debe centrarse en explorar nuevos paradigmas como el **aprendizaje por refuerzo y la IA explicable (XAI)** para promover un desarrollo de software ético y transparente.