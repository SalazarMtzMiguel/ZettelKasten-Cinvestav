#CitaLatex 
@INPROCEEDINGS{Roopa2017Self-testframework,
  author={Roopa, Y. Mohana and Babu, M. Ramesh},
  booktitle={2017 International conference of Electronics, Communication and Aerospace Technology (ICECA)}, 
  title={Self-test framework for self-adaptive software architecture}, 
  year={2017},
  volume={2},
  number={},
  pages={669-674},
  keywords={Adaptive systems;Built-in self-test;Adaptation models;Software;Runtime;Aerospace electronics;self adaptive systems;component testing;Validation;safe adaptation},
  doi={10.1109/ICECA.2017.8212749}}


Referencia del archivo original: `(Y. Mohana Roopa) Self-test framework for self-adaptive software architecture.pdf` [[(Y. Mohana Roopa) Self-test framework for self-adaptive software architecture.pdf]]

El documento seleccionado para el análisis es el artículo **"Self-Test framework for Self- Adaptive Software Architecture"** (Marco de autoevaluación para la Arquitectura de _Software_ Autoadaptativo), escrito por Y. Mohana Roopa y Dr. M. Ramesh Babu.

Este trabajo aborda la necesidad crítica de **validación dinámica y pruebas en tiempo de ejecución (_runtime_)** en sistemas de _software_ autoadaptativos (SAS) para evitar altos costos de fallas sistémicas, dado que las características autoadaptativas invocan cambios dinámicos en la estructura y el comportamiento de los componentes.

### Resumen Completo del Documento

**1. Problema Central y Motivación:** A medida que la industria de TI avanza hacia sistemas que se gestionan a sí mismos (como el modelo de computación autonómica de IBM), estos sistemas se vuelven cada vez más grandes y complejos, lo que exige trasladar la carga de tareas de soporte (como la gestión de fallas) de los humanos a la nueva tecnología. Sin embargo, la investigación en SAS ha avanzado en muchas áreas, pero existe una **falta de desarrollo en el área de pruebas de componentes de sistemas autoadaptativos en tiempo de ejecución**. Los cambios dinámicos y las reconfiguraciones resultantes de la autoadaptación deben ser validados contra los requisitos del sistema, lo cual es insuficiente para determinar si el comportamiento del sistema todavía se ajusta a los requisitos funcionales y no funcionales generales después de las modificaciones.

**2. Solución Propuesta: El Marco de Autoevaluación (_Self-Testing Framework_):** Los autores proponen un marco que **valida dinámicamente las modificaciones** en SAS, extendiendo la arquitectura existente para incluir la autoevaluación como una característica implícita. La metodología del marco se basa en la validación automática de modificaciones en tiempo de ejecución y la integración de las actividades de prueba en el flujo de trabajo de los gestores autoadaptativos (AMs).

**3. Arquitectura y Componentes Clave (Test Managers - TMs):** El marco de autoevaluación introduce **Gestores de Pruebas (Test Managers - TMs)** que interactúan con los AMs para validar dinámicamente las solicitudes de cambio. Los TMs extienden el concepto de gestores autonómicos a las actividades de prueba.

- **Tipos de TMs:** Al igual que los AMs, los TMs pueden ser de **Punto de Contacto (Touchpoint TMs)** u **Orquestadores (Orchestrating TMs)**. Los TMs Orquestadores coordinan actividades de prueba de alto nivel y gestionan a los TMs de Punto de Contacto, mientras que estos últimos realizan pruebas de bajo nivel sobre los recursos gestionados.
- **Funciones de los TMs:** Los TMs son responsables de realizar **pruebas de regresión**, evaluar resultados y cobertura de pruebas con respecto a una **política de validación de alto nivel**, y preservar un **repositorio de pruebas** para almacenar casos de prueba, registros y políticas.

**4. Arquitectura Interna del Touchpoint TM (MAPE para Pruebas):** Los componentes arquitectónicos de los Touchpoint TMs siguen las funciones **MAPE** (Monitor, Analyze, Plan, Execute) en el contexto del proceso de prueba:

- **Test Monitor:** Recupera información estructural del cambio aplicado, recolecta resultados de pruebas y cobertura, y sondea el recurso para asegurar que esté en un estado apropiado para comenzar la validación.
- **Test Analyzer:** Realiza análisis para determinar casos de prueba de regresión aplicables, desarrolla nuevos casos de prueba, y evalúa los resultados de la prueba y la cobertura contra la política de validación.
- **Test Planner:** Crea un plan de prueba que incluye el conjunto de pruebas a ejecutar y un programa de pruebas.
- **Test Executer:** Aplica los casos de prueba al recurso gestionado.
- **Test Knowledge:** Almacena políticas de validación (que incluyen criterios de cobertura de prueba, estructura previa, especificación actual) y sirve como repositorio central de casos de prueba y resultados.

**5. Estrategias de Validación Propuestas:** El marco proporciona dos técnicas para la validación, seleccionables en función del coste de sobrecarga del sistema y la viabilidad de uso:

- **1. Adaptación Segura con Validación (_Safe adaptation with validation_):** Esta estrategia valida los cambios **directamente en el recurso gestionado** como parte del proceso de adaptación segura. Se utiliza cuando es demasiado costoso, impráctico o imposible duplicar los recursos gestionados. El coste de sobrecarga es el tiempo que el componente permanece bloqueado esperando que finalice la validación. El flujo de trabajo implica que un AM Orquestador solicita a un TM Orquestador que configure la validación, el Touchpoint AM realiza la adaptación segura (manteniendo el recurso bloqueado) y el Touchpoint TM ejecuta las pruebas.
- **2. Replicación con Validación (_Replication with validation_):** Esta estrategia requiere **crear y/o mantener copias (réplicas)** del recurso gestionado. Las solicitudes de cambio se aplican y prueban primero en las copias antes de ejecutarse en el recurso real. La principal ventaja es que la **validación puede ocurrir sin detener la operación normal del sistema**. La desventaja es el alto coste de sobrecarga asociado a la generación y mantenimiento de las réplicas.

**6. Validación Experimental:** El enfoque fue validado desarrollando un prototipo de una aplicación Java autoadaptativa: un **contenedor autonómico** que implementa un _adaptive repository_ (ej., una pila). El estudio simuló escenarios de solicitud de cambio de reconfiguración correcta e incorrecta de la capacidad de la pila.

- **Resultado Favorable:** En el escenario de reconfiguración incorrecta (simulado mediante _mutation testing_), la validación **falló** (produjo dos fallos en los casos de prueba), lo que habría **prevenido la implementación de un cambio potencialmente dañino** en la pila.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de integrar la autoevaluación en los SAS y la viabilidad del marco propuesto se fundamentan en las siguientes ideas clave:

1. **La Autoevaluación Debe Ser una Característica Implícita e Integrada en la Arquitectura de los SAS para Garantizar la Seguridad:** La conclusión fundamental se basa en la premisa de que los cambios dinámicos introducidos por la autoadaptación se producen en un **entorno impredecible**. La contribución del _paper_ es la **extensión de la arquitectura SAS** (el modelo autonómico de IBM) para integrar los **Gestores de Pruebas (TMs)**. Esta integración permite que el sistema valide automáticamente las modificaciones en tiempo de ejecución antes de su aceptación definitiva, asegurando la **adaptación segura**.
2. **La Capacidad de Elegir Entre Validación en Vivo o en Réplica Permite la Gestión Adaptativa de la Sobrecarga del Sistema:** La conclusión de la flexibilidad se fundamenta en la provisión de las dos estrategias de validación: **Adaptación Segura con Validación** y **Replicación con Validación**. Esta dualidad permite a los administradores **especificar qué método aplicar para recursos individuales** basándose en factores como la naturaleza del recurso, la configuración del sistema y los requisitos de tiempo/espacio, gestionando así el costo de sobrecarga.
3. **Los TMs deben replicar el Bucle MAPE-K para que las Pruebas Sean Dinámicas, Adaptativas y Conscientemente Evaluadas:** La viabilidad del marco se basa en que la arquitectura de los Touchpoint TMs (el núcleo de las pruebas) se compone de un circuito cerrado de control **coherente con la estructura MAPE**. Esto asegura que la evaluación no sea estática, sino que los componentes (Monitor, Analyzer, Planner, Executer) usen la **Política de Validación (Knowledge)** para realizar pruebas de regresión, analizar la cobertura (ej., 75% rama, 80% declaración), y determinar si se debe aceptar o rechazar el cambio.

---

### Valor del Paper

El artículo **"Self-Test framework for Self- Adaptive Software Architecture"** tiene un valor sustancial y práctico para la Ingeniería de _Software_ Autonómico:

- **Aborda una Brecha Crítica de la Investigación:** El valor más alto es que aborda la **falta de desarrollo** en las pruebas de componentes en tiempo de ejecución, una limitación reconocida en el avance de los sistemas autoadaptativos.
- **Extensión Arquitectónica Clave:** Proporciona una **extensión arquitectónica formal** (la introducción de los TMs) al modelo de Autonomic Computing de IBM, que es el modelo de referencia para SAS.
- **Definición de Estrategias de Despliegue:** Define dos estrategias de validación claramente diferenciadas (_Safe adaptation_ vs. _Replication_), permitiendo una **toma de decisiones consciente del costo** para el despliegue de sistemas de autoevaluación.
- **Marco Riguroso y Validado:** El desarrollo de un prototipo y la prueba de mutación para simular escenarios de cambio incorrecto (demostrando que la validación fallaría y prevendría el cambio dañino) proporcionan una **validación empírica y favorable** de la efectividad del marco conceptual.

El marco de autoevaluación es como instalar un **mecanismo de control de calidad automático y en tiempo real** en una fábrica de robots autogestionada. Cuando un robot decide reconfigurarse (adaptación), el marco de autoevaluación interviene antes de que el cambio se haga permanente. Si el sistema usa la estrategia de replicación, es como si hiciera el cambio en un **gemelo digital** para ver si funciona sin detener la línea de producción. Si el cambio es defectuoso, la autoevaluación lo detecta y lo rechaza, evitando que el robot real se dañe o cause un fallo en cascada.
