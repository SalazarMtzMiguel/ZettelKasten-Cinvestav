#CitaLatex 
@ARTICLE{FrankJos2024AReferenceArchitecture,
  author={Affonso, Frank José and Nagassaki Campos, Gabriel and Guiguer Menaldo, Guilherme},
  journal={IEEE Access}, 
  title={A Reference Architecture Based on Reflection for Self-Adaptive Software: A Second Release}, 
  year={2024},
  volume={12},
  number={},
  pages={97476-97499},
  abstract={The development of Self-adaptive Software (SaS) is not a trivial task because this type of software has specific features compared to traditional ones. In short, SaS can reflect on its internal and external states and propose structural, behavioral, and contextual changes that can be incorporated at runtime. Manual adaptation tasks, even if very well executed, normally become onerous in time and effort, besides being error prone because of the involuntary injection of errors by the developers. Automated processes have been used as a feasible solution to conduct software adaptation at runtime by minimizing human involvement (e.g., software engineers and developers) and quickening up the execution of tasks. In parallel, Reference Architectures (RA) have been used to aggregate knowledge and architectural artifacts, capturing the systems’ essence in specific domains. Therefore, it can be said that this type of architecture is an important way to support the development, standardization, and evolution of software systems. Considering this context, the main contribution of this paper is to present the second release of a reference architecture called RA4SaS (Reference Architecture for SaS). This architecture is based on reflection, a controlled adaptation approach, and a set of automated processes that support the development of SaS in both design and runtime. To show the applicability of our RA, we conducted a case study that explored three adaptation scenarios. As a result, we observe our RA has good potential to efficiently contribute to the SaS domain.},
  keywords={Computer architecture;Reflection;Software systems;Runtime;Adaptation models;Task analysis;Adaptive systems;Reference architecture;self-adaptive software;reflection;runtime;automated processes},
  doi={10.1109/ACCESS.2024.3428368},
  ISSN={2169-3536},
  month={},}

Referencia del archivo original: `(Frank Jose Affonso) A Reference Architecture Based on Reflection for Self-Adaptive Software A Second Release.pdf` [[(Frank Jose Affonso) A Reference Architecture Based on Reflection for Self-Adaptive Software A Second Release.pdf]]

El documento seleccionado es el artículo de investigación **"A Reference Architecture Based on Reflection for Self-Adaptive Software: A Second Release"** (Una Arquitectura de Referencia Basada en Reflexión para Software Auto-Adaptativo: Una Segunda Versión), cuyos autores son Frank José Affonso, Gabriel Nagassaki Campos y Guilherme Guiguer Menaldo.

El artículo aborda la complejidad del desarrollo de Software Auto-Adaptativo (SaS) y presenta la **segunda versión de una Arquitectura de Referencia (RA) llamada RA4SaS**, que se basa en la reflexión y procesos automatizados para facilitar tanto el diseño como la adaptación en tiempo de ejecución (_runtime_).

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. El Problema del Software Auto-Adaptativo (SaS):** El desarrollo de SaS no es una tarea trivial. El software debe estar preparado para operar bajo condiciones normales y adversas y mantener la integridad de ejecución 24/7. Las adaptaciones manuales son onerosas en tiempo y esfuerzo, y son propensas a errores debido a la inyección involuntaria de fallas por parte de los desarrolladores.

**SaS** es un tipo de software que puede **reflexionar sobre sus estados internos y externos** y proponer cambios estructurales, de comportamiento o contextuales que pueden incorporarse en tiempo de ejecución sin intervención humana o con intervención mínima. Para superar las adversidades de la gestión manual, se han adoptado **procesos automatizados** como una solución viable para la adaptación en tiempo de ejecución, maximizando la rapidez de implementación de SaS y minimizando la participación de los desarrolladores.

**2. La Solución: RA4SaS (Segunda Versión):** Las Arquitecturas de Referencia (RA) se utilizan para agregar conocimiento y artefactos arquitectónicos, facilitando el desarrollo, la estandarización y la evolución de los sistemas de _software_.

La **RA4SaS** es una arquitectura de referencia para SaS que se basa en la **reflexión computacional**, un enfoque de adaptación controlada, y un conjunto de procesos automatizados que soportan el desarrollo de SaS en dos fases:

- **(i) Diseño de la Entidad (Design):** Apoyado por una herramienta llamada **DSLModeler4SaS** y un lenguaje específico de dominio (DSL) denominado **eLanguage**.
- **(ii) Tiempo de Ejecución (Runtime):** Utiliza un proceso automatizado para adaptar una entidad de _software_ sin la percepción de sus partes interesadas (_stakeholders_).

**3. Componentes Clave de la Segunda Versión (Núcleo de Adaptación):** El núcleo de adaptación (_Adaptation Core_, representado por la línea punteada) es el "corazón" de la arquitectura y está compuesto por siete módulos principales:

- **Reflection Module:** Utiliza un **metamodelo UML** para representar la entidad de _software_. Este módulo asiste en la adaptación en tiempo de ejecución al permitir el **"desensamblaje" y "ensamblaje"** de la entidad de _software_. Utiliza la Reflection API para recuperar información estructural y de comportamiento.
- **Adaptation Module:** Actúa como el **"orquestador"** de la arquitectura, coordinando los nueve pasos del proceso automatizado de adaptación en tiempo de ejecución (Pasos A a I).
- **State Module:** Preserva el estado de ejecución actual de la entidad de _software_ mediante operaciones de serialización y deserialización (usando JSON) para que la información se pueda recuperar y reinsertar después de la adaptación, evitando la interrupción del estado de ejecución original.
- **Entity Annotation Module:** Utilizado para gestionar las anotaciones que definen el **nivel de adaptación** (controlada) de cada entidad (ej., estructural, de comportamiento o ambas), lo que le indica al Módulo de Reflexión qué información puede ser modificada en _runtime_.
- **NEW: Persistence Annotation Module:** Diseñado para entidades que necesitan **almacenar información en una base de datos**. Permite a los ingenieros de _software_ insertar anotaciones de persistencia basadas en las especificaciones de **JPA** (Java Persistence API) para el mapeo objeto-relacional (ORM).
- **NEW: Logging Module:** Genera información de registro de las operaciones de adaptación en ambas fases (diseño y _runtime_) para el seguimiento de problemas y la evolución del sistema.
- **Source Code Module:** Genera automáticamente el código fuente de las nuevas entidades adaptadas utilizando un motor de plantillas (_template engine_) basado en el metamodelo instanciado por el Módulo de Reflexión. Las plantillas se basan en patrones arquitectónicos (ej., capa lógica, capa de persistencia).

**4. Nuevos Módulos de Diseño (DSLModeler4SaS):** La segunda versión introdujo la herramienta **DSLModeler4SaS** y el DSL **eLanguage** para facilitar el diseño de SaS mediante un enfoque **texto-a-texto**.

- Los desarrolladores especifican las entidades de _software_ en el DSL eLanguage.
- El **Source Code Module** se integra con DSLModeler4SaS para generar automáticamente código fuente libre de fallas, minimizando el esfuerzo de prueba y acelerando el proceso.

**5. Proceso Automatizado de Adaptación en Runtime:** El proceso de adaptación implica nueve pasos:

1. Recuperar nivel de adaptación y anotaciones de persistencia (A).
2. Preservar el estado de ejecución actual (B).
3. Desensamblar la entidad para instanciar un metamodelo (C).
4. Establecer un plan de acción (D), analizando los cambios (E) e insertando información estructural/de comportamiento en el metamodelo (F) para generar un nuevo metamodelo (G).
5. Transferir el metamodelo al Módulo de Código Fuente (H) para la generación de la nueva entidad.
6. Compilar e insertar la nueva entidad en el entorno de ejecución, restaurando el estado si no hay un cambio de dominio (I). Todo este proceso está orquestado por el Módulo de Adaptación y rastreado por el Módulo de Registro.

**6. Aplicabilidad y Caso de Estudio:** El caso de estudio, utilizando una aplicación de gestión de alquiler de coches (_Rent-a-Car_), demostró la aplicabilidad de la RA en tres escenarios de adaptación en _runtime_: (1) Asociación de nuevas funcionalidades (composición/agregación), (2) Extensión de nuevas funcionalidades (herencia), y (3) Adaptación estructural y de comportamiento (adición de atributos y métodos). El estudio concluye que la RA4SaS tiene **buen potencial para contribuir eficientemente** al dominio SaS.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que la RA4SaS es una solución eficiente y prometedora para el dominio SaS se fundamentan en las siguientes ideas clave:

1. **La Automatización de Tareas Onerosas Evita Errores Humanos:** La conclusión de la eficiencia se basa en la premisa de que las tareas manuales de adaptación son **onerosas, consumen tiempo y son propensas a la inyección involuntaria de errores**. La RA4SaS supera esto al proporcionar un **proceso automatizado** para la adaptación en _runtime_ y la generación de código, lo que asegura que el código generado está **libre de fallas** (_fault free_).
2. **La Abstracción por Reflexión (Metamodelo) Permite la Adaptación No Intrusiva y de Alto Nivel:** El éxito de la adaptación en _runtime_ se fundamenta en el uso de la **reflexión** para el "desensamblaje" de entidades y su representación en un **metamodelo**. Esto permite que los cambios estructurales o de comportamiento se realicen a un **alto nivel de abstracción (DSL)**, sin que los ingenieros necesiten poseer conocimiento específico de manipulación de código máquina, y sin la percepción de los _stakeholders_.
3. **El Soporte Integral (Diseño + Runtime) Unifica el Desarrollo de SaS:** La validez de la RA se basa en que **cubre las dos fases esenciales del desarrollo de SaS** (diseño y _runtime_) mediante una arquitectura unificada. La introducción de **DSLModeler4SaS** y **eLanguage** permite a los desarrolladores enfocarse en el diseño y las decisiones arquitectónicas, mientras que los nuevos módulos (como el de **Persistencia** basado en JPA) aseguran que la arquitectura se integre con las prácticas de desarrollo existentes, suavizando la curva de aprendizaje.

---

### Valor del Paper

El valor del artículo **"A Reference Architecture Based on Reflection for Self-Adaptive Software: A Second Release"** es significativo para la comunidad de Ingeniería de _Software_ y Arquitectura:

- **Pionero en la Arquitectura de Referencia Dual:** Según el conocimiento de los autores, RA4SaS fue la **primera arquitectura de referencia que abarca las dos actividades principales** (diseño de la entidad y adaptación en _runtime_) simultáneamente. Esto proporciona un marco holístico que guía todo el ciclo de vida del desarrollo de SaS.
- **Innovación Metodológica (DSL/Texto-a-Texto):** La introducción de la herramienta **DSLModeler4SaS** junto con el DSL **eLanguage** y el enfoque **texto-a-texto** es una contribución importante. Esta estrategia minimiza la carga cognitiva de aprender a desarrollar este tipo de _software_ y automatiza tareas repetitivas.
- **Base para la Reutilización y la Evolución del Conocimiento:** El valor se amplía al señalar que la RA4SaS ya ha servido como base para el diseño de arquitecturas en dominios vecinos (como **RA4Self-MobApps** para aplicaciones móviles y **RA4Self-CPS** para sistemas ciberfísicos). Esto demuestra que la RA4SaS facilita la transferencia y reutilización sistemática de conocimiento arquitectónico y mejores prácticas en la evolución del dominio SaS.
- **Robustez y Mantenimiento de Estado:** El valor práctico del sistema se refuerza por su capacidad para **preservar el estado de ejecución actual** de las entidades durante el proceso de adaptación, garantizando que las modificaciones se realicen de manera transparente y sin interrumpir las operaciones del sistema para sus _stakeholders_.
