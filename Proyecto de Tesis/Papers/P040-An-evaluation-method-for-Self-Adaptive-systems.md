#CitaLatex 
@INPROCEEDINGS{FarahaniAliAnevaluationmethod,
  author={Farahani, Ali and Nazemi, Eslam and Cabri, Giacomo and Rafizadeh, Alireza},
  booktitle={2016 IEEE International Conference on Systems, Man, and Cybernetics (SMC)}, 
  title={An evaluation method for Self-Adaptive systems}, 
  year={2016},
  volume={},
  number={},
  pages={002814-002820},
  abstract={Nowadays, change is an important aspect of the world. Complexity and change in requirements and environments bring us to Autonomic Systems as a solution. Like any other kind of software system, better implementation of a system needs a proper evaluation method for system implementation. To evaluate a Self-Adaptive system, appropriate quality factors are needed for evaluation. This research tries to use non-adaptive system's evaluation methods to evaluate Self-Adaptive ones. The qualitative factors for self-adaptive systems have been extracted from a literature review (as Self-Adaptive System Qualitative Factors or for abbreviation SAQFs). Hence, there is no explicit or even implicit way for measuring most of the SAQFs, This research has tried to measure them through some measurable Qualitative Criterion. These Qualitative Criteria (we call them QCs) consist of some self-adaptive systems attributes and also some non-adaptive systems' qualitative factors. A map between these SAQFs and software system's QCs (which are more measurable) have been introduced. For each QC, sufficient metrics for measuring could be dug up based on the problem context. For better knowing about the influence of qualitative factors on each other, a prerequisite and post-requisite graph from relations among SAQFs have been introduced. This relational graph shows the importance and impact of each factors measurement on measuring the systems from self-adaptive viewpoint. For evaluating the method, we have proposed a questionnaire to experts about the model the correctness of these impacts and influences have been verified. In addition, a case study on a system in changing environment evaluated with proposed method and the applicability of the method have been reviewed.},
  keywords={Adaptation models;Measurement;Computer architecture;Adaptive systems;Mathematical model;Software;Monitoring;self-adaptive system;Autonomic computing;evaluation method;qualitative factors;qualitative criteria},
  doi={10.1109/SMC.2016.7844665},
  ISSN={},
  month={Oct},}

Referencia del archivo original: `(Ali Farahani) An evaluation method for Self-Adaptive systems.pdf` [[(Ali Farahani) An evaluation method for Self-Adaptive systems.pdf]]

El documento seleccionado es el artículo **"An Evaluation Method for Self-Adaptive Systems"** de Ali Farahani, Eslam Nazemi, Giacomo Cabri y Alireza Rafizadeh.

A continuación, se presenta un resumen claro y completo del _paper_, se identifican las ideas clave que sustentan sus conclusiones, y se determina el valor de la investigación.

### Resumen Completo del Documento

El artículo aborda la necesidad crítica de un **método de evaluación adecuado** para los Sistemas Autoadaptativos (Self-Adaptive Systems - SAS) y la Computación Autonómica (Autonomic Computing), los cuales surgen como solución ante la creciente complejidad y el constante cambio en los requisitos y el entorno de los sistemas de _software_. Los oponentes de los SAS a menudo dudan de su eficacia y eficiencia, lo que subraya la importancia de contar con una forma de medir el nivel de adaptación.

**Objetivo y Enfoque:** La investigación propone un **método de evaluación para medir el nivel de adaptación** utilizando métodos de evaluación de sistemas no adaptativos. El objetivo es proporcionar una herramienta que facilite la toma de decisiones sobre si utilizar la computación autonómica como solución a los cambios o si se debe remediar el sistema con otro método.

**Metodología Propuesta (Modelo de Tres Fases):**

El método introduce un **modelo cualitativo jerárquico** para la verificación en la fase de diseño y arquitectura del _software_. Este modelo consta de tres niveles interconectados:

1. **Factores Cualitativos del Sistema Autoadaptativo (SAQFs):** Estos factores se extraen de una revisión de la literatura como atributos de calidad específicos para SAS, como **Robustez, Consistencia, Terminación, Estabilidad y Tiempo de Adaptación**. Hay 22 SAQFs identificados en total.
2. **Criterios Cualitativos (QCs):** Dado que la mayoría de los SAQFs no son directamente medibles (de manera explícita o implícita), el estudio propone medirlos a través de Criterios Cualitativos (QCs). Los QCs son más medibles e incluyen atributos de los SAS, así como factores cualitativos de sistemas no adaptativos (ejemplos: Anticipación, Rendimiento, Modificación, Seguridad).
3. **Métricas de Verificación:** En el nivel más bajo, se identifican métricas suficientes para medir cada QC, basándose en el contexto del problema y los documentos de diseño/arquitectura.

**El Modelo Relacional y el Grafo de Prioridad:**

El corazón del método es la creación de un **mapa de relaciones** entre los SAQFs y los QCs, que muestra cómo los SAQFs se conectan a los QCs más medibles.

Además, se introduce un **grafo de prerrequisitos y post-requisitos** entre los SAQFs (similar a los modelos cualitativos MACCAL e ISO 1926, pero en forma de grafo en lugar de árbol).

- Este grafo relacional muestra la **importancia y el impacto** de la medición de un factor sobre la medición de otros.
- Los nodos del grafo (SAQFs) se categorizan en: **Verdes (fuentes)**, que no tienen prerrequisitos (mayor prioridad); **Rojos (drenajes)**, que no tienen post-requisitos (solo son afectados); y **Azules (intermedios)**, que tienen ambos.

**Evaluación y Aplicabilidad:** El método propuesto fue evaluado de dos maneras:

1. **Cuestionario a Expertos:** Se consultó a expertos para verificar la corrección de los impactos e influencias en el modelo. Los resultados (basados en el test Cronbach alpha de 0.829, considerado de buena fiabilidad) mostraron que el **99% de las relaciones de impacto extraídas fueron aceptadas** por los expertos.
2. **Caso de Estudio (Sistema de Control de Tráfico):** Se aplicó el método a un sistema de control de tráfico con requisitos cambiantes para verificar su aplicabilidad. El análisis mostró que el método era capaz de predecir la relación entre los SAQFs (por ejemplo, cómo un bajo nivel de _Openness_ afecta a la _Accuracy_), demostrando que es aplicable en el mundo real y proyectos prácticos.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del artículo se fundamentan en la necesidad de un enfoque medible y estructurado para la evaluación de la autoadaptación, basándose en las siguientes ideas clave:

1. **La brecha de medición en SAS:** Existe una necesidad de evaluar la eficiencia y efectividad de los SAS, pero los trabajos anteriores se han limitado a percepciones, definiciones o atributos cuantitativos sin proporcionar métricas de evaluación concretas. La idea clave es que **la evaluación necesita ir más allá de la percepción y proporcionar una forma de medir el nivel de adaptación**.
2. **Mapeo de Factores Cualitativos Inmedibles a Criterios Medibles (SAQF a QC):** La mayoría de los factores de calidad específicos de SAS (_SAQFs_) carecen de una forma de medición explícita o implícita. Por lo tanto, el concepto clave es establecer un **mapa relacional formal** para utilizar Criterios Cualitativos (_QCs_) más medibles (incluyendo factores de sistemas no adaptativos) como "sumideros" para la medición de los SAQFs, permitiendo así la verificación en la fase de diseño.
3. **El Modelo Cualitativo Gráfico como Herramienta de Priorización y Predicción:** A diferencia de los modelos cualitativos tradicionales basados en árboles (como MACCAL e ISO 1926), el método utiliza un **grafo de prerrequisitos/post-requisitos**. Esta estructura gráfica es fundamental porque no solo clarifica las relaciones horizontales y verticales, sino que también establece una **jerarquía de importancia y prioridad** entre los factores (los nodos verdes son más prioritarios que los rojos), y permite a los desarrolladores predecir el impacto de las decisiones de arquitectura en la calidad del sistema.
4. **Validación Basada en Expertos y Aplicabilidad Práctica:** La confianza en el método se basa en la validación externa. El hecho de que el **99% de las relaciones de impacto hayan sido aceptadas por expertos** y que el **caso de estudio demuestre la aplicabilidad** en un escenario realista (sistema de control de tráfico) son los pilares que sustentan la conclusión de que el método es viable y práctico.

---

### Valor del Paper

El valor del _paper_ "An Evaluation Method for Self-Adaptive Systems" es significativo por las siguientes razones:

- **Formalización de la Evaluación SAS:** El principal valor es que el estudio **propone y formaliza un método de evaluación sistemático** para SAS, un área que carecía de métricas claras. Al establecer los SAQFs y mapearlos a QCs medibles, el trabajo facilita el proceso de verificación.
- **Enfoque en Fases Tempranas (Diseño):** El método permite medir la calidad desde el punto de vista de la autoadaptación durante las fases de **arquitectura y diseño**, antes de la implementación. Esto es crucial, ya que facilita la adaptación del sistema a la calidad preferida y ahorra costos asociados a la corrección tardía de fallos.
- **Desarrollo de un Modelo Relacional Novedoso:** La introducción del **modelo cualitativo en forma de grafo** representa un avance sobre los modelos tradicionales (como MACCAL e ISO 1926). Este grafo permite no solo la medición, sino también la **predicción** del impacto de los factores unos sobre otros, actuando como una herramienta de apoyo a la decisión arquitectónica.
- **Verificación Rigurosa:** El uso combinado de la **validación de expertos** (a través de un cuestionario con resultados estadísticamente fiables) y la **prueba de aplicabilidad mediante un caso de estudio real** (sistema de emergencia) confiere solidez a la propuesta.

El _paper_ actúa esencialmente como un **sistema de diagnóstico avanzado** para SAS. Si los métodos de evaluación tradicionales son como termómetros que miden la fiebre (problemas simples), este método propuesto es como una resonancia magnética que analiza las complejas interconexiones internas del sistema (el grafo relacional), permitiendo al desarrollador predecir dónde surgirán los problemas de adaptación si no se atienden ciertos factores primarios.