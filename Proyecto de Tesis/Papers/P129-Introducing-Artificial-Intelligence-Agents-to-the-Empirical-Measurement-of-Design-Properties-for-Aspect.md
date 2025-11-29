#CitaLatex 
@INPROCEEDINGS{SenthilVelan2019IntroducingArtificial,
  author={S., Senthil Velan},
  booktitle={2019 Amity International Conference on Artificial Intelligence (AICAI)}, 
  title={Introducing Artificial Intelligence Agents to the Empirical Measurement of Design Properties for Aspect Oriented Software Development}, 
  year={2019},
  volume={},
  number={},
  pages={80-85},
  keywords={Software;Artificial intelligence;Software measurement;Complexity theory;Couplings;Computational modeling;AOSD;Software Quality Model;Artificial Intelligence Agents},
  doi={10.1109/AICAI.2019.8701250}}


Referencia del archivo original: `(Senthil Velan S.) Introducing Artificial Intelligence Agents to the Empirical Measurement of Design Properties for Aspect.pdf` [[(Senthil Velan S.) Introducing Artificial Intelligence Agents to the Empirical Measurement of Design Properties for Aspect.pdf]]

El documento seleccionado es el artículo **"Introducing Artificial Intelligence Agents to the Empirical Measurement of Design Properties for Aspect Oriented Software Development"** (Introducción de Agentes de Inteligencia Artificial en la Medición Empírica de Propiedades de Diseño para el Desarrollo de _Software_ Orientado a Aspectos), escrito por Senthil Velan S.

Este trabajo propone un **modelo de calidad** basado en agentes de Inteligencia Artificial (IA) para evaluar cuantitativamente los efectos de la metodología de **Desarrollo de _Software_ Orientado a Aspectos (AOSD)**.

### Resumen Completo del Documento

**1. Contexto y Motivación (Evaluación de AOSD):** AOSD es una metodología que se centra en la clara separación de las funcionalidades o preocupaciones (_concerns_) principales y las de corte transversal (_cross-cutting_) en el _software_, con el objetivo de mejorar la modularidad y reducir los costos de mantenimiento. Los proponentes de AOSD han realizado un trabajo sustancial para demostrar sus efectos positivos utilizando evaluaciones cuantitativas.

Debido a que la calidad del _software_ no se puede medir directamente, los estudios existentes se han centrado en definir y cuantificar métricas para las **propiedades de diseño** (como cohesión, acoplamiento, herencia y efecto dominó) aplicadas a versiones de _software_ Orientado a Objetos (OO) y sus equivalentes Orientados a Aspectos (AO).

**2. La Innovación Propuesta (Agentes de IA en la Medición):** El artículo propone la introducción de **Agentes de Inteligencia Artificial (AI Agents)** en el proceso de medición empírica.

- **Rol de los Agentes de IA:** Los agentes de IA son entidades de _software_ que pueden procesar los datos medidos y calcular resultados basados en valores entrenados. En este estudio, los agentes se entrenan con datos obtenidos de las diferentes versiones equivalentes de las aplicaciones OO y AO. Esto permite desarrollar un **modelo de predicción efectivo**.
- **Modelo de Calidad de Cuatro Capas:** Se propone un modelo de calidad jerárquico para inferir el efecto de la aspectización:
    - **Capa 1 – Propiedades de Diseño:** Incluye las propiedades fundamentales del diseño consideradas para el estudio de la calidad: **Herencia, Cohesión, Acoplamiento, Complejidad y Efecto Dominó (_Ripple Effect_)**.
    - **Capa 2 – Métricas Propuestas:** Un conjunto de métricas específicas y ya definidas en trabajos anteriores se utiliza para cuantificar con precisión las propiedades de diseño de la Capa 1. Se presentan métricas para Herencia (Tabla I), Cohesión y Acoplamiento (Tabla II), Complejidad (Tabla III) y Efecto Dominó (Tabla IV).
    - **Capa 3 – Agentes de Medición de IA:** Son los agentes programados para medir y **aprender sobre las métricas** de la Capa 2. Utilizan los cambios en los valores de las métricas entre versiones para inferir el efecto de la aspectización.
    - **Capa 4 – Atributos de Calidad:** Define los atributos de alto nivel en los que se infieren los efectos: **Reutilización (_Reusability_), Mantenibilidad (_Maintainability_) y Evolución (_Evolution_)**.

**3. Caso de Estudio y Resultados:** El modelo de calidad basado en agentes de IA se aplicó a una aplicación existente de **Sistema de Automatización Universitaria (UAS)**, desarrollada en versiones OO (Java) y AO (AspectJ), que modela preocupaciones centrales y de corte transversal (como el _logging_, la persistencia y la seguridad).

- **Efecto Dominó y Mantenibilidad:** El análisis realizado por los agentes de IA mostró que el **efecto dominó se redujo en un 165.6%** en las versiones AspectJ en comparación con las versiones Java equivalentes, lo que **mejoró la mantenibilidad** en un promedio del 54%.
- **Modularidad (Cohesión y Acoplamiento):** Las versiones AO mostraron valores de **cohesión más altos** (aumento del 7.6%) y valores de **acoplamiento más bajos** (reducción del 9.3%) que sus equivalentes OO, lo que mejoró la mantenibilidad en un promedio del 8.4% debido a la modularidad.
- **Complejidad:** El índice de complejidad de las versiones AO fue, en promedio, **un 33.6% menor** que el de las versiones OO, lo que también mejoró la mantenibilidad en un 33.6%.
- **Reutilización:** La herencia de artefactos (clases y aspectos) y sus construcciones internas mostraron una **mejora en la reutilización de un 117.8%** en las versiones AO. Las funcionalidades dispersas (_scattered_) en Java (como _logging_ y autenticación) se modularizaron de manera limpia en las versiones aspectizadas, logrando una mejor forma de reutilización.

En general, se concluyó que la aspectización mejoró positivamente la **reutilización (117.8%)** y la **evolución (165.6%)**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que la aspectización mejora la calidad del _software_ y de que el modelo de agentes de IA es efectivo se fundamentan en las siguientes ideas clave:

1. **La Calidad del _Software_ Debe Ser Inferida a Partir de la Medición de Propiedades de Diseño Fundamentales, No Directamente:** La conclusión sobre la mejora de la calidad se basa en el principio de que la calidad no se puede medir directamente. Por lo tanto, el modelo infiere sobre los atributos de alto nivel (Mantenibilidad, Reutilización, Evolución) a través de la cuantificación de propiedades de diseño subyacentes como la **Cohesión, el Acoplamiento, el Efecto Dominó y la Complejidad**.
2. **La Aspectización Mejora Radicalmente la Modularidad, lo que se Traduce en Reducción de Costos de Mantenimiento y Aumento de la Reutilización:** La conclusión de la mejora general de la calidad se fundamenta en los resultados cuantitativos clave que demuestran una **reducción masiva del efecto dominó (165.6%)** y la **complejidad (33.6%)**, junto con un **aumento significativo de la reutilización (117.8%)**. Esto valida la premisa de AOSD de que la separación de preocupaciones (_concerns_) mejora la modularidad.
3. **Los Agentes de IA Introducen la Capacidad de Predicción y Aprendizaje en la Medición Empírica para Generar Inferencias Más Efectivas:** La propuesta metodológica clave se basa en que los agentes de IA pueden **aprender sobre los datos de medición** a lo largo del tiempo y entre diferentes versiones del _software_. Al ser entrenados con estos datos, los agentes de IA se utilizan para **inferir el efecto de la aspectización** y para desarrollar modelos de predicción, lo que mejora la calidad de las inferencias obtenidas en comparación con las mediciones directas.

---

### Valor del Paper

El artículo **"Introducing Artificial Intelligence Agents to the Empirical Measurement of Design Properties for Aspect Oriented Software Development"** tiene un valor significativo en la Ingeniería de _Software_ y la Computación Autónoma:

- **Avance Metodológico Único:** El trabajo propone y aplica el **primer modelo de calidad basado en Agentes de IA** en la literatura para evaluar empíricamente el efecto de la aspectización. Esto es un avance en el campo de la medición de _software_, proporcionando una herramienta de análisis más sofisticada y con potencial predictivo.
- **Validación Cuantitativa de AOSD:** El estudio proporciona **pruebas empíricas contundentes y cuantitativas** (como la reducción del 165.6% en el efecto dominó y el aumento del 117.8% en la reutilización) del impacto positivo de adoptar AOSD, lo cual es crucial para que los diseñadores de _software_ tomen decisiones efectivas sobre su adopción.
- **Estructura Jerárquica Clara para la Evaluación de la Calidad:** El modelo de calidad de cuatro capas establece una **relación bien definida** entre las métricas de diseño de bajo nivel y los atributos de calidad de alto nivel (Reutilización, Mantenibilidad, Evolución), proporcionando un marco estructurado que puede aplicarse a otros estudios.
