#CitaLatex 
@article{Klus_Knieke_Rausch_Wittek_2023, title={Software Engineering meets Artificial Intelligence}, volume={82}, url={https://www.eceasst.org/index.php/eceasst/article/view/2316}, DOI={10.14279/tuj.eceasst.82.1224}, abstractNote={With the increasing use of AI in classic software systems, two worlds are coming closer and closer to each other that were previously rather alien to each other, namely the established discipline of software engineering and the world of AI. On the one hand, there are the data scientists, who try to extract as many insights as possible from the data using various tools, a lot of freedom and creativity. On the other hand, the software engineers, who have learned over years and decades to deliver the highest quality software possible and to manage release statuses. When developing software systems that include AI components, these worlds collide. This article shows which aspects come into play here, which problems can occur, and how solutions to these problems might look like. Beyond that, software engineering itself can benefit from the use of AI methods. Thus, we will also look at the emerging research area AI for software engineering.}, journal={Electronic Communications of the EASST}, author={Klus, Holger and Knieke, Christoph and Rausch, Andreas and Wittek, Stefan}, year={2023}, month={Oct.} }

Referencia del archivo original: `(Holger Klus) Software Engineering meets Artificial Intelligence.pdf` [[(Holger Klus) Software Engineering meets Artificial Intelligence.pdf]]

El documento seleccionado es el artículo **"Software Engineering meets Artificial Intelligence"** (La Ingeniería de Software se Encuentra con la Inteligencia Artificial), escrito por Holger Klus, Christoph Knieke, Andreas Rausch y Stefan Wittek.

El _paper_ es un informe de experiencia (_experience paper_) que aborda la creciente convergencia de la disciplina de la ingeniería de _software_ establecida y el mundo de la Inteligencia Artificial (IA). Los autores comparten sus experiencias prácticas en la industria en el desarrollo y operación de _software_ basado en IA, especialmente en proyectos de análisis de datos masivos y críticos para la seguridad (ej., _software_ para probar la integridad de plantas industriales).

A continuación, se presenta un resumen completo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto de la Colisión de Culturas:** La motivación del artículo surge del uso cada vez mayor de enfoques de IA (principalmente _machine learning_) para resolver soluciones de _software_ total o parcialmente, lo que crea nuevos desafíos técnicos, organizacionales y legales.

Históricamente, la Ingeniería de _Software_ y la Ciencia de Datos (AI) eran disciplinas ajenas entre sí.

- Los **Científicos de Datos** se centran en la libertad, la creatividad y el uso de herramientas diversas para extraer _insights_ de los datos, a menudo con ciclos de lanzamiento cortos y un enfoque experimental.
- Los **Ingenieros de _Software_** se enfocan en entregar _software_ de la más alta calidad, gestionar el estado de los lanzamientos (_release status_), la **mantenibilidad a largo plazo** y los aspectos de calidad en general.

Cuando estos dos mundos se encuentran, surgen seis desafíos clave para los ingenieros de _software_:

**2. Desafíos Clave en la Ingeniería de Software para IA (SE4AI):**

- **2.1. Gestión de Expectativas (_Expectation Management_):** Las expectativas sobre el potencial de la IA son altas, impulsadas por las historias de éxito. Los marcos de IA a menudo se encuentran en el "Pico de Expectativas Infladas" (_Peak of Inflated Expectations_) del Ciclo Hype de Gartner, pero su madurez es limitada. La comunicación transparente es crucial. Los **Arquitectos de _Software_** desempeñan un papel mediador clave para gestionar estas expectativas y evaluar si el uso de IA tiene sentido.
- **2.2. Choque de Culturas (_Clash of Cultures_):** Las metodologías de trabajo difieren significativamente. Los Científicos de Datos perciben el desarrollo de _software_ como "muy pesado y sujeto a reglas". Los Ingenieros de _Software_ perciben el enfoque experimental y la falta de gestión de _releases_ de los Científicos de Datos como "poco profesional". La consolidación de ambos enfoques es difícil y requiere integrar roles desde el inicio del proyecto y promover activamente la comprensión mutua.
- **2.3. Ingeniería de Requisitos (RE) y Diseño del Sistema:** En los sistemas basados en IA, las propiedades funcionales y no funcionales ya no dependen solo de los _stakeholders_, sino también de la **cantidad, selección y calidad de los datos de entrenamiento**. Esto significa que, además del mantenimiento habitual, hay **tareas adicionales** que implican la gestión de los datos de entrenamiento y validación. Es necesario establecer mecanismos apropiados para garantizar la **trazabilidad** de qué _software_ y qué modelo fue entrenado con qué datos.
- **2.4. Aseguramiento de la Calidad (QA):** La adaptación frecuente del modelo de IA (debido a nuevos datos) requiere **pruebas repetidas y lentas**. La gestión de las **múltiples versiones del modelo** es un desafío. Los sistemas con **aprendizaje en línea** (_online learning_) causan que las versiones en operación y en desarrollo se separen inevitablemente (_drifting apart_), lo que dificulta la fusión y el aseguramiento de la calidad. Además, la naturaleza de **caja negra** (_black-box_) de muchos algoritmos de IA significa que los métodos formales de QA (como la verificación) a menudo no pueden emplearse, dejando solo las **pruebas estadísticas** (usando ejemplos de entrada/salida).
    - **Solución Arquitectónica:** Se propone el concepto de **Dependability Cages** (Jaulas de Confiabilidad) para monitorear el comportamiento de los sistemas autónomos en tiempo de ejecución, especialmente los componentes basados en IA, e intervenir cuando actúan fuera de su especificación o registrar nuevas situaciones para alimentar el ciclo de desarrollo iterativo.
- **2.5. Cadena de Herramientas y Procesos:** Existe una **heterogeneidad de herramientas** utilizadas para la IA y para el _software_ clásico. Esta disparidad complica el aseguramiento de la calidad y la gestión de _releases_. Integrar herramientas de IA en la infraestructura de desarrollo de _software_ tradicional es difícil. Los arquitectos de _software_ deben seleccionar herramientas apropiadas y coordinar procesos que tengan en cuenta esta dualidad.
- **2.6. Confianza, Aspectos Legales y Éticos:** La naturaleza de **caja negra** de los modelos de IA dificulta la trazabilidad de las decisiones y socava la confianza del usuario. La **IA Explicable (XAI)**, que incluye la comprensibilidad, la razonabilidad y la trazabilidad, es esencial para generar confianza, especialmente en aplicaciones críticas.

**3. La IA para la Ingeniería de Software (AI4SE):** El _paper_ también examina el campo emergente de AI4SE (IA para la Ingeniería de _Software_), que utiliza la enorme cantidad de datos generados durante el ciclo de vida del _software_ (código fuente, modelos, documentación) para apoyar y automatizar las decisiones de desarrollo.

- Las tareas de ingeniería de _software_ a menudo se pueden formular como **tareas de análisis de datos** y ser asistidas por algoritmos de IA.
- Ejemplos incluyen asistentes de programación como **Codex** y **GitHub Copilot**, que generan código a partir de descripciones en lenguaje natural. Estos asistentes han mostrado potencial, pero también limitaciones en cuanto a la corrección y la eficiencia del entrenamiento.

**4. Conclusión:** La integración de la IA en el _software_ tradicional hace que los mundos de la ingeniería de _software_ y la ciencia de datos colisionen, generando desafíos que requieren la adaptación del ciclo de vida del _software_ completo. La clave del éxito radica en tener datos de calidad, comunicación transparente, y en el papel crucial del arquitecto de _software_ para mediar y gestionar expectativas.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre los desafíos y las soluciones en la intersección de la Ingeniería de _Software_ (SE) y la IA se fundamentan en las siguientes ideas clave, basadas en la experiencia práctica de los autores:

1. **La Calidad del Software Impulsado por IA es Inseparable de la Gestión de Datos:** La conclusión de que los sistemas de IA requieren tareas adicionales de mantenimiento y una adaptación completa del ciclo de vida del _software_ se basa en la experiencia de que la **cantidad, selección y calidad de los datos de entrenamiento** impactan directamente en las **propiedades funcionales y no funcionales** del sistema, algo que era "irrelevante" en el desarrollo clásico. Esto exige mecanismos de **trazabilidad** para relacionar el modelo, el _software_ y los datos utilizados.
2. **El Choque Cultural y Metodológico es la Barrera Organizacional Principal:** La conclusión de que se deben combinar roles desde el inicio se fundamenta en la experiencia de que las metodologías de trabajo de los Científicos de Datos (experimentación, ciclos cortos) y los Ingenieros de _Software_ (mantenibilidad, reglas estrictas) **difieren significativamente** y generan escepticismo mutuo. El arquitecto de _software_ debe ser el mediador para establecer la **comunicación transparente** necesaria para gestionar expectativas.
3. **Los Métodos Tradicionales de QA y Control de Versiones son Inadecuados para la IA Dinámica:** La conclusión sobre la dificultad de la QA se basa en la observación de que la **naturaleza de caja negra** de la IA impide los métodos formales de verificación y que la **adaptación continua** (aprendizaje en línea o nuevos datos) provoca una **deriva de las versiones**. Esto impulsa la necesidad de soluciones arquitectónicas para la monitorización en _runtime_, como el concepto de **Dependability Cages**.

---

### Valor del Paper

El valor del artículo "Software Engineering meets Artificial Intelligence" es significativo porque sirve como una **guía práctica basada en la experiencia industrial** para navegantes de proyectos complejos que involucran la integración de IA:

- **Identificación Sistemática de Desafíos:** El _paper_ aporta valor al identificar y estructurar sistemáticamente los **seis desafíos clave** que surgen al integrar la IA en sistemas de _software_ críticos para la seguridad, abarcando aspectos culturales (Clash of Cultures), técnicos (QA, Tool Chain) y organizacionales (Expectation Management, Requirements Engineering).
- **Rol del Arquitecto como Mediador:** El trabajo destaca y formaliza el **papel central del arquitecto de _software_** como mediador y comunicador esencial para prevenir falsas expectativas y coordinar los procesos dispares entre la Ciencia de Datos y la Ingeniería de _Software_.
- **Propuesta Arquitectónica para la Confiabilidad:** Ofrece una solución arquitectónica concreta, el concepto de **Dependability Cages**, para abordar el problema crítico de **monitorear el comportamiento de los componentes de IA en tiempo de ejecución** y asegurar la seguridad del sistema, especialmente en contextos críticos para la seguridad.
- **Relevancia Dual:** El _paper_ es valioso porque cubre ambas direcciones de investigación: **SE4AI** (los desafíos de construir sistemas de IA) y **AI4SE** (el uso de IA para automatizar tareas de ingeniería de _software_), ofreciendo una visión integral del campo emergente.

El artículo actúa como un **manual de supervivencia para el arquitecto de _software_** que debe construir un puente entre dos mundos. El ingeniero de _software_ es como un constructor de presas que tradicionalmente gestiona ladrillos (código) y cemento (procesos), pero que ahora debe integrar una bomba de agua (el modelo de IA) que extrae agua (datos) de manera constante. El manual detalla no solo cómo encajar la bomba (tool chain), sino también cómo medir la calidad del agua (gestión de datos) y cómo asegurar que la bomba no explote o actúe de manera inesperada (Dependability Cages, XAI).
