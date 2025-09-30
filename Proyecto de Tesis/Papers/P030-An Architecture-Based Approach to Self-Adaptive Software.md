#CitaLatex 
@ARTICLE{769885,
  author={Oreizy, P. and Gorlick, M.M. and Taylor, R.N. and Heimhigner, D. and Johnson, G. and Medvidovic, N. and Quilici, A. and Rosenblum, D.S. and Wolf, A.L.},
  journal={IEEE Intelligent Systems and their Applications}, 
  title={An architecture-based approach to self-adaptive software}, 
  year={1999},
  volume={14},
  number={3},
  pages={54-62},
  keywords={Application software;Monitoring;Costs;Unmanned aerial vehicles;Sensor systems;Software systems;Runtime;Traffic control;Disaster management;Environmental management},
  doi={10.1109/5254.769885}}


Lectura badasa en [[(Peyman Oreizy) An Architecture-Based Approach to Self-Adaptative Software.pdf]]



### Resumen y Análisis Clave del Paper: "Un Enfoque Basado en la Arquitectura para el Software Autoadaptable"

Este es un documento fundamental que propone un **marco metodológico completo y basado en la arquitectura de software para construir sistemas que puedan adaptarse a sí mismos (self-adaptive software)** en tiempo de ejecución. En lugar de tratar la adaptación como una característica secundaria, los autores la posicionan como un principio de diseño central, argumentando que la **arquitectura de software** es el elemento clave para planificar, coordinar, monitorear e implementar adaptaciones de manera segura y consistente.

#### Ideas Clave del Documento

1. **Visión y Problema Central: La Necesidad de Software "Plástico"**
    
    - **El Problema:** La ingeniería de software tradicional no ha logrado crear aplicaciones que mantengan su "plasticidad" a lo largo de su ciclo de vida, es decir, que sean tan fáciles de modificar en el campo como en la fase de diseño.
    - **La Solución Propuesta:** El **software autoadaptable**, que modifica su propio comportamiento en respuesta a cambios en su entorno operativo (entradas del usuario, sensores, instrumentación del programa, etc.).
    - **Ejemplo Ilustrativo:** A lo largo del paper se utiliza el escenario de una flota de vehículos aéreos no tripulados (UAVs) que deben replanificar su misión de forma autónoma cuando surge una nueva amenaza, insertando dinámicamente nuevos componentes de software sin necesidad de reiniciar el sistema.
2. **El Rol Central de la Arquitectura de Software**
    
    - La contribución más importante del paper es argumentar que la adaptación debe gestionarse a nivel de la arquitectura del software.
    - Este enfoque cambia la perspectiva del código fuente a los **componentes de grano grueso y sus interconexiones (conectores)**.
    - La clave es la **estricta separación entre la computación (componentes) y la comunicación (conectores)**. Esto permite que la estructura de comunicación y los componentes computacionales de una aplicación puedan evolucionar de forma independiente, incluso mientras la aplicación se está ejecutando, lo cual es un mecanismo necesario para la autoadaptación.
3. **La Metodología de Doble Proceso: Adaptación y Evolución** El núcleo del marco propuesto es la interacción de dos procesos simultáneos, como se ilustra en la Figura 2 del documento:
    
    - **A. Gestión de la Adaptación (Adaptation Management): El Ciclo Estratégico**
        
        - Este es el proceso de alto nivel que decide **qué, cuándo y por qué** cambiar.
        - Funciona en un ciclo que puede ser totalmente autónomo o tener a un humano involucrado (_human-in-the-loop_).
        - Sus fases son:
            1. **Evaluar y Monitorear Observaciones:** Recopilar datos sobre el comportamiento de la aplicación y su entorno.
            2. **Planificar Cambios:** Aceptar las evaluaciones, definir una adaptación apropiada y construir un plan para ejecutarla.
            3. **Desplegar Descripciones de Cambio:** Enviar el plan de cambio (componentes, nuevos observadores, etc.) a la plataforma en ejecución.
    - **B. Gestión de la Evolución (Evolution Management): El Mecanismo de Cambio**
        
        - Este es el proceso de bajo nivel que se encarga de **cómo aplicar los cambios de forma segura y consistente**.
        - Opera directamente sobre un **modelo explícito de la arquitectura** que reside en la plataforma de implementación.
        - Su función principal es **mantener la consistencia y la integridad del sistema** durante la adaptación, vetando cualquier cambio que pueda dejar el sistema en un estado inconsistente o inseguro.
        - Un componente clave es el **Architecture Evolution Manager (AEM)**, que media todas las operaciones de cambio, previene la violación de restricciones arquitectónicas y asegura que el modelo y la implementación se mantengan sincronizados.
4. **Mecanismos para la Dinamicidad Arquitectónica: C2 y Weaves** El paper describe dos estilos arquitectónicos concretos que facilitan el cambio en tiempo de ejecución:
    
    - **Estilo C2:**
        
        - Compone sistemas como una **jerarquía de componentes concurrentes** conectados por enrutadores de mensajes.
        - Los componentes se comunican de forma **asíncrona** y solo son conscientes de los componentes que están "por encima" de ellos, lo que reduce drásticamente las dependencias y facilita añadir, eliminar o reorganizar componentes.
        - Está **optimizado para la flexibilidad de los componentes**.
    - **Estilo Weaves:**
        
        - Es una arquitectura centrada en el **flujo de objetos**, diseñada para aplicaciones con flujos de datos voluminosos y plazos en tiempo real.
        - Se basa en las **"leyes de la comunicación ciega"**: ningún componente conoce el origen de sus entradas ni el destino de sus salidas, lo que permite reconfigurar la red sobre la marcha.
        - Está **optimizado para conectores flexibles y de alto rendimiento**.
5. **Planificación como Aspecto Vital de la Autoadaptación**
    
    - El paper subraya que la planificación es crucial y la divide en dos tipos distintos:
        1. **Planificación de Observación (Observation Planning):** Determina qué observaciones son necesarias para decidir cuándo y dónde se requieren adaptaciones, considerando los costos de monitoreo.
        2. **Planificación de Adaptación (Adaptation Planning):** Determina exactamente qué adaptaciones realizar y cuándo, utilizando enfoques como marcos de solución predefinidos para reducir la complejidad computacional.

#### Utilidad para tu kTesis

Este documento es de gran valor, especialmente si tu tesis se centra en sistemas de software adaptativos, autónomos o en la intersección de la IA y la arquitectura de software.

- **Marco Teórico Sólido:** Proporciona un **marco conceptual robusto (Adaptation vs. Evolution Management)** que puedes usar para clasificar y analizar otras aproximaciones a la autoadaptación. Es una referencia clásica y muy citada.
- **Contexto Histórico y Fundacional:** Al ser un trabajo de 1999, establece las bases sobre las que se han construido muchos sistemas modernos. Te permite trazar la evolución de las ideas en el campo.
- **Enfoque en la Arquitectura:** A diferencia de otros papers que pueden centrarse solo en el algoritmo de IA, este enfatiza que la **estructura del software (su arquitectura)** es fundamental para permitir la adaptación. Esta perspectiva es crucial para construir sistemas del mundo real.
- **Ejemplos de Arquitecturas Dinámicas:** La descripción detallada de los estilos **C2 y Weaves** te ofrece ejemplos concretos de cómo diseñar sistemas para que sean modificables en tiempo de ejecución.
- **Identificación de Desafíos Clave:** Plantea problemas fundamentales que siguen siendo relevantes hoy en día: cómo garantizar la **consistencia y la seguridad** durante el cambio, cómo gestionar el costo del monitoreo y cómo planificar adaptaciones de manera eficiente.