#CitaLatex 
@techreport{ibm2006autonomic,
  title = {Autonomic Computing: An Architectural Blueprint for Autonomic Computing},
  author = {{IBM Corporation}},
  institution = {IBM},
  year = {2006},
  month = {jun},
  edition = {4},
  type = {White Paper}
}
Basado en el paper [[(IBM) An architectural blueprint for autonomic computing.pdf]]


El documento presenta un plan arquitectónico para la computación autonómica, un enfoque diseñado para gestionar la creciente complejidad de los entornos de Tecnologías de la Información (TI). A continuación, se detallan sus ideas fundamentales:

### 1. El Problema: La Crisis de la Complejidad en TI

El punto de partida es que los sistemas de TI modernos se han vuelto tan complejos que su gestión manual es cada vez más difícil, costosa y propensa a errores. La complejidad de los componentes y sus interrelaciones, junto con las cargas de trabajo impredecibles, se ha convertido en una barrera para el progreso. El objetivo de la computación autonómica es **reducir drásticamente esta complejidad y el costo asociado**, permitiendo que los sistemas se gestionen a sí mismos bajo la guía de alto nivel de los humanos.

### 2. El Concepto Central: Computación Autonómica

La computación autonómica se inspira en el sistema nervioso autónomo del cuerpo humano, que gestiona funciones vitales sin un esfuerzo consciente. El lema es **"usar la tecnología para gestionar la tecnología"**.

- **Autogestión basada en políticas**: A diferencia de las funciones involuntarias del cuerpo, los sistemas autonómicos realizan tareas que los profesionales de TI delegan a la tecnología a través de políticas adaptables, en lugar de procedimientos codificados.
- **No es inteligencia artificial general**: Este enfoque no busca replicar la inteligencia humana, sino que es una **evolución de principios bien establecidos** de la computación distribuida y la gestión de sistemas.

### 3. La Arquitectura Autonómica y sus Componentes

El documento propone una arquitectura basada en bloques de construcción que se pueden componer para formar sistemas autogestionables. Estos bloques se conectan mediante un Bus de Servicios Empresariales (Enterprise Service Bus). Los componentes clave son:

- **Gestor Autonómico (Autonomic Manager)**: Es el cerebro del sistema. Implementa un **bucle de control inteligente** para automatizar una función de gestión. Este bucle consta de cuatro partes:
    1. **Monitorizar**: Recopila datos de los recursos gestionados.
    2. **Analizar**: Modela situaciones complejas y aprende sobre el entorno para predecir el futuro.
    3. **Planificar**: Crea las acciones necesarias para alcanzar los objetivos, basándose en políticas.
    4. **Ejecutar**: Controla la ejecución del plan para cambiar el comportamiento del recurso.
- **Punto Final de Gestionabilidad (Manageability Endpoint)**: Es la interfaz estándar a través de la cual un gestor autonómico se comunica con un recurso (hardware o software) para monitorizarlo (sensores) y controlarlo (efectores).
- **Fuente de Conocimiento (Knowledge Source)**: Repositorios (como bases de datos o registros) que almacenan y comparten datos de gestión como políticas, topologías, métricas y síntomas entre los gestores autonómicos. En entornos ITSM, la Base de Datos de Gestión de la Configuración (CMDB) actúa como una fuente de conocimiento clave.
- **Gestor Manual (Manual Manager)**: Es la interfaz de usuario (consola) que permite a un profesional de TI interactuar con el sistema, orquestar gestores autonómicos y delegarles tareas.

### 4. Características de los Sistemas Autogestionables

Los sistemas y recursos diseñados bajo esta arquitectura deben exhibir cuatro comportamientos clave:

- **Autoconfiguración**: Adaptarse dinámicamente a los cambios del entorno.
- **Autorreparación**: Descubrir, diagnosticar y actuar para prevenir interrupciones.
- **Autooptimización**: Ajustar recursos y equilibrar cargas de trabajo para maximizar su uso.
- **Autoprotección**: Anticipar, detectar y protegerse contra amenazas.

### 5. Aplicaciones Prácticas

El documento ilustra cómo se aplica esta arquitectura en dos áreas principales:

1. **Recursos Autogestionables**: Componentes individuales (como una base de datos o un servidor) que gestionan su propio comportamiento, se configuran, reparan y optimizan a sí mismos localmente siempre que sea posible. Estos recursos se componen para formar sistemas más grandes, también autogestionables.
2. **Gestión de Servicios de TI (ITSM)**: Se utiliza la computación autonómica para **automatizar tareas dentro de los procesos de TI** definidos por buenas prácticas como ITIL. Esto ayuda a integrar los "silos" de TI (servidores, redes, aplicaciones, etc.) y a reducir la complejidad de procesos como la gestión de incidentes o cambios.

### 6. Adopción Evolutiva

La transición hacia un entorno totalmente autonómico es un proceso evolutivo. El **Modelo de Adopción de la Computación Autonómica** describe esta evolución en tres dimensiones:

- **Nivel de automatización**: Desde la gestión manual hasta un bucle cerrado que se alinea con las prioridades del negocio.
- **Alcance del control**: Desde la gestión de un subcomponente hasta un sistema de negocio completo.
- **Flujo de servicios**: La automatización de tareas en diferentes procesos de gestión de TI, como la gestión de cambios o incidentes.

### 7. La Importancia de los Estándares Abiertos

Dado que los entornos de TI son heterogéneos y provienen de múltiples proveedores, **los estándares abiertos son fundamentales** para que los diferentes componentes puedan interoperar y colaborar. El documento destaca estándares clave como **WSDM** (Web Services Distributed Management), **SDD** (Solution Deployment Descriptor) y **CIM-SPL** (CIM-Simplified Policy Language).