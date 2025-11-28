#CitaLatex 
@INPROCEEDINGS{FedasyukDmytro2022Methodofmodification,
  author={Fedasyuk, Dmytro and Lutsyk, Illia},
  booktitle={2022 IEEE 16th International Conference on Advanced Trends in Radioelectronics, Telecommunications and Computer Engineering (TCSET)}, 
  title={Method of modification of self-adaptive software systems based on ontology}, 
  year={2022},
  volume={},
  number={},
  pages={530-533},
  abstract={The approaches and methods of implementing self-adaptive software systems have been analyzed. Based on the assessment of the scientific problem, an ontological model of self-adaptive systems has been designed. The constructed model allows to take into account specifics of the subject area during system adaptation. The method of modification of functional characteristics and graphic interface of self-adaptive systems based on ontology is proposed. The developed method allows to generate personalized settings with the possibility of further adapting the system based on the information about user needs, new requirements, and the runtime environment. The use of the ontological model and the adaptation method have been analyzed, and the directions for their improvement have been determined.},
  keywords={Graphics;Couplings;Adaptation models;Runtime environment;Conferences;Semantics;Ontologies;ontological model;self-adaptive software;adaptation process;modification of system components},
  doi={10.1109/TCSET55632.2022.9766856},
  ISSN={},
  month={Feb},}

Referencia del archivo original: `(Dmytro Fedasyuk) Method of modification of self-adaptive software systems based on ontology.pdf` [[(Dmytro Fedasyuk) Method of modification of self-adaptive software systems based on ontology.pdf]]

El documento seleccionado es el artículo **"Method of modification of self-adaptive software systems based on ontology"** (Método de modificación de sistemas de _software_ auto-adaptativos basado en ontología), escrito por Dmytro Fedasyuk e Illia Lutsyk.

El artículo aborda la complejidad de la modificación de funcionalidad en sistemas de _software_ después de la implementación y propone una solución basada en el uso de modelos ontológicos para la auto-adaptación dinámica.

A continuación, se presenta un resumen completo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Problema y Motivación:** El desarrollo de _software_ es un proceso complejo y una dificultad clave es la **modificación de la funcionalidad** después de la implementación. Agregar nuevas características es un proceso intensivo en recursos que requiere pasos de redesarrollo y la integración en el sistema existente, lo que plantea un problema con la planificación efectiva y el uso de recursos. Adaptar un sistema existente a nuevos requisitos a menudo requiere la participación de expertos en la materia que no son especialistas en ingeniería de _software_.

Aunque los sistemas adaptativos y auto-adaptativos son soluciones viables, muchos enfoques existentes no permiten la modificación sin una **reconfiguración estática** de todo el sistema. La diferencia clave es que los **sistemas auto-adaptativos** pueden **analizar independientemente las características** y cambiar su comportamiento basándose en una evaluación de la eficiencia o productividad.

**2. Solución Propuesta (Modelo Ontológico):** La solución propuesta se centra en crear un método para implementar sistemas de _software_ auto-adaptativos que permitan cambiar dinámicamente las características funcionales y la interfaz gráfica (UI) según el **entorno de ejecución y las necesidades del usuario**.

Para superar las limitaciones de los enfoques tradicionales, que no ofrecen una presentación completa de los conceptos del área temática, los autores proponen el uso de un **modelo ontológico de dominio**. Un modelo ontológico generalizado permite **unificar el proceso de adaptación** para sistemas de _software_ con diferentes áreas temáticas.

**3. El Modelo Ontológico Diseñado:** El modelo ontológico formalizado se define como una combinación de cinco conjuntos ($C_{sys}, R_{sys}, Rl_{sys}, Ind_{sys}, Prop_{sys}$), que incluyen un conjunto de conceptos, relaciones, reglas semánticas, individuos y propiedades.

El modelo usa seis tipos de relaciones clave para definir las dependencias:

- **«has»:** Relación entre la clase base y la subclase (ej., "Functional component" y "Module").
- **«uses»:** Determina qué versión del sistema está utilizando el usuario.
- **«contains»:** Permite seleccionar varios componentes entre el "Software system" y el "Software component".
- **«has_impact_on»:** Identifica el impacto de los nuevos requisitos en los componentes de _software_.
- **«has_requirements»:** Relación entre el "User" y el "Requirement".
- **«uses_UI_elements»:** Identifica la relación entre las características funcionales y los elementos gráficos.

Esta estructura ontológica permite que el sistema considere **nuevos cambios en los requisitos y realice modificaciones dinámicas**.

**4. El Método de Modificación Basado en Ontología:** El método propuesto para modificar los componentes del sistema se basa en un esquema conceptual que involucra al **"User"** y al **"Active Device"** (dispositivo activo).

El método consta de los siguientes pasos:

1. **Procesamiento de información** recibida del usuario (identificación y verificación).
2. **Sincronización de datos** entre la base de datos y la base de conocimiento ontológico.
3. **Generación de configuraciones (_settings_)**: En esta etapa se utiliza el **razonador semántico** (_semantic reasoner_) para elaborar las reglas semánticas definidas en el modelo ontológico, formando las configuraciones necesarias.
4. **Adaptación del sistema de _software_**, que incluye la modificación de características funcionales y la interfaz gráfica (UI).

El modelo ontológico se utiliza en las etapas de sincronización de datos y generación de configuraciones para garantizar que la base de conocimiento se actualice correctamente y para lanzar la lógica de adaptación.

**5. Conclusiones y Trabajo Futuro:** El modelo ontológico diseñado permite considerar las dependencias entre los nuevos requisitos y los componentes de _software_ afectados. El método propuesto genera **configuraciones personalizadas** basadas en las necesidades del usuario, los nuevos requisitos y el entorno de tiempo de ejecución. El uso de este método ayuda a **evitar el alto acoplamiento** (_high coupling_) entre los módulos del sistema y los objetos del área temática.

Sin embargo, en futuras investigaciones se planea mejorar el método de procesamiento de reglas semánticas para garantizar la universalidad de la adaptación, ya que la solución actual procesa todas las instancias disponibles, lo que puede aumentar el tiempo de procesamiento. También se planea mejorar el mecanismo para cambiar la funcionalidad para permitir la adaptación del _software_ para diferentes plataformas.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez y utilidad del método propuesto se fundamentan en las siguientes ideas clave:

1. **La Universalidad Requiere la Desvinculación de la Materia (_Subject Area_):** La conclusión de que el método es universal se basa en la premisa de que el modelo ontológico mejorado puede usarse **independientemente del área temática**. Esto se logra manteniendo un **acoplamiento débil** (_weak coupling_) donde las dependencias estructurales principales existen solo entre los requisitos y los componentes de _software_ correspondientes.
2. **El ODD Ontológico Permite la Adaptación Dinámica Sin Recompilación:** La conclusión de que se evitan los problemas de los métodos estáticos se fundamenta en que el uso de modelos ontológicos y conceptuales proporciona la capacidad de realizar cambios **sin necesidad de recompilación ni redistribución** (_recompilation and redeployment_) del sistema.
3. **La Personalización y la Integración del Contexto Mejoran el Resultado:** La conclusión sobre la efectividad del método se basa en que este genera **configuraciones personalizadas** al tener en cuenta la información sobre el **usuario individual** y el **dispositivo activo** (_active device_) en combinación con los requisitos de _software_.

---

### Valor del Paper

El valor del artículo "Method of modification of self-adaptive software systems based on ontology" es alto, ya que aborda un problema crítico en la Ingeniería de _Software_ (la modificación post-implementación) con una solución metodológica y arquitectónica robusta:

- **Solución al Problema de la Universalidad:** El _paper_ contribuye al resolver la limitación de que los métodos de implementación de sistemas auto-adaptativos disponibles no son universales y dependen de un área temática particular. La propuesta de un modelo ontológico generalizado y el método resultante ofrecen una solución para superar esta limitación.
- **Integración de Ontologías y Razón Semántica:** El valor metodológico reside en el uso de un **modelo ontológico formalizado** y el **razonador semántico** para definir y procesar las reglas de adaptación dinámicamente. Esto permite generar configuraciones nuevas de _software_.
- **Guía para el Diseño de Sistemas Evolutivos:** Al enfocarse en la **modificación dinámica de características funcionales y de la interfaz gráfica**, el trabajo proporciona una guía clara para los arquitectos que buscan crear sistemas auto-adaptativos que puedan ajustarse continuamente a los cambios de requisitos y al contexto operativo.