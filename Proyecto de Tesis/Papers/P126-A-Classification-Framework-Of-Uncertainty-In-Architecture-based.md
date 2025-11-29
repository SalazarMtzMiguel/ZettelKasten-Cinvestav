#CitaLatex 
@incollection{Mahdavi2017AClassification,
title = {Chapter 3 - A Classification Framework of Uncertainty in Architecture-Based Self-Adaptive Systems With Multiple Quality Requirements},
editor = {Ivan Mistrik and Nour Ali and Rick Kazman and John Grundy and Bradley Schmerl},
booktitle = {Managing Trade-Offs in Adaptable Software Architectures},
publisher = {Morgan Kaufmann},
address = {Boston},
pages = {45-77},
year = {2017},
isbn = {978-0-12-802855-1},
doi = {https://doi.org/10.1016/B978-0-12-802855-1.00003-4},
url = {https://www.sciencedirect.com/science/article/pii/B9780128028551000034},
author = {S. Mahdavi-Hezavehi and P. Avgeriou and D. Weyns},
keywords = {Uncertainty, Uncertainty dimensions, Self-adaptation, Architecture-based self-adaptation, Quality requirements},
abstract = {Context
The underlying uncertainty in self-adaptive systems aggravates the complexity of selecting best adaptation action alternative, and handling requirements trade-offs. To efficiently tackle uncertainty, it is necessary to have a comprehensive overview of different types of uncertainty and their specifications.
Objective
In this paper we aim at (a) reviewing the state-of-the-art of architecture-based approaches tackling uncertainty in self-adaptive systems with multiple quality requirements, (b) proposing a classification framework for this domain, and (c) classifying the current approaches according to this framework.
Method
We conducted a systematic literature review by performing an automatic search on twenty seven selected venues and books in the domain of self-adaptive systems.
Results
We propose a classification framework for uncertainty and its sources in the domain of architecture-based self-adaptive systems with multiple quality requirements. We map 51 identified primary studies into the framework and present the classified results.
Conclusions
Our results help researchers to understand the current state of research regarding uncertainty in architecture-based self-adaptive systems with multiple concerns, and identity areas for improvement in the future.}
}

Referencia del archivo original: `(S. Mahdavi-Hezavehi) A Classification Framework Of Uncertainty In Architecture-based.pdf` [[(S. Mahdavi-Hezavehi) A Classification Framework Of Uncertainty In Architecture-based.pdf]]

El documento seleccionado para el análisis es el artículo **"A Classification Framework Of Uncertainty In Architecture-based Self-Adaptive Systems With Multiple Quality Requirements"** (Un Marco de Clasificación de la Incertidumbre en Sistemas Autoadaptativos Basados en Arquitectura con Múltiples Requisitos de Calidad), escrito por S. Mahdavi-Hezavehi, P. Avgeriou y D. Weyns.

Este trabajo aborda la necesidad de clasificar la incertidumbre en los **Sistemas Autoadaptativos Basados en Arquitectura (SAAS)** que deben cumplir simultáneamente **múltiples requisitos de calidad**. Los autores argumentan que, aunque se han propuesto numerosos enfoques para mitigar la incertidumbre, la falta de un marco de clasificación consistente dificulta la comparación y selección de soluciones.

### Resumen Completo del Documento

**1. Contexto y Problema (La Incertidumbre en SAAS con Múltiples Requisitos):** Los sistemas de _software_ están sujetos a cambios continuos debido a nuevos requisitos y a la dinámica del contexto. La ingeniería de estos sistemas complejos es difícil porque el conocimiento disponible en la **fase de diseño** no es adecuado para anticipar todas las condiciones en el **tiempo de ejecución (_runtime_)**.

La **incertidumbre** se define como las circunstancias en las que el comportamiento del sistema se desvía de las expectativas debido a la dinamicidad e imprevisibilidad de una variedad de factores. Los SAAS abordan esto modificando autónomamente su comportamiento en tiempo de ejecución. Estos sistemas utilizan modelos de la arquitectura, el entorno y los objetivos, operando a través del ciclo **MAPE-K** (_Monitor, Analyze, Plan, Execute_ sobre el _Knowledge_).

El principal desafío es doble:

1. **Incertidumbre Externa:** Surge de la dinamicidad y la imprevisibilidad de factores del sistema, justificando la necesidad de SAAS.
2. **Incertidumbre Interna (Efecto Colateral):** La propia incorporación de la autoadaptación puede introducir más complejidad e incertidumbre (ej., acciones de adaptación defectuosas o consecuencias imprevistas).

Esta complejidad se agrava cuando el sistema debe cumplir simultáneamente múltiples requisitos de calidad, lo que aumenta el número de alternativas de adaptación y la complejidad en el manejo de las **compensaciones (_trade-offs_)** entre requisitos.

**2. Metodología de Revisión Sistemática (SLR):** Para aliviar el problema de la falta de un marco consistente, los autores realizaron una **Revisión Sistemática de la Literatura (SLR)**. El objetivo era identificar, explorar y clasificar el estado del arte en métodos basados en arquitectura que manejan la incertidumbre en SAAS con múltiples requisitos de calidad.

- **Alcance:** El estudio se centró en artículos publicados entre el 1 de enero de 2000 y el 20 de julio de 2014. Se realizó una búsqueda automática en bases de datos seleccionadas (IEEE Xplorer, ACM digital library, SpringerLink y ScienceDirect) utilizando una cadena de búsqueda genérica debido a la falta de una terminología estándar.
- **Criterios de Inclusión:** Los estudios debían estar en el dominio de los SAAS, utilizar métodos basados en arquitectura (mapeables a funcionalidades MAPE-K) y abordar múltiples requisitos de calidad (como meta de adaptación o consecuencia).
- **Resultados:** Se incluyeron 51 estudios primarios. El análisis de la calidad de los artículos sugirió que la mayoría eran de una calidad relativamente alta.

**3. El Marco de Clasificación Propuesto:** El marco de clasificación es la principal contribución del estudio y se compone de dos partes: las **Dimensiones de la Incertidumbre** y las **Fuentes de la Incertidumbre**.

- **Dimensiones de la Incertidumbre (RQ2):** Se identificaron cinco dimensiones significativas de la incertidumbre:
    
    - **Ubicación (_Location_):** Dónde se manifiesta la incertidumbre (Entorno, Modelo, Funciones de Adaptación, Metas, Sistema Gestionado, Recursos).
    - **Naturaleza (_Nature_):** Si se debe a la imperfección del conocimiento (Epistémica) o a la variabilidad inherente del fenómeno (Variabilidad).
    - **Nivel/Espectro (_Level/Spectrum_):** Posición en el espectro entre conocimiento determinista e ignorancia total (Incertidumbre Estadística o Incertidumbre de Escenario).
    - **Tiempo de Aparición (_Emerging Time_):** Cuándo se reconoce (Tiempo de Diseño o Tiempo de Ejecución).
    - **Fuentes (_Sources_):** Circunstancias específicas que originan la desviación del rendimiento.
- **Análisis de Fuentes de Incertidumbre (RQ3):** Se clasificaron las fuentes de incertidumbre en seis clases (Modelo, Funciones de Adaptación, Metas, Entorno, Recursos y Sistema Gestionado), con múltiples opciones detalladas para cada una (ej., Model _drift_, _Fault localization_, _Future goal changes_, _Execution context_, etc.).
    

**4. Principales Hallazgos del Análisis de los 51 Estudios (RQ4):** El marco se utilizó para clasificar los estudios, revelando los siguientes patrones:

- **Clases de Incertidumbre Abordadas:** La mayoría de los estudios (39 de 51) abordan **múltiples clases de incertidumbre**. El **Entorno** (38 _papers_) y la **Meta (_Goal_)** son las clases de incertidumbre más importantes y las más abordadas por los investigadores.
- **Naturaleza de la Incertidumbre:** La mayoría de los estudios (35 _papers_) se centran en la incertidumbre debido a la **Variabilidad** (68.6%), y no tanto en la falta de conocimiento (Epistémica). La variabilidad en el **contexto de ejecución** es la fuente más común del Entorno.
- **Nivel de Incertidumbre:** La mayoría de los estudios (28 _papers_) exploran la incertidumbre al **Nivel de Escenario (_Scenario level_)**. Solo 7 _papers_ utilizan métodos puramente estadísticos.
- **Tiempo de Aparición:** La mayoría de los enfoques (36 _papers_) **posponen el tratamiento de la incertidumbre a la fase de tiempo de ejecución (_Runtime_)**. Sin embargo, la investigación comenzó a reconocer la incertidumbre en el tiempo de diseño alrededor de 2009.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de los autores sobre la utilidad del marco y las brechas de investigación en el campo se basan en las siguientes ideas clave:

1. **La Incertidumbre del Sistema Autoadaptativo es un Concepto Multidimensional que Requiere un Marco de Clasificación Consistente y Formal:** La conclusión principal del _paper_ y su contribución (el marco de clasificación) se fundamentan en la necesidad de superar la ambigüedad terminológica y la falta de estudio sistemático del concepto de incertidumbre. El G marco permite a los investigadores identificar los **cinco aspectos distintos** de la incertidumbre (Ubicación, Naturaleza, Nivel, Tiempo de Aparición y Fuentes) para abordarla de manera exhaustiva.
2. **Existe una Brecha Crítica en el Uso de Métodos Rigurosos (Estadísticos) y en el Análisis Explícito de las Compensaciones (_Trade-offs_) de Calidad en Tiempo de Ejecución:** La conclusión de que se necesita más investigación se fundamenta en los hallazgos de la SLR:
    - La mayoría de los enfoques se basan en el **Nivel de Escenario** a _runtime_, lo que **carece de un análisis riguroso**. Esto es una brecha, ya que la disponibilidad de conocimiento en tiempo de ejecución podría aprovecharse con **métodos estadísticos** para fortalecer matemáticamente las anticipaciones del comportamiento del sistema.
    - A pesar de abordar múltiples requisitos de calidad, los estudios **rara vez exploran explícitamente los detalles de los cambios en las metas** y **cómo las adaptaciones afectan negativamente a otros requisitos de calidad** (compensaciones). Solo 8 de 51 _papers_ abordaron las dependencias de metas.
3. **La Investigación Debe Transicionar de Soluciones _Ad Hoc_ a Soluciones Estructuradas Específicas para Clases de Incertidumbre Definidas (Diseño Estructurado):** La conclusión sobre el futuro del trabajo se basa en el hallazgo de que la mayoría de los estudios abordan múltiples clases de incertidumbre de forma limitada. Se sugiere que los investigadores deben centrarse en proponer métodos diseñados para manejar **una clase específica de incertidumbre** y sus fuentes, lo que tiene más probabilidades de resultar en enfoques más **estructurados y eficientes** al lidiar con múltiples fuentes solapadas y su posible interacción.

---

### Valor del Paper

El artículo es de **alto valor metodológico y de referencia** para la investigación en Sistemas Autoadaptativos, Ingeniería de _Software_ y Arquitectura de _Software_:

- **Marco Conceptual Fundacional:** Su principal contribución es el **Marco de Clasificación** para la incertidumbre. Este marco proporciona la taxonomía y la terminología necesarias para la comunidad, permitiendo un análisis sistemático y una comparación de enfoques.
- **Diagnóstico del Estado del Arte:** El SLR exhaustivo proporciona un **diagnóstico crítico** de la investigación existente, identificando tendencias (ej. predominio de la Variabilidad sobre la Epistémica, preferencia por la Adaptación en _Runtime_ en lugar del Diseño _Time_).
- **Definición de Líneas de Investigación Futuras:** El trabajo identifica brechas clave, como la falta de análisis riguroso (estadístico) en _runtime_ y la escasa exploración explícita de las compensaciones entre requisitos de calidad. Esto ofrece una **hoja de ruta clara** para futuras investigaciones.

El marco de clasificación es comparable a la **tabla periódica de elementos para el caos en _software_**. En lugar de que los ingenieros (investigadores) se limiten a nombrar el caos (_incertidumbre_) genéricamente, este marco les proporciona un **lenguaje estandarizado** para clasificar el caos por su origen (Fuentes), su ubicación, su naturaleza (Variabilidad vs. Epistémica) y la etapa de la vida útil en la que aparece. Esto es esencial para que los ingenieros puedan diseñar soluciones quirúrgicas y específicas en lugar de parches _ad hoc_.
