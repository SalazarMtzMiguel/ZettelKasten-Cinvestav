#CitaLatex 
@INPROCEEDINGS{6827105,
		author={Faniyi, Funmilade and Lewis, Peter R. and Bahsoon, Rami and Yao, Xin},
		booktitle={2014 IEEE/IFIP Conference on Software Architecture}, 
		title={Architecting Self-Aware Software Systems}, 
		year={2014},
		volume={},
		number={},
		pages={91-94},
		keywords={Computer architecture;Software systems;Context;Adaptation models;Quality of service;Educational institutions;Sensors;Self-adaptation;Architecture style;Self-awareness},
		doi={10.1109/WICSA.2014.18}}
		
Lectura basada en: [[(Funmilade Faniyi) Architecting Self-Aware Software Systems.pdf]]



### Resumen del Paper: Arquitectura de Sistemas de Software Auto-Conscientes

El artículo propone un **nuevo estilo arquitectónico para diseñar sistemas de software autoadaptativos** que puedan gestionar de manera más eficiente y fiable los complejos conflictos (_trade-offs_) que surgen en entornos dinámicos. La principal contribución es la introducción del concepto de **auto-conciencia computacional (computational self-awareness)**, inspirado en la psicología, como un principio fundamental para el diseño de estos sistemas.

---

### 1. El Problema: Las Limitaciones de la Autoadaptación Clásica

Los sistemas de software modernos son cada vez más grandes, heterogéneos y operan en entornos impredecibles. Los enfoques existentes de autoadaptación basados en arquitectura, como el conocido **MAPE-K**, son un pilar importante, pero a menudo se basan en suposiciones simplificadas.

Las principales limitaciones que este paper busca superar son:

- **Gestión de "trade-offs" complejos:** Los sistemas actuales no manejan bien los conflictos que emergen entre diferentes objetivos, el tiempo y las interacciones, tanto a nivel interno como con el entorno.
- **Conocimiento de "grano grueso":** Enfoques como MAPE-K modelan el conocimiento de manera monolítica, sin una distinción explícita entre los diferentes tipos de conocimiento necesarios para la adaptación (por ejemplo, sobre los objetivos, el tiempo o las interacciones).
- **Conocimiento predefinido:** Muchos sistemas asumen que el conocimiento para la adaptación es conocido de antemano. Este enfoque es insuficiente cuando el sistema se despliega en entornos donde las adaptaciones correctas son _a priori_ desconocidas y deben ser aprendidas en tiempo de ejecución.

### 2. La Solución Propuesta: Un Estilo de Arquitectura Auto-Consciente

Para abordar estos problemas, los autores proponen un estilo arquitectónico que se basa en un **"nodo auto-consciente"** (_self-aware node_). Este nodo no es necesariamente un sistema físico, sino un contenedor conceptual (como un agente o un proceso) donde ocurren la adquisición de conocimiento y la toma de decisiones.

La arquitectura de este nodo se basa en el principio de **separación de responsabilidades**, dividiéndose en dos componentes principales (ver Figura 1 del paper):

- **Componente de Auto-conciencia (Self-Awareness):** Su única función es **adquirir y representar el conocimiento**. Recopila datos de sensores internos y externos, los analiza y los convierte en modelos aprendidos. Este componente utiliza algoritmos de aprendizaje en línea (_online learning_) para mantener el conocimiento actualizado.
- **Componente de Auto-expresión (Self-Expression):** Su función es **tomar decisiones y actuar**. Utiliza el conocimiento proporcionado por el componente de auto-conciencia para determinar las acciones apropiadas y ejecutarlas a través de actuadores.

Este diseño es análogo a un ciclo **Observe-Learn-Decide-Act (OLDA)**, donde el componente de auto-conciencia representa la fase de aprendizaje (Learn).

### 3. Idea Clave: Los 5 Niveles de Auto-Conciencia Computacional

La contribución más novedosa del paper es una interpretación computacional de los niveles de auto-conciencia de la psicología. Proponen **cinco niveles jerárquicos de conocimiento** que un sistema puede poseer, permitiendo una representación de "grano fino".

1. **Conciencia de Estímulo (Stimulus-aware):** El nivel más básico. El sistema tiene conocimiento de los estímulos (eventos), pero no distingue su origen ni tiene memoria del pasado.
2. **Conciencia de Interacción (Interaction-aware):** El sistema entiende que sus acciones provocan reacciones en otros nodos o en el entorno (es decir, comprende los bucles de retroalimentación).
3. **Conciencia del Tiempo (Time-aware):** El sistema tiene conocimiento de fenómenos históricos o futuros, lo que implica tener memoria o capacidad de predicción.
4. **Conciencia de Objetivos (Goal-aware):** El sistema no solo tiene objetivos implícitos en su diseño, sino que tiene **conocimiento explícito** de ellos (metas, preferencias, restricciones) y puede razonar sobre ellos.
5. **Meta-Auto-Conciencia (Meta-self-awareness):** El nivel más avanzado. Es la **"conciencia de las propias capacidades de auto-conciencia"**. En este nivel, el sistema puede razonar sobre su propio comportamiento y procesos de aprendizaje.

### 4. El Nivel más Avanzado: Meta-Auto-Conciencia

Este concepto es crucial porque permite que el aprendizaje ocurra no solo a nivel de adaptación, sino también a un **meta-nivel**. Un sistema con meta-auto-conciencia puede, por ejemplo:

- Evaluar el **costo-beneficio de sus propios procesos de aprendizaje**. Podría decidir que un modelo de predicción temporal muy complejo consume demasiados recursos para el beneficio que aporta y cambiar a uno más simple.
- **Seleccionar y ajustar dinámicamente los algoritmos de aprendizaje** en tiempo de ejecución según el contexto cambie.

### 5. Aplicación y Diferenciación

- **Caso de Estudio:** El paper demuestra la aplicabilidad del enfoque en un escenario de **aplicaciones basadas en servicios (SBAs) en la nube**. En este caso, un nodo auto-consciente gestiona la selección de servicios para cumplir con los requisitos de Calidad de Servicio (QoS), adaptándose a la variación de precios y a la carga de trabajo.
- **Diferenciación con MAPE-K:** A diferencia de MAPE-K, este estilo descompone el componente de Conocimiento (K) en una representación de grano fino (los 5 niveles) y está diseñado para aprender conocimiento que no se conoce a priori.
- **Diferenciación con ODA/SEEC:** El estilo propuesto se describe como **OLDA (Observe-Learn-Decide-Act)**, explicitando el aprendizaje como un componente de primer nivel, separado de la decisión.

### Conclusión: 

Este paper sería **muy útil para tu tesis** si tu investigación se enfoca en:

- **Arquitecturas de software para sistemas autoadaptativos o autónomos:** Propone un nuevo estilo arquitectónico con principios de diseño claros.
- **Ingeniería de software basada en búsqueda (SBSE) y aprendizaje en línea:** El uso de _online learning_ y la meta-adaptación son temas centrales.
- **Modelado del conocimiento en sistemas autónomos:** La principal contribución es el modelo de conocimiento jerárquico de 5 niveles.
- **Sistemas auto-reflexivos o meta-adaptativos:** El concepto de meta-auto-conciencia es un ejemplo claro de este tipo de sistemas.

El paper complementa el trabajo clásico sobre MAPE-K y ofrece una perspectiva más detallada y orientada al aprendizaje para la construcción de la base de conocimiento en sistemas autoadaptativos.