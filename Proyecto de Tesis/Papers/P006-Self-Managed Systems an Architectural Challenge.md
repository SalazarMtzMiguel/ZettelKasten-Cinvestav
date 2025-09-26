#CitaLatex 
@article{kramer2007selfmanaged,
  title = {Self-Managed Systems: an Architectural Challenge},
  author = {Kramer, Jeff and Magee, Jeff},
  journal = {Journal of Software Engineering},
  year = {2007},
  volume = {12},
  number = {3},
  address = {Department of Computing, Imperial College London, SW7 2AZ, UK},
  abstract = {Self-management is put forward as one of the means...},
  publisher = {IEEE}
}
Basado en el paper [[(Kramer) Self-Managed_Systems_an_Architectural_Challenge.pdf]]


El documento presenta una visión para abordar la creciente complejidad y necesidad de adaptabilidad del software a través de los **sistemas autogestionables**, enfocándose específicamente en un **enfoque arquitectónico** como el medio más prometedor para lograrlo.

Las ideas clave se pueden resumir en los siguientes puntos:

### 1. El Concepto Central: Arquitecturas de Software Autogestionables

El objetivo es crear sistemas de software que puedan gestionarse a sí mismos con una mínima intervención humana explícita. La visión es que los componentes de software puedan **configurarse, adaptarse y repararse automáticamente** para cumplir con una especificación y responder a cambios en los requisitos o en el entorno operativo (como la disponibilidad de recursos o la aparición de fallos).

Una **arquitectura de software autogestionable** es aquella en la que los componentes configuran automáticamente sus interacciones para ser compatibles con una especificación arquitectónica general y así alcanzar los objetivos del sistema. Esto incluye no solo el comportamiento funcional, sino también propiedades no funcionales como el rendimiento, la fiabilidad y la seguridad.

### 2. La Justificación: ¿Por qué un Enfoque Arquitectónico?

Los autores sostienen que el nivel de la arquitectura de software es el más adecuado para abordar los desafíos de la autogestión por varias razones clave:

- **Generalidad**: Los principios arquitectónicos se pueden aplicar a una amplia gama de dominios.
- **Nivel de Abstracción**: La arquitectura permite describir cambios dinámicos (como la composición de componentes y sus conexiones) a un nivel más alto que el del código o los algoritmos.
- **Escalabilidad**: Las arquitecturas soportan la composición jerárquica, lo que facilita la construcción de sistemas complejos a gran escala.
- **Base Sólida**: Se apoya en el extenso trabajo existente sobre lenguajes de descripción de arquitecturas (ADLs) y técnicas de análisis formal.

### 3. El Modelo de Referencia: Una Arquitectura de Tres Capas Inspirada en la Robótica

Para estructurar el problema, el documento propone un **modelo de referencia conceptual de tres capas**, inspirado en las arquitecturas modernas de la robótica, que superan el modelo simple de "sentir-planificar-actuar" (sense-plan-act). La separación de funciones en capas se basa en la escala de tiempo de las acciones: desde las reacciones más inmediatas en la capa inferior hasta las deliberaciones más lentas en la capa superior.

Las tres capas son:

- **1. Capa de Control de Componentes (Component Control)**:
    
    - **Función**: Es la capa más baja y contiene los **componentes de software que realizan la función de la aplicación**. Incluye mecanismos para monitorizar el estado de los componentes, reportarlo a las capas superiores y ejecutar operaciones de cambio (crear, eliminar, conectar componentes). También puede incluir bucles de retroalimentación para autoajustes básicos, como cambiar parámetros operativos.
    - **Reto Principal**: Garantizar que los cambios se realicen de forma segura, **preservando la consistencia de la aplicación y evitando comportamientos transitorios indeseables** (como picos de rendimiento o pérdida de estado).
- **2. Capa de Gestión del Cambio (Change Management)**:
    
    - **Función**: Es la capa intermedia y actúa como un ejecutor de planes reactivos. Su función es **ejecutar "planes precompilados" o tácticas** en respuesta a cambios de estado predecibles reportados por la capa inferior (por ejemplo, reemplazar un componente que ha fallado por uno de respaldo). Está diseñada para responder rápidamente porque los planes ya existen. Si se encuentra con una situación para la que no tiene un plan, solicita ayuda a la capa superior.
    - **Reto Principal**: La **distribución y la descentralización**. Se necesitan algoritmos que puedan funcionar en entornos distribuidos, tolerando vistas parciales o inconsistentes del estado del sistema y aun así converger hacia una configuración estable y correcta sin violar las restricciones de seguridad.
- **3. Capa de Gestión de Objetivos (Goal Management)**:
    
    - **Función**: Es la capa superior y deliberativa. Su trabajo es **tomar objetivos de alto nivel y el estado actual del sistema para generar nuevos planes de cambio** para la capa intermedia. Se activa cuando la capa de cambio no tiene un plan para una situación nueva o cuando se introducen nuevos objetivos en el sistema (por ejemplo, cambiar una política de redundancia).
    - **Reto Principal**: La **planificación en línea (on-line planning)**. Esto implica especificar formalmente los objetivos del sistema de una manera que sea comprensible para las máquinas y, lo que es más difícil, generar planes de acción de forma automática y eficiente para alcanzar dichos objetivos, un problema que a menudo es computacionalmente intratable.

En resumen, el documento define la autogestión como un problema de arquitectura de software y propone un modelo de tres capas (control, cambio, objetivos) para organizar y abordar los complejos desafíos de investigación que implica la creación de sistemas verdaderamente autónomos, adaptables y robustos.