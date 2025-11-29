#CitaLatex 
@article{Garces2020ArchitecturalSolutions,
  title = {Architectural Solutions for Self-Adaptive Systems},
  volume = {53},
  ISSN = {1558-0814},
  url = {http://dx.doi.org/10.1109/MC.2020.3017574},
  DOI = {10.1109/mc.2020.3017574},
  number = {12},
  journal = {Computer},
  publisher = {Institute of Electrical and Electronics Engineers (IEEE)},
  author = {Garces,  Lina and Martinez-Fernandez,  Silverio and Graciano Neto,  Valdemar Vicente and Nakagawa,  Elisa Yumi},
  year = {2020},
  month = dec,
  pages = {47–59}
}

Referencia del archivo original: `(Lina Garcés) Architectural Solutions for Self-Adaptive Systems.pdf` [[(Lina Garcés) Architectural Solutions for Self-Adaptive Systems.pdf]]

El documento seleccionado es el artículo **"Architectural Solutions for Self-Adaptive Systems"** (Soluciones Arquitectónicas para Sistemas Autoadaptativos), escrito por Lina Garcés, Silverio Martínez-Fernández, Valdemar Vicente Graciano Neto y Elisa Yumi Nakagawa.

Este trabajo aborda el desafío que enfrentan los arquitectos de _software_ en el diseño de Sistemas de _Software_ Autoadaptativos (SaSs) y propone un conjunto de soluciones reutilizables para facilitar este proceso.

### Resumen Completo del Documento

**1. Contexto y Problema (Desafío de la Arquitectura en SaSs):** Los Sistemas de _Software_ Autoadaptativos (SaSs) son cada vez más adoptados en dominios de aplicación críticos (como vehículos autónomos, ciudades inteligentes y vigilancia de seguridad) debido a su habilidad particular para **modificar su comportamiento o configuración de forma autónoma en tiempo de ejecución** en respuesta a los cambios en el entorno operativo.

El diseño de la arquitectura para un SaS es una actividad desafiante porque el éxito o fracaso de un proyecto SaS depende en gran medida de la **corrección de su arquitectura**, que debe considerar actividades de control, características adaptativas y requisitos de atributos de calidad (como rendimiento, confiabilidad y disponibilidad). Las decisiones arquitectónicas para SaSs son complejas, ya que la adaptación puede variar desde cambios en tipos de datos específicos hasta la reconfiguración completa de la arquitectura. Sin embargo, la justificación de estas decisiones a menudo es conocida solo por el equipo de _software_ SaS, lo que **dificulta la reutilización de este conocimiento** en otros proyectos.

**2. Estructura de un SaS y Control:** Un SaS se constituye generalmente por dos tipos de sistemas:

- **Sistemas Gestionados (_Managed Systems_):** Contienen la lógica de la aplicación que proporciona las funcionalidades del sistema y monitorean y afectan el mundo externo.
- **Sistemas de Gestión (_Managing Systems_):** Contienen la lógica de adaptación, monitorean el entorno y los sistemas gestionados, y adaptan estos últimos cuando es necesario para alcanzar los objetivos del SaS. El sistema de gestión impone control a través de administradores autonómicos o **bucles de retroalimentación MAPE-K** (Monitor, Analyze, Plan, Execute, Knowledge).

**3. La Contribución Principal: Four4SaS:** La contribución principal del artículo es la **Four4SaS**, una colección de **cuatro soluciones independientes del dominio** que guían y facilitan el diseño arquitectónico de SaSs. Estas soluciones se basan en el conocimiento arquitectónico extraído de 13 Arquitecturas de Referencia (RAs) existentes para SaSs, identificadas mediante un estudio de mapeo sistemático.

**4. Las Cuatro Soluciones Arquitectónicas (Four4SaS):** Las soluciones Four4SaS se clasifican según la **Estrategia de Control (C1 a C4)** adoptada, que se relaciona con el nivel de distribución de los sistemas gestionados y de gestión, y el nivel de descentralización de las actividades de control:

|Estrategia|Características de la Arquitectura|Capacidades Adaptativas Soportadas|Beneficios Clave|Inconvenientes Clave|
|:--|:--|:--|:--|:--|
|**C1**|Centralizada: Sistemas gestionados, de gestión y control centralizados. **Adaptaciones Cerradas**.|Conciencia de la Situación (_Situation Aware_) y Autoconfiguración (_Self-Configuration_).|Reconfiguraciones rápidas, comunicaciones rápidas (ej., _Blackboard_, _Pipes and Filters_).|**Monolítica, no escalable**. El administrador autonómico único puede ser un **punto único de fallo**.|
|**C2**|Sistemas gestionados distribuidos; gestión y control centralizados/descentralizados. **Adaptaciones Abiertas y Cerradas**.|Autoconfiguración y Autogestión (_Self-Management_).|Los sistemas gestionados pueden escalarse. La jerarquía de gestores permite **adaptaciones complejas**.|El **Mediator Layer** puede ser un punto único de fallo. Los gestores de alto nivel **no son escalables**.|
|**C3**|Sistemas gestionados y de gestión distribuidos; control descentralizado. **Adaptaciones Abiertas y Cerradas**.|Autooptimización (_Self-Optimization_) y Autogestión.|Identificación, prevención y recuperación de fallos debido al desacoplamiento físico de las jerarquías MAPE-K.|Posible **cuello de botella** en la capa de mediación debido al aumento de datos transferidos.|
|**C4**|Sistemas gestionados y de gestión distribuidos; control **totalmente descentralizado**. **Adaptaciones Abiertas y Cerradas**.|Autoorganización (_Self-Organization_) y alta escalabilidad.|Múltiples gestores de alto nivel abordan múltiples capacidades adaptativas al mismo tiempo. Permite la escalabilidad de ambos sistemas.|Posible **conflicto entre propiedades adaptativas** concurrentes. Necesidad de estrategias de coordinación adicionales.|

**5. Patrones Arquitectónicos Reutilizados:** Las soluciones se basan en patrones recurrentes extraídos de las 13 RAs. Los patrones más empleados incluyen:

- **Capas (_Layers_):** Ampliamente utilizado para habilitar comportamientos complejos a través de jerarquías; las capas inferiores implementan adaptaciones rápidas (rendimiento) y las superiores, adaptaciones que requieren más tiempo (confiabilidad).
- **Repositorio de Datos Compartido (_Shared Data Repository_):** Común en SaSs con capacidades de autoconfiguración, autogestión u autoorganización; asegura la disponibilidad de datos de contexto y reduce el intercambio de datos.
- **_Service-Oriented Architecture_ (SOA):** Aplicado en SaSs con autoorganización y autoconfiguración, beneficia la interoperabilidad, la evolución y la escalabilidad dinámica.
- **Mediator Layer (_Capa de Mediación_):** Facilita la comunicación y la integración de sistemas gestionados heterogéneos.

**6. Evaluación del Four4SaS:** El marco Four4SaS fue evaluado por 15 arquitectos con experiencia en SaSs (2 a 8 años de experiencia) utilizando el modelo de Aceptación de Tecnología (TAM).

- La mayoría de las respuestas fueron **positivas** en criterios como **utilidad percibida** (media = 6), **facilidad de uso** (media = 5), **capacidad de demostración** (media = 6) y **calidad de las arquitecturas creadas** (media = 6).
- Se obtuvo una puntuación menos positiva en la **viabilidad**, específicamente en la disponibilidad de toda la información necesaria para comprender Four4SaS, con el 53% de los arquitectos en desacuerdo.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez y utilidad del marco Four4SaS se fundamentan en las siguientes ideas clave, extraídas del proceso de minería de arquitecturas y la evaluación:

1. **El Conocimiento Arquitectónico de los SaSs Puede ser Sistematizado y Reutilizado (Evidencia Empírica de 13 RAs):** La conclusión de que Four4SaS avanza el estado del arte se basa en el proceso de **minería de 13 arquitecturas de referencia (RAs) publicadas**. Este análisis sistemático permitió extraer el conocimiento recurrente sobre cómo se combinan los **componentes del SaS** (gestionados/gestión), las **características de control** (C1-C4), las **capacidades adaptativas** y los **patrones arquitectónicos**. Esta evidencia empírica proporciona una base robusta para las cuatro soluciones genéricas y reutilizables.
2. **La Distribución de Componentes y el Control Define la Arquitectura Óptima para los Requisitos Adaptativos:** La conclusión de que las soluciones son un guía útil se fundamenta en la idea de que la **estrategia de control (C1-C4)**, que dicta la distribución de los sistemas y la descentralización de las actividades MAPE-K, es el factor determinante para abordar un conjunto específico de **capacidades adaptativas** (ej., C4 es necesario para Autoorganización y escalabilidad). Esto permite a los arquitectos seleccionar la solución adecuada utilizando una guía estructurada (Tabla 2).
3. **El Marco Four4SaS es Percibido como Útil y Efectivo por Arquitectos Experimentados, a Pesar de su Nivel de Abstracción:** La conclusión de la validez del marco se fundamenta en la **evaluación positiva** de la mayoría de los arquitectos, quienes percibieron alta utilidad, calidad y facilidad de uso. Esto valida que, incluso al ser descritas a un **alto nivel de abstracción**, las soluciones Four4SaS (como se ejemplifica con el caso del Sistema de Monitoreo de Ríos) son percibidas como una herramienta valiosa para **mejorar el rendimiento y la productividad** en el diseño de SaSs.

---

### Valor del Paper

El valor del artículo **"Architectural Solutions for Self-Adaptive Systems"** es alto en el campo de la Ingeniería de _Software_ y la Arquitectura de Sistemas Autoadaptativos:

- **Sistematización del Conocimiento Arquitectónico:** El _paper_ resuelve la dificultad de la reutilización del conocimiento arquitectónico proponiendo **Four4SaS**, el cual es un conjunto de **soluciones genéricas y reutilizables** basado en la evidencia de arquitecturas de referencia existentes.
- **Guía para la Toma de Decisiones Complejas:** Ofrece un **mapa claro** (Tabla 2) que relaciona las estrategias de control, las capacidades adaptativas, los beneficios y los inconvenientes. Esto empodera a los arquitectos para tomar decisiones informadas sobre la arquitectura que mejor se adapta a los requisitos de su SaS, facilitando el diseño y reduciendo los riesgos.
- **Validación de la Industria:** La evaluación positiva por parte de arquitectos con experiencia valida la **utilidad práctica** del marco en diferentes dominios de aplicación (IoT, salud, robótica).

El Four4SaS actúa como un **manual de ingeniería civil** para sistemas autoadaptativos. En lugar de que cada equipo redescubra cómo cimentar un edificio (el bucle MAPE-K) o cómo distribuir la carga (sistemas gestionados y de gestión), el manual proporciona cuatro **planos de diseño probados y validados** (C1 a C4). Estos planos no son específicos de un edificio (dominio), sino que indican cómo la elección de la estructura (distribución de control) afectará la funcionalidad (capacidades adaptativas) y la durabilidad (atributos de calidad como la escalabilidad y la confiabilidad).
