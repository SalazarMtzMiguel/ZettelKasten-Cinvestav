#CitaLatex 
@inproceedings{Latinovic2021Automationand,
  series = {HICSS},
  title = {Automation and Artificial Intelligence in Software Engineering: Experiences,  Challenges,  and Opportunities},
  ISSN = {2572-6862},
  url = {http://dx.doi.org/10.24251/HICSS.2021.017},
  DOI = {10.24251/hicss.2021.017},
  booktitle = {Proceedings of the 54th Hawaii International Conference on System Sciences},
  publisher = {Hawaii International Conference on System Sciences},
  author = {Latinovic,  Milan and Pammer-Schindler,  Viktoria},
  year = {2021},
  collection = {HICSS}
}

Referencia del archivo original: `(Milan Latinovic) Automation and Artificial Intelligence in Software Engineering.pdf` [[(Milan Latinovic) Automation and Artificial Intelligence in Software Engineering.pdf]]

El documento seleccionado es el artículo de investigación **"Automation and Artificial Intelligence in Software Engineering: Experiences, Challenges, and Opportunities"** (Automatización e Inteligencia Artificial en la Ingeniería de _Software_: Experiencias, Desafíos y Oportunidades), escrito por Milan Latinović y Viktoria Pammer-Schindler.

Este estudio explora cómo la automatización y las herramientas habilitadas por la Inteligencia Artificial (IA) impactan en la práctica actual de la ingeniería de _software_, basándose en entrevistas semiestructuradas con profesionales experimentados en diversas áreas (desarrollo _frontend_ y _backend_, DevOps, I+D, integración y liderazgo).

### Resumen Completo del Documento

**1. Contexto y Problema (Impacto de la IA y la Automatización en SE):** La automatización y la IA están transformando muchos sectores, como la manufactura (Industria 4.0), la medicina y la auditoría financiera, donde las herramientas computacionales ya están ejecutando tareas que antes eran dominio exclusivo de expertos. Los ingenieros de _software_ son, en principio, los actores que diseñan esta transformación. Sin embargo, existe poco conocimiento sobre cómo estas tecnologías impactan directamente en la práctica de la ingeniería de _software_ (SE).

**Definiciones Clave:**

- **Automatización:** Conjunto de herramientas computacionales que ejecutan actividades de dominio, originalmente basadas en lógica condicional, que asumen tareas humanas o habilitan acciones que los humanos no pueden realizar.
- **Inteligencia Artificial (IA):** Un amplio rango de tecnologías y capacidades (procesamiento de lenguaje natural, visión por computadora, razonamiento automatizado y _machine learning_).

**2. Metodología de Investigación:** El estudio abordó dos preguntas de investigación:

- RQ1: ¿Cuáles son los enfoques de automatización y herramientas de IA adoptados por los ingenieros de _software_ entrevistados en la práctica actual?
- RQ2: ¿Cuál es la perspectiva de los ingenieros de _software_ sobre el futuro de la automatización y el apoyo habilitado por la IA en su trabajo?

Se llevaron a cabo **13 entrevistas semiestructuradas** con profesionales experimentados de diferentes orígenes (industria y academia) y dominios (SaaS, logística, seguridad, _hardware_). El análisis de datos fue **temático, inductivo y reflexivo**. Es importante destacar que el estudio se centró en la experiencia de Pequeñas y Medianas Empresas (PYMES) ubicadas en Austria y el sudeste de Europa.

**3. Hallazgos Principales (Cuatro Temas Centrales):**

**A. La Automatización Actual es Micro-Automatización:** La automatización ocurre en diversas actividades como la configuración de entornos (Docker, _scripts_), el _coding_ (_syntax checkers, linting_), el _versioning_, el despliegue y las pruebas/Integración Continua (CI) (Jenkins, GitLabs).

- Los profesionales combinan herramientas populares de forma no estandarizada, lo que proporciona libertad pero también genera carga de trabajo.
- La automatización más notable es la **micro-automatización**: la automatización de **tareas específicas y pequeñas**. Esto incluye _scripts_ personalizados, _pre-commit hooks_ (que automatizan pruebas locales antes de enviar el código) y _Slack bots_ que entregan notificaciones de procesos.

**B. La Automatización es un Producto Colateral (Side-Product) Impulsado de Abajo Hacia Arriba (_Bottom-up_):**

- Los participantes perciben la actividad de automatizar como un **producto colateral** del trabajo, ya que las empresas se centran en las actividades operativas y de proyectos facturables.
- La automatización **no es reconocida a nivel estratégico (_top level_)** porque su valor de retorno no es inmediato o fácil de priorizar.
- La iniciativa de automatizar proviene predominantemente de **desarrolladores individuales o equipos** (un esfuerzo _bottom-up_) que reconocen un cuello de botella y lo resuelven con una solución rápida y adaptada al contexto específico.
- La motivación para automatizar es doble: simplificar el trabajo repetitivo y expandir el conocimiento/experimentar con nuevas herramientas.

**C. La Automatización como Causa de Sobrecarga Cognitiva (_Cognitive Overhead_):** A pesar del entusiasmo por la automatización, los participantes identificaron que esta puede aumentar la **sobrecarga cognitiva**.

- Esto ocurre principalmente por la **generación automática de notificaciones irrelevantes** (ej., correos electrónicos de Jira) que el desarrollador ya conoce por haber estado en reuniones, o por cargas de mensajes de error que son más un obstáculo que una ayuda.
- Esto plantea la cuestión de si las rutinas automatizadas, y en el futuro los agentes inteligentes, requerirán un **gasto de trabajo de articulación** (coordinación, comunicación, etc.) similar al humano.

**D. Impacto Incierto de la IA en el Futuro de la SE:** Los participantes fueron **escépticos** sobre si las herramientas habilitadas por la IA (como asistentes de programación o minería de patrones en CI) cambiarían sustancialmente la esencia de la ingeniería de _software_ en un futuro cercano.

- Aunque la IA es optimista cuando se trata de **apoyo consultivo** (ej., predicción de errores, estimación de esfuerzo), los participantes son **escépticos** acerca de que la IA tome **decisiones de importancia sustancial** o que se siente "en el asiento del conductor".
- Los participantes mostraron interés en automatizaciones más avanzadas pero cercanas, como las **herramientas de prueba inteligentes** que seleccionan subconjuntos apropiados de casos de prueba.
- La escasez de experiencia práctica con la IA por parte de los entrevistados refuerza la conclusión de que la IA **aún no se utiliza masivamente** en las herramientas para programadores, sino más bien en el apoyo a la toma de decisiones.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre el estado actual de la automatización y el futuro de la IA en la ingeniería de _software_ se fundamentan en las siguientes ideas clave:

1. **La Capacidad de los Ingenieros de Software para Resolver sus Propios Cuellos de Botella Promueve la Automatización Desestructurada y Reactiva (_Bottom-up_):** La conclusión de que la automatización es **micro y _bottom-up_** se basa en que los ingenieros de _software_ poseen las habilidades (programación y automatización) y la flexibilidad en su trabajo para **reconocer y solucionar rápidamente sus propios problemas de eficiencia**. Esta capacidad contrasta con otros sectores y resulta en una automatización que es un **subproducto operativo, a menudo no estratégica** ni organizada a nivel de toda la compañía.
2. **La Adopción de la IA en SE Requiere que el Sistema Mantenga al Humano en el Lazo de Decisión (Advisory Role):** La conclusión sobre el **escepticismo hacia la IA** se fundamenta en que, si bien se valora la asistencia, se rechaza la idea de que la IA tome decisiones sustanciales. Los ingenieros de _software_ están dispuestos a aceptar herramientas mejoradas por IA (predicción de errores, estimación de esfuerzo) siempre que actúen con un **propósito consultivo (_advisory_)** y no de toma de decisiones autónoma, permitiendo al profesional retener la autoridad y la responsabilidad.
3. **La Automatización, Cuando no es Suficientemente "Inteligente," Crea un Overhead Adicional en Lugar de Reducirlo:** La conclusión sobre la **sobrecarga cognitiva** se fundamenta en la observación de que las rutinas automatizadas generan un volumen de notificaciones automáticas que **no consideran el contexto** (si el desarrollador ya está al tanto de la información). Este fallo en la "inteligencia" de la automatización introduce un **costo de coordinación y comunicación** que anula parcialmente los beneficios de la eficiencia, lo cual debe ser un foco para futuras mejoras.

---

### Valor del Paper

El artículo **"Automation and Artificial Intelligence in Software Engineering: Experiences, Challenges, and Opportunities"** es de gran valor para la investigación en Ingeniería de _Software_ y la gestión de equipos tecnológicos:

- **Evidencia Empírica de la Práctica Actual:** El principal valor es que es uno de los pocos estudios que complementa la investigación técnica existente (prototipos de IA) con **evidencia empírica directa** sobre el **uso real y las percepciones de los profesionales** experimentados, abordando una brecha en la literatura.
- **Identificación de Temas Clave No Estratégicos:** El _paper_ desmitifica la idea de una transformación radical de la IA en SE en el corto plazo y, en cambio, resalta la importancia de la **micro-automatización _bottom-up_**. Esto tiene implicaciones significativas para la gestión, ya que sugiere que las empresas no están priorizando estratégicamente la automatización, sino que confían en las iniciativas individuales de sus desarrolladores.
- **Guía para el Diseño de Herramientas de IA Futuras:** Los hallazgos sobre la sobrecarga cognitiva y la preferencia por el **rol consultivo** de la IA proporcionan una guía crucial para los desarrolladores de herramientas futuras, que deben enfocarse en la **conciencia del contexto** para no inundar al usuario con información redundante, y deben diseñarse para el apoyo y no para el reemplazo total del juicio humano.

La automatización en la ingeniería de _software_, según este _paper_, es como un **jardín bien cuidado por sus jardineros (los desarrolladores), pero sin un plan maestro del propietario (la gerencia)**. Los jardineros automatizan las tareas diarias pequeñas (micro-automatización) por comodidad. Aunque los desarrolladores son optimistas sobre tener **herramientas de jardinería más inteligentes (IA)**, solo las aceptarán si las herramientas actúan como un **asistente sabio** que les aconseja sobre la mejor siembra, y no como un **robot autónomo** que toma decisiones sobre el diseño del jardín sin su consentimiento.
