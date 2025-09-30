#CompletarCita 
Lectura basada en [[(Yuan Huang) Generative Software Engineering.pdf]]


### Resumen y Análisis Clave: "Generative Software Engineering" de Yuan Huang et al.

Este documento es una **revisión sistemática de la literatura (SLR)** que tiene como objetivo proporcionar un análisis exhaustivo y estructurado sobre el uso de modelos pre-entrenados y Modelos de Lenguaje Grandes (LLMs) en **tareas generativas** dentro de la Ingeniería de Software (SE). Los autores argumentan que las revisiones existentes tienen limitaciones, como centrarse solo en modelos pre-entrenados o solo en LLMs sin analizar la evolución entre ellos, no distinguir entre tipos de tareas (generación vs. clasificación), o carecer de un análisis sistemático.

#### Metodología y Contribuciones Clave

La principal fortaleza del paper es su metodología rigurosa y sus contribuciones explícitas para llenar los vacíos identificados en la literatura.

- **Metodología:** Siguieron la metodología de Kitchenham para revisiones sistemáticas. Realizaron búsquedas en 6 bases de datos académicas importantes (como IEEE Xplore, ACM Digital Library, etc.) utilizando palabras clave específicas para cada tarea generativa. Aplicaron criterios de selección estrictos (p. ej., publicados después de 2017, basados en LLMs o modelos pre-entrenados) para finalmente analizar **91 artículos relevantes**.
- **Contribuciones Principales:** Los autores declaran que su trabajo es la **primera revisión literaria completa** que se enfoca específicamente en tareas generativas en SE, abarcando tanto modelos pre-entrenados como LLMs. Sus aportes clave son:
    1. **Categorización de Tareas:** Dividen las tareas generativas de la ingeniería de software en **siete sub-direcciones** basadas en el ciclo de vida del desarrollo de software: generación de requisitos, generación de código, resumen de código, generación de casos de prueba, generación de parches, optimización de código y traducción de código.
    2. **Síntesis de Recursos:** Para cada una de estas siete áreas, resumen de manera sistemática los **modelos, datasets y métricas de evaluación** más utilizados.
    3. **Análisis Comparativo:** Realizan un análisis de los métodos de vanguardia y su rendimiento en datasets públicos.
    4. **Identificación de Desafíos y Futuro:** Delinean los principales desafíos y proponen posibles direcciones de investigación para cada área.

#### Hallazgos y Estructura por Tarea Generativa

El estudio revela que la **generación de código es el área que recibe más atención** de los investigadores, mientras que la generación de requisitos y la optimización de código son las menos investigadas. A continuación se resumen las ideas clave para cada una de las siete áreas:

1. **Generación de Requisitos:**
    
    - **Enfoque:** Se centra en cómo los LLMs pueden automatizar el análisis de requisitos y generar documentos claros.
    - **Datasets:** Mayormente basados en escenarios virtuales, como `Requirements dataset (user stories)`.
    - **Evaluación:** Predominantemente cualitativa a través de **evaluación humana** (human eval) y encuestas, ya que es difícil medir la calidad de los requisitos con métricas numéricas.
    - **Métodos:** Incluyen el uso de patrones de prompts (como _Requirements Simulator_), frameworks de diálogo para refinar requisitos (como _ChatCoder_), y el análisis de la eficiencia de LLMs en el ciclo de vida del software.
2. **Generación de Código:**
    
    - **Enfoque:** Es el área más madura, con un foco en mejorar la capacidad de los LLMs para generar código funcional a partir de lenguaje natural.
    - **Datasets:** Muy bien establecidos, como `HumanEval` y `MBPP` para Python, y otros que cubren múltiples lenguajes de programación y de prompts (ej. `MultiPL-E`, `MCoNaLa`).
    - **Evaluación:** Se utiliza la métrica **`Pass@k`**, que mide la corrección funcional del código generado mediante la ejecución de pruebas unitarias, en lugar de métricas de similitud de texto como BLEU.
    - **Métodos:** Se agrupan en dos categorías principales: **guía** (refinando requisitos, incorporando pensamiento de programación) y **retroalimentación de errores** (usando resultados de ejecución para que el LLM se auto-corrija).
3. **Resumen de Código:**
    
    - **Enfoque:** Generación automática de descripciones en lenguaje natural (comentarios) para fragmentos de código, con el fin de mejorar la comprensión y la productividad de los desarrolladores.
    - **Datasets:** Se utilizan grandes corpus de pares código-resumen, como `TL-CodeSum` y `CodeSearchNet (CSN)`.
    - **Evaluación:** Se usan métricas de PNL tradicionales como **BLEU, ROUGE y METEOR**.
    - **Métodos:** Incluyen tanto el uso de **prompts** con LLMs como ChatGPT, como el **fine-tuning** de modelos específicos para código como CodeBERT, CodeT5 y UniXcoder.
4. **Generación de Casos de Prueba:**
    
    - **Enfoque:** Automatizar la creación de casos de prueba para reducir el trabajo manual y mejorar la cobertura del código.
    - **Datasets:** Incluyen benchmarks como `METHODS2TEST` (Java), `CodeContests` (multilenguaje) y el conocido `Defects4J`.
    - **Evaluación:** Se mide la **cobertura del código** (de sentencias, de ramas), la tasa de detección de fallos y la precisión de las aserciones generadas.
    - **Métodos:** Varían desde fine-tuning de modelos como `ATHENATEST`, hasta el uso de prompt engineering con LLMs como CodeX, a menudo en combinación con estrategias adaptativas (ej. `TESTPILOT`).
5. **Generación de Parches (Reparación Automática de Programas - APR):**
    
    - **Enfoque:** Generar automáticamente parches para corregir errores (bugs) en el software.
    - **Datasets:** Se utilizan benchmarks de bugs reales y conocidos como `Defects4J`, `QuixBugs` y `ManyBugs`.
    - **Evaluación:** Las métricas clave son la **precisión de la reparación** (qué porcentaje de bugs se corrigen correctamente), la tasa de compilación y el análisis de superposición (si un método nuevo puede arreglar bugs que otros no podían).
    - **Métodos:** Se clasifican en tres enfoques: **modelos pre-entrenados** (ej. Recorder, AlphaRepair), **fine-tuning de LLMs** (ej. CIRCLE) y **prompt engineering** (ej. ChatRepair), siendo este último un área de gran crecimiento.
6. **Optimización de Código:**
    
    - **Enfoque:** Mejorar un programa para que utilice menos recursos (tiempo, memoria) sin cambiar su funcionalidad. Es una tarea muy desafiante ya que el LLM debe garantizar la corrección y, al mismo tiempo, mejorar la eficiencia.
    - **Datasets:** `CodeScope`, `Supersonic` y `PIE` son algunos de los datasets que contienen pares de código original y su versión optimizada.
    - **Evaluación:** Se mide el **porcentaje de mejora del rendimiento** (PI) y el porcentaje de programas que logran ser optimizados (%OPT).
7. **Traducción de Código:**
    
    - **Enfoque:** Convertir código fuente de un lenguaje de programación a otro.
    - **Datasets:** Existen datasets para traducción uno a uno (ej. `CodeTrans` para Java/C#) y uno a muchos (ej. `XCODEEVAL` con 11 lenguajes).
    - **Evaluación:** Se mide la **tasa de error** (contando diferentes tipos de errores como de traducción, de lenguaje, etc.) y la proporción de métodos correctamente traducidos (PCM) que pasan las pruebas unitarias.

#### Desafíos y Futuro

El paper concluye con una sección detallada sobre los desafíos y las futuras líneas de investigación para cada tarea. Esto es especialmente valioso para tu tesis:

- **Generación de Requisitos:** Se necesita explorar datasets más realistas (no ficticios) y mejorar la capacidad de los LLMs para manejar información técnica compleja.
- **Generación de Código:** Los desafíos incluyen la falta de datos anotados para dominios específicos, la incorporación de conocimiento de dominio y la garantía de la calidad y robustez del código generado.
- **Resumen de Código:** Es necesario crear métricas de evaluación más allá de BLEU/ROUGE que realmente capturen la utilidad para los desarrolladores, y avanzar hacia resúmenes personalizados y de múltiples niveles de granularidad (función, clase, proyecto).
- **Generación de Pruebas:** Los principales desafíos son la calidad y cobertura de las pruebas generadas, la interpretabilidad del proceso y los altos requerimientos de cómputo.
- **Optimización y Traducción de Código:** Ambos son considerados tareas muy desafiantes. Los retos incluyen la diversidad de lenguajes, el manejo de construcciones específicas de dominio y las características dinámicas de algunos lenguajes.