#CitaLatex 
@article{DAY202068,
  title = {Autonomic Feature Selection Using Computational Intelligence},
  author = {Day, Patrick and Iannucci, Stefano and Banicescu, Ioana},
  date = {2020},
  journaltitle = {Future Generation Computer Systems},
  volume = {111},
  pages = {68--81},
  issn = {0167-739X},
  doi = {10.1016/j.future.2020.04.015},
  url = {https://www.sciencedirect.com/science/article/pii/S0167739X19320564},
  abstract = {This paper introduces an autonomic method to optimize Feature Selection (FS) in autonomic systems while also presenting a taxonomy of FS techniques. Feature selection is a dimension reduction technique that has been proven to lead to improved performance by avoiding overfitting and to address complexity, thus providing faster and cost-effective algorithms. To be successful, the current FS methods are heavily reliant on two key elements: (1) a well defined and static learning objective, and (2) a relevant dataset. Current FS approaches involve mostly a manual process and do not take into account the constant change in the state of the underlying system. However, the method to automate the FS process presented in this paper, the Autonomic Feature Selection (AFS), uses representation and transfer learning concepts borrowed from the deep learning area. Representations of various types of monitoring data from a system are learned, and the resulting knowledge is transferred and re-used. The AFS is targeted to self-aware software systems, where the learning objective and (or) the availability of the relevant data are subject to change. The results suggest that although building and transferring learned representations is computationally expensive, its benefits outweigh the cost, by offering the potential to build flexible and re-usable knowledge structures.},
  keywords = {Autonomic computing,Computational intelligence,Deep learning,Feature selection,Representation & transfer learning,Self-protecting systems}
}
Lectura basada en [[(Patrick Day) Autonomic Feature Selection using Computational Intelligence.pdf]]


### Resumen y Análisis Clave del Paper: "Selección Autonómica de Características usando Inteligencia Computacional"

Este paper aborda las limitaciones de los métodos tradicionales de Selección de Características (Feature Selection - FS), que son estáticos y manuales, y propone un **novedoso enfoque autonómico** para sistemas que necesitan adaptarse a cambios en su entorno en tiempo real. La solución, denominada **"Selección Autonómica de Características" (AFS)**, utiliza técnicas de _deep learning_ e inteligencia computacional para permitir que un sistema aprenda y ajuste dinámicamente las características que monitorea.

#### Ideas Clave del Documento

- **Problema Principal: La Ineficacia de la Selección de Características Estática**
    
    - Los métodos de FS convencionales no son adecuados para sistemas autónomos y auto-adaptativos porque dependen de dos elementos clave: **(1) un conjunto de datos bien definido y (2) un objetivo de aprendizaje estático**.
    - En sistemas del mundo real, los datos cambian constantemente (data streams), y no se puede asumir que las características relevantes permanezcan fijas.
    - El proceso manual tradicional de FS es **arduo, lento y propenso a errores** como el sobreajuste (overfitting).
- **Solución Propuesta: Un Marco Autonómico (AFS)**
    
    - El paper introduce un marco que permite la **selección de características dinámica y automatizada**, basado en los principios de la computación autonómica y el ciclo de referencia **MAPE-K (Monitorizar, Analizar, Planificar, Ejecutar sobre una Base de Conocimiento)**.
    - La contribución principal es un método que **aprende una línea base del comportamiento "normal"** de un sistema y luego utiliza este conocimiento para adaptarse a nuevas tareas, como la detección de anomalías o ataques.
- **Tecnología Central: Deep Learning y Transferencia de Conocimiento**
    
    - **Autoencoders para la Representación:** El núcleo de la solución es el uso de un **autoencoder**, un tipo de red neuronal, para aprender una representación comprimida y significativa de los datos del sistema en condiciones normales. Para datos secuenciales (como el tráfico de red), se utilizan **Redes de Memoria a Corto y Largo Plazo (LSTMs)**.
    - **Aprendizaje por Transferencia para la Adaptación:** Una vez que se ha aprendido la línea base, este conocimiento (las capas entrenadas del autoencoder) se **transfiere a un nuevo modelo**. Este segundo modelo se especializa en una tarea concreta (ej. clasificar un ataque) y se re-entrena de forma mucho más rápida y con menos datos que si se entrenara desde cero.
- **Arquitectura y Aplicación Práctica (ASMS)**
    
    - La propuesta se implementa en un **Sistema de Gestión de Seguridad Autonómico (ASMS)** diseñado para mejorar un Sistema de Respuesta a Intrusiones (IRS).
    - El sistema utiliza una **Base de Conocimiento (Knowledge Engine)** que almacena el modelo base y aplica reglas lógicas (usando PyKE) para interpretar los resultados del modelo y tomar decisiones. Por ejemplo, puede decidir qué características son relevantes para determinar si está ocurriendo un ataque.
- **Validación y Resultados**
    
    - El enfoque fue validado experimentalmente utilizando conjuntos de datos de tráfico de red (específicamente, UNSW-NB15).
    - Se demostró que el autoencoder es eficaz para realizar la reducción de dimensionalidad, una tarea clave de la FS, de manera comparable a métodos estadísticos como el Análisis de Componentes Principales (PCA).
    - Los experimentos confirman que el sistema puede aprender de múltiples flujos de datos y crear una representación unificada, lo cual es esencial para sistemas complejos.
- **Discusión y Trabajo Futuro**
    
    - La principal ventaja de este enfoque es su **flexibilidad y capacidad de reutilización**. La "base de conocimiento" aprendida puede ser adaptada para diferentes artefactos o tareas.
    - Como trabajo futuro, los autores proponen desplegar el sistema para que utilice datos en vivo, mejorar la base de conocimiento con tecnologías más dinámicas como bases de datos de grafos, y automatizar aún más el perfilado del sistema.