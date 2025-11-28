#CitaLatex 
@inproceedings{georgievski2023conceptualising,
  title={Conceptualising Software Development Lifecycle for Engineering AI Planning Systems.},
  author={Georgievski, Ilche},
  booktitle={CAIN},
  pages={88--89},
  year={2023}
}

Referencia del archivo original: `(Dmitriy V) Conceptualising Software Development Lifecycle for Engineering AI Planning Systems.pdf` [[(Ilche Georgievski) Conceptualising Software Development Lifecycle for Engineering AI Planning Systems.pdf]]

El documento seleccionado es el artículo **"Conceptualising Software Development Lifecycle for Engineering AI Planning Systems"** (Conceptualizando el Ciclo de Vida del Desarrollo de Software para la Ingeniería de Sistemas de Planificación de IA), escrito por Ilche Georgievski.

El _paper_ aborda la complejidad inherente al desarrollo y la integración de _software_ de planificación de Inteligencia Artificial (AI) en arquitecturas de producción. Propone un **modelo de ciclo de vida (lifecycle model)** de diez fases para desarrollar Sistemas de Planificación de AI (AI Planning Systems), con el fin de proporcionar soporte metodológico y asegurar que estas aplicaciones alcancen alta calidad y robustez industrial.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Problema:** La planificación de AI es una disciplina de larga data que se ocupa de resolver problemas que constan de un estado inicial del mundo, un modelo de dominio con acciones que pueden cambiar el mundo y un estado objetivo (la meta del usuario). Una solución a un problema de planificación es una secuencia de acciones que conducen del estado inicial al objetivo. La demanda de planificación de AI está creciendo en aplicaciones reales como la exploración espacial, la automatización de edificios y la conducción autónoma.

Sin embargo, la construcción y gestión de _software_ de planificación es un proceso **complejo y dependiente de la experiencia**, que carece de soporte metodológico para asegurar la calidad industrial.

**2. Desafíos de Ingeniería en los Sistemas de Planificación de AI:** La ingeniería de estos sistemas es compleja y requiere un conocimiento profundo del dominio, experiencia en planificación de AI y competencia en ingeniería de _software_. Las actividades complejas incluyen:

- Elegir el modelo de planificación subyacente correcto.
- Ingeniería del conocimiento (Knowledge engineering).
- Manejar numerosas funcionalidades de planificación.
- Diseñar una arquitectura sin un mecanismo establecido de interoperabilidad para los componentes de planificación.
- Seleccionar herramientas adecuadas y recopilar y analizar datos.

**3. El Ciclo de Vida del Desarrollo de Software de Planificación de AI (Diez Fases):** Para abordar la falta de una metodología unificada, el autor introduce un modelo general de ciclo de vida de desarrollo de _software_ que consta de diez fases secuenciales que los sistemas de planificación deben seguir:

|Fase|Descripción|
|:--|:--|
|**a) Requirements Analysis** (Análisis de Requisitos)|Identificación de requisitos funcionales, no funcionales (ej., rendimiento, escalabilidad), orientados a objetivos (incluyendo conocimiento del dominio) y relacionados con el usuario (ej., seguridad humana).|
|**b) Planning Model Selection** (Selección del Modelo de Planificación)|Decidir qué modelo de planificación específico (definido por un enfoque con suposiciones y condiciones) se necesita, basándose en los requisitos, especialmente los funcionales y orientados a objetivos.|
|**c) Domain Model Design** (Diseño del Modelo de Dominio)|Creación de un modelo de dominio formalizado (ej., en sintaxis PDDL) que incluya objetos, propiedades, acciones, tareas, suposiciones y características esenciales.|
|**d) Architecture and Design** (Arquitectura y Diseño)|Conceptualización de la arquitectura del sistema (ej., una arquitectura orientada a servicios) con componentes de planificación adecuados y un modelo de interacción para asegurar su compatibilidad.|
|**e) Planning Technology Selection** (Selección de Tecnología de Planificación)|Búsqueda y selección de tecnología de planificación existente (código, herramientas, servicios) que ya esté disponible para implementar las funcionalidades requeridas.|
|**f) Implementation** (Implementación)|Desarrollo de componentes de planificación y mecanismos de comunicación para las funcionalidades que no se pudieron encontrar en el mercado. El ciclo de vida clásico de desarrollo de _software_ puede aplicarse aquí para cada componente.|
|**g) Testing** (Pruebas)|Validación y verificación del sistema con respecto a los requisitos iniciales. Se prueban los artefactos de planificación (componentes y modelos de dominio) de forma aislada y se realizan pruebas de integración.|
|**h) Deployment** (Despliegue)|Puesta a punto del sistema para su ejecución. Esta fase es compleja y propensa a errores debido a la heterogeneidad de la tecnología de planificación, por lo que se recomienda la automatización.|
|**i) Monitoring** (Monitoreo)|Observación del sistema y el entorno de ejecución para identificar problemas o comportamientos inesperados, lo que implica la recopilación de datos de procedencia específicos de la planificación.|
|**j) Analysis** (Análisis)|Análisis de los datos de procedencia recopilados para identificar problemas, generar _insights_ y mejorar el sistema de planificación (incluido el conocimiento del dominio), además de habilitar la trazabilidad, la reproducibilidad y la explicabilidad.|

**4. Adaptación y Desafíos Abiertos:** El ciclo de vida propuesto es un proceso general que puede requerir ajustes según las necesidades específicas de la aplicación. Los avances tecnológicos podrían modificar fases enteras; por ejemplo, la fase de _Requirements Analysis_ podría incluir requisitos impulsados por AI.

El ciclo de vida ayuda a identificar **desafíos abiertos** en la ingeniería de sistemas de planificación, como:

- La falta de soporte para seleccionar modelos de planificación.
- La ausencia de un registro de herramientas de planificación disponibles.
- Una estrategia holística para probar estos sistemas.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de este ciclo de vida formal y su utilidad como herramienta de ingeniería se fundamentan en las siguientes ideas clave:

1. **La Ingeniería de Sistemas de Planificación de AI Carece de Metodología Unificada y es Dependiente de la Experiencia:** La conclusión principal del _paper_ se basa en la observación de que, aunque la planificación de AI tiene una creciente demanda industrial, el proceso de construir y gestionar el _software_ asociado es **complejo, requiere un conocimiento inmenso** y **carece de un soporte metodológico** que cubra y trate todas las fases relevantes.
2. **La Rigurosidad Metodológica es Necesaria para la Calidad Industrial:** El valor del ciclo de vida se fundamenta en la premisa de que proporcionar un proceso general que defina las diez fases necesarias (desde el análisis de requisitos hasta el despliegue y el análisis posterior) es esencial para **permitir la cooperación** entre las partes involucradas y para **garantizar que las aplicaciones tengan alta calidad y robustez industrial**.
3. **La Planificación de AI Introduce Requisitos, Decisiones y Tareas Post-Despliegue Únicas:** El ciclo de vida es una herramienta necesaria porque formaliza fases críticas que son específicas de la planificación de AI. Estas incluyen la **selección explícita del modelo de planificación** (fase b) y el **diseño formal del modelo de dominio** (fase c). Además, las fases operativas de **Monitoreo** (fase i) y **Análisis** (fase j) de los datos de procedencia son vitales para la mejora y la explicabilidad del sistema.

---

### Valor del Paper

El valor del artículo **"Conceptualising Software Development Lifecycle for Engineering AI Planning Systems"** es significativo para la Ingeniería de _Software_ y la Ingeniería de AI:

- **Fundamento Metodológico (Herramienta para la Estandarización):** El _paper_ aporta un valor fundamental al proponer el **primer ciclo de vida de desarrollo de _software_ (SDLC) general de diez fases** diseñado específicamente para sistemas de planificación de AI. Esto proporciona un **marco de referencia** esencial que puede servir como base para la discusión, la estandarización y la mejora de las prácticas en la ingeniería de sistemas de planificación.
- **Identificación de Desafíos Abiertos:** El ciclo de vida no solo describe el proceso, sino que también funciona como una **herramienta analítica** para identificar **brechas y desafíos abiertos** en la investigación y la práctica, como la falta de soporte para la selección de modelos de planificación o la necesidad de estrategias de prueba holísticas.
- **Orientación para Profesionales:** Al proporcionar una estructura clara y completa, el _paper_ sirve como una **guía práctica** para los desarrolladores de aplicaciones de planificación, asegurando que consideren todos los aspectos críticos, desde los requisitos (incluida la seguridad humana) hasta el análisis posterior a la operación.

El ciclo de vida propuesto actúa como un **mapa de ruta detallado y obligatorio** para construir un sistema complejo. Mientras que los ingenieros de _software_ solían tener un mapa general, este _paper_ proporciona un mapa topográfico específico para la construcción de sistemas de planificación de AI, señalando cada parada crucial (como la selección del modelo de planificación) y cada requisito de material (como el conocimiento del dominio formalizado), asegurando que el proyecto no se desvíe ni carezca de los componentes necesarios para su éxito industrial.