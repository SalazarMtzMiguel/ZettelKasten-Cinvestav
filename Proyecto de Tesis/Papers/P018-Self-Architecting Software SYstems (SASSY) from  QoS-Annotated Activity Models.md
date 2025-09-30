#CitaLatex 
@INPROCEEDINGS{5068821,
	author={Malek, Sam and Esfahani, Naeem and Menasce, Daniel A. and Sousa, Joao P. and Gomaa, Hassan},
	booktitle={2009 ICSE Workshop on Principles of Engineering Service Oriented Systems}, 
	title={Self-Architecting Software SYstems (SASSY) from QoS-annotated activity models}, 
	year={2009},
	volume={},
	number={},
	pages={62-69},
	keywords={Software systems;Computer architecture;Service oriented architecture;Large-scale systems;Quality of service;Programming;Shape;Pervasive computing;Power system modeling;Computer science},
	doi={10.1109/PESOS.2009.5068821}}
	
Lectura basada en: [[(Sam Malek) Self-Architecting Software SYstems SASSY from QoS-annotated activity models.pdf]]


### Resumen del Paper: SASSY - Sistemas de Software de Auto-Arquitectura

El artículo presenta **SASSY (Self-Architecting Software SYstems)**, un marco de trabajo para **automatizar la generación de arquitecturas de software "óptimas"** para sistemas orientados a servicios (SOA). La principal innovación es que el proceso parte de requisitos funcionales y de Calidad de Servicio (QoS) definidos por un **experto del dominio** (no un ingeniero de software) usando un lenguaje de modelado visual y de alto nivel.

---

### 1. El Problema: Complejidad en Sistemas Pervasivos y Dinámicos

El diseño de sistemas de software a gran escala, especialmente en dominios como la computación móvil y pervasiva (ej. respuesta a emergencias), enfrenta desafíos significativos:

- **Entornos impredecibles:** Estos sistemas son inherentemente dinámicos y deben adaptarse a condiciones de ejecución fluctuantes (ej. rendimiento de la red) y a cambios en los propios requisitos funcionales, que a menudo se conocen en tiempo de ejecución.
- **Complejidad para los desarrolladores:** Los enfoques tradicionales para el diseño de software dependen en gran medida del razonamiento humano y la intervención manual, lo que los hace inadecuados para estos entornos tan dinámicos.
- **Brecha entre el dominio y la tecnología:** La mayoría de las herramientas y lenguajes de modelado están dirigidos a ingenieros de software con altos conocimientos técnicos, lo que dificulta su uso por parte de expertos del dominio, quienes realmente entienden las necesidades del negocio.

### 2. La Solución: El Marco de Trabajo SASSY

SASSY aborda estos problemas proponiendo un enfoque que automatiza la composición, el análisis y la adaptación de la arquitectura del software. El proceso se basa en la metodología de **Arquitectura Dirigida por Modelos (MDA)**.

El flujo de trabajo de SASSY es el siguiente (ver Figura 1 del paper):

1. **Un experto del dominio especifica los requisitos** usando un lenguaje visual llamado **Service Activity Schemas (SAS)**.
2. A partir de este modelo de requisitos, SASSY **genera automáticamente una arquitectura base** llamada **System Service Architecture (SSA)**.
3. El sistema busca proveedores de servicios que puedan cumplir con los requisitos. Si los objetivos de QoS se cumplen, la arquitectura se implementa.
4. **Si los objetivos de QoS no se cumplen**, SASSY aplica **patrones de arquitectura** de forma iterativa para generar arquitecturas alternativas que sí puedan satisfacerlos.

### 3. Ideas y Conceptos Clave

#### **a. Requisitos Definidos por el Dominio (SAS y SSS)**

- **Service Activity Schemas (SAS):** Es el lenguaje de modelado de requisitos, basado en una versión simplificada y extendida de **BPMN (Business Process Modeling Notation)**. Se eligió BPMN porque está diseñado para ser usado por expertos de negocio en lugar de ingenieros. El SAS modela el flujo de trabajo como una serie de actividades, eventos y compuertas lógicas.
- **Service Sequence Scenarios (SSS):** Para especificar los requisitos no funcionales, el experto del dominio puede seleccionar secuencias específicas de actividades dentro del SAS (llamadas SSS) y asociarles objetivos de QoS concretos.
    - **Ejemplo:** En un escenario de respuesta a incendios, se puede seleccionar la secuencia "detectar humo -> activar rociadores" y asignarle un requisito de disponibilidad del 99%.
- **Conciencia de la Ubicación:** El lenguaje SAS se extiende para soportar la **descubierta de servicios con restricciones geográficas**, algo crucial en sistemas pervasivos (ej. encontrar los vehículos de emergencia más cercanos a un distrito específico).

#### **b. Generación Automática de la Arquitectura (SSA)**

- El enfoque se basa en **MDA** para transformar el modelo de requisitos (que es independiente de la computación o CIM) en un modelo de arquitectura (independiente de la plataforma o PIM).
- La arquitectura generada, **System Service Architecture (SSA)**, se modela utilizando **Lenguajes de Descripción de Arquitectura (ADLs)**:
    - **Vista Estructural:** Se usa **xADL** para representar la vista de componentes y conectores, donde los servicios se modelan como componentes.
    - **Vista de Comportamiento:** Se usa **FSP (Finite State Processes)** para generar la lógica del "coordinador", es decir, el comportamiento que orquesta la interacción entre los servicios, derivado directamente del flujo de control del modelo SAS.

#### **c. Refinamiento de la Arquitectura Mediante Patrones para Cumplir QoS**

Esta es una de las contribuciones más importantes. Cuando la simple selección de proveedores de servicios no es suficiente para cumplir con los objetivos de QoS, **SASSY modifica la arquitectura aplicando patrones conocidos**.

- **Ejemplo 1 (Patrón de Replicación para Disponibilidad):** Si el requisito es una disponibilidad del 99% pero solo se encuentran dos proveedores con un 90% cada uno, SASSY aplica el patrón de replicación. Genera una arquitectura que utiliza un conector tolerante a fallos (`FaultTolerant connector`) que gestiona ambos servicios, logrando así la disponibilidad deseada.
- **Ejemplo 2 (Patrón Mediador para Seguridad):** Si se requiere comunicación encriptada con un servicio que no la soporta, SASSY aplica el patrón mediador. Inserta un conector de canal seguro (`SecureChannel connector`) y un servicio de cifrado (`Cipher`) entre el coordinador y el servicio final para añadir la seguridad necesaria.

#### **d. Soporte para Adaptación y Evolución**

El marco está diseñado para ser dinámico. Si en tiempo de ejecución un servicio no cumple su contrato de QoS, los monitores pueden disparar el proceso de SASSY para generar y desplegar una nueva arquitectura adaptada. De igual manera, si los requisitos cambian (evolución), el experto modifica el modelo SAS y SASSY adapta la arquitectura existente.

### Conclusión:

Este paper sería **muy útil para tu tesis** si tu investigación se enfoca en alguna de estas áreas:

- **Ingeniería de Software Dirigida por Modelos (MDE/MDA):** Es un ejemplo práctico de cómo transformar modelos de requisitos de alto nivel en artefactos de arquitectura concretos.
- **Sistemas Autoadaptativos o de Auto-Gestión:** SASSY es un sistema de "auto-arquitectura" que automatiza la adaptación y evolución en respuesta a cambios de QoS o requisitos.
- **Ingeniería de Software Basada en Búsqueda (SBSE):** Aunque no lo menciona explícitamente como SBSE, el proceso de encontrar una arquitectura "óptima" y seleccionar servicios se alinea con los principios de esta área.
- **Arquitecturas Orientadas a Servicios (SOA) y Gestión de QoS:** El trabajo se centra en resolver problemas de composición y QoS en sistemas SOA del mundo real.
- **Uso de Patrones de Arquitectura para la Adaptación:** Demuestra un método sistemático para aplicar patrones de diseño como una estrategia de adaptación para cumplir con requisitos no funcionales.