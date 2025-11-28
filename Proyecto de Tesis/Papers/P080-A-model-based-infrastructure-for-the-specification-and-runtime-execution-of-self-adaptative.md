#CitaLatex 
@article{Alfonso2023Amodel-basedinfrastructure,
  title = {A model-based infrastructure for the specification and runtime execution of self-adaptive IoT architectures},
  volume = {105},
  ISSN = {1436-5057},
  url = {http://dx.doi.org/10.1007/s00607-022-01145-7},
  DOI = {10.1007/s00607-022-01145-7},
  number = {9},
  journal = {Computing},
  publisher = {Springer Science and Business Media LLC},
  author = {Alfonso,  Iván and Garcés,  Kelly and Castro,  Harold and Cabot,  Jordi},
  year = {2023},
  month = feb,
  pages = {1883–1906}
}

Referencia del archivo original: `(Iván Alfonso) A model-based infrastructure for the specification and runtime execution of self-adaptative.pdf` [[(Iván Alfonso) A model-based infrastructure for the specification and runtime execution of self-adaptative.pdf]]

El documento seleccionado es el artículo **"A model-based infrastructure for the specification and runtime execution of self-adaptive IoT architectures"** (Una infraestructura basada en modelos para la especificación y ejecución en tiempo de ejecución de arquitecturas IoT autoadaptativas), escrito por Iván Alfonso, Kelly Garcés, Harold Castro y Jordi Cabot.

El trabajo presenta una propuesta de **infraestructura basada en modelos** para especificar y ejecutar sistemas de Internet de las Cosas (IoT) multicapa autoadaptativos, los cuales aprovechan las arquitecturas _edge_ y _fog computing_. Esta infraestructura incluye un Lenguaje Específico de Dominio (DSL) para la especificación de la arquitectura y las reglas de adaptación, un marco de ejecución (_runtime framework_) y un generador de código.

### Resumen Completo del Documento

**1. Contexto y Problema (Sistemas IoT Multicapa Autoadaptativos):** Los sistemas IoT tradicionales basados en la nube presentan limitaciones en ancho de banda y latencia. Para superar estas restricciones, han surgido arquitecturas multicapa que aprovechan las ventajas de la computación _edge_ (procesamiento cerca de los sensores/actuadores) y _fog_ (puente entre la nube y el _edge_). Sin embargo, la complejidad de estos diseños es un desafío.

Un desafío aún mayor es **gestionar y adaptar estos sistemas IoT en tiempo de ejecución** para mantener una Calidad de Servicio (QoS) óptima frente a cambios ambientales inesperados (como latencia creciente o fallos de _software_). Se requiere soporte para definir y ejecutar reglas de autoadaptación que permitan la evolución proactiva del sistema.

**2. Solución Propuesta (DSL y Marco de Ejecución):** Los autores proponen una infraestructura basada en modelos que combina un **Lenguaje Específico de Dominio (DSL)** con una **infraestructura de tiempo de ejecución** y un **generador de código**.

- **El DSL:** Permite la especificación de arquitecturas IoT multicapa estáticas (dispositivos, _edge_, _fog_, nube) y de reglas dinámicas. El DSL soporta conceptos como sensores, actuadores, tipos de conectividad, nodos, contenedores, y comunicaciones MQTT.
    
    - **Metamodelo:** La sintaxis abstracta se define a través de un metamodelo que incluye conceptos para modelar dispositivos IoT (_IoTDevice_), nodos (_Node_) y regiones (_Region_).
    - **Sintaxis Concreta:** Se utiliza un **editor proyectivo** (desarrollado con JetBrains MPS) para ofrecer múltiples notaciones complementarias (textual, tabular y vista de árbol), lo que mejora la experiencia de edición del usuario.
    - **Reglas Dinámicas:** El DSL incluye un lenguaje basado en reglas para modelar tanto el comportamiento estándar (reglas funcionales, ej., activar una alarma) como la **autoadaptación arquitectónica** del sistema (ej., autoescalamiento, _offloading_, o _redeployment_ de contenedores). Las reglas pueden combinar condiciones basadas en datos de **sensores** (_SensorCondition_) y métricas de **QoS** (_QoSCondition_).
    - **Extensibilidad:** El DSL fue diseñado para ser fácilmente extensible y se valida su capacidad de reutilización al proponer una extensión específica para la **industria de la minería subterránea** (incluyendo conceptos como _Tunnel_, _Shaft_ y _CheckPoint_).
- **Marco de Ejecución (_Runtime Framework_):** Se desarrolló un marco basado en el ciclo **MAPE-K** (_Monitor, Analyze, Plan, Execute, Knowledge_) para soportar el comportamiento del sistema y su autoadaptación en tiempo de ejecución.
    
    - **Monitor:** Recolecta información de la infraestructura y métricas de QoS (Tabla 1) y datos de sensores a través de Prometheus Storage y _exporters_.
    - **Analyze:** Las reglas modeladas en el DSL se transforman en **Reglas de Alerta de Prometheus (Prometheus Alerting Rules)** que utilizan PromQL para identificar cambios que requieren adaptación.
    - **Plan:** El **Prometheus AlertManager** maneja las alertas y genera un plan de adaptación (una lista de acciones).
    - **Execute:** Un **Motor de Adaptación (_Adaptation Engine_)** implementado en Python gestiona el orquestador (Kubernetes) para aplicar las acciones arquitectónicas (autoescalamiento, _offloading_) o las operaciones funcionales (control de actuadores).
- **Generación de Código:** El **generador de código prototipo** produce automáticamente el código (archivos YAML) para el despliegue del sistema IoT basado en contenedores, incluyendo la configuración de todas las herramientas del ciclo MAPE-K (monitores, Prometheus, AlertManager y el Motor de Adaptación).
    

**3. Evaluación Empírica:** Se realizaron experimentos para validar la **expresividad y usabilidad** del DSL, y la **correctitud** de la infraestructura de ejecución.

- **Validación del Lenguaje:** El **Experimento 1** (con ocho expertos en minería) validó la usabilidad de la extensión del DSL para modelar la estructura de la mina, los dispositivos y las reglas de adaptación. Los resultados fueron positivos, con la mayoría de los participantes reportando que el modelado era **fácil** y una baja tasa de errores. Se demostró la capacidad del DSL para modelar conceptos de minería y reglas funcionales/adaptativas.
- **Validación del _Runtime_:** Se realizaron experimentos para validar la **capacidad de autoadaptación** (escalamiento, _offloading_, _redeployment_) del marco, confirmando que el sistema se adapta como se espera cuando se activan los eventos modelados en el DSL.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que la infraestructura basada en modelos resuelve los desafíos de los sistemas IoT multicapa autoadaptativos se fundamentan en las siguientes ideas clave:

1. **Integración de Arquitectura Multicapa y Autoadaptación a Nivel de Contenedor:** La principal conclusión del _paper_ se basa en que, a diferencia de propuestas anteriores, este trabajo es el primero en permitir la **especificación, el despliegue y la ejecución de arquitecturas IoT multicapa completas** (_device_, _edge_, _fog_ y _cloud_). Crucialmente, la propuesta permite la definición de **reglas complejas** que involucran **múltiples condiciones y acciones** (incluyendo adaptaciones arquitectónicas como _offloading_ y _scaling_) que pueden operar a nivel de **contenedores** y **grupos de nodos** (clústeres o regiones).
2. **El Modelo de Ingeniería de Software (DSL y Code Generation) Supera la Complejidad Operacional:** La conclusión sobre la viabilidad industrial se fundamenta en el uso del **DSL** para la abstracción y el **generador de código** para la automatización. Esto semi-automatiza el despliegue y la evolución del sistema, transformando las especificaciones de alto nivel (el modelo DSL) en una **infraestructura ejecutable real** basada en el ciclo **MAPE-K** y herramientas estándar (Prometheus, Kubernetes, YAML).
3. **La Usabilidad y Extensibilidad del DSL Garantizan la Adopción en Dominios Específicos:** La conclusión sobre la utilidad y reutilización del DSL se fundamenta en la **validación empírica**. El DSL demostrado en el dominio de la **minería subterránea** prueba que el lenguaje es **fácil de usar** para expertos del dominio que no están familiarizados con _software_ de modelado y que es **fácilmente extensible** a otros dominios.

---

### Valor del Paper

El valor del artículo **"A model-based infrastructure for the specification and runtime execution of self-adaptive IoT architectures"** es alto y tiene un impacto significativo en la Ingeniería de _Software_ para IoT:

- **Solución Completa de _End-to-End_**: El trabajo es la **primera propuesta que combina** la especificación, el despliegue y la ejecución en tiempo de ejecución de arquitecturas IoT multicapa autoadaptativas. Resuelve la necesidad de un mejor soporte para definir y ejecutar sistemas IoT complejos y sus reglas de autoadaptación.
- **Innovación Metodológica y Arquitectónica:** La propuesta metodológica de usar un **DSL** para la especificación de reglas de adaptación complejas (condiciones de QoS y sensores) y un **marco MAPE-K** asistido por la generación automática de código YAML constituye una innovación robusta. Esto minimiza el riesgo de errores en el despliegue y facilita la gestión de la evolución del sistema.
- **Recursos de Código Abierto:** El valor del _paper_ se incrementa considerablemente al hacer que la **infraestructura completa** (herramienta de modelado, generador y componentes de ejecución) esté disponible en un **repositorio de código abierto**. Esto facilita la replicación, la comparación con otros trabajos y el avance de la investigación en el campo de los sistemas autoadaptativos.

La infraestructura propuesta (DSL, generador de código, MAPE-K) es comparable a un **ingeniero de diseño y mantenimiento automatizado** para un ecosistema de edificios inteligentes. En lugar de que un experto tenga que escribir manualmente código complejo para cada sensor y cada regla de adaptación, el DSL actúa como un plano de alto nivel que permite al arquitecto definir las estructuras (_edge_, _fog_, _cloud_) y las reglas de funcionamiento (ej., "si la temperatura es alta, migra el contenedor de análisis a otro nodo"). El generador de código convierte estos planos en toda la infraestructura operativa y el marco MAPE-K actúa como el sistema nervioso central que monitoriza, decide y ejecuta los cambios automáticamente, asegurando la supervivencia y el rendimiento del sistema ante fallos inesperados.