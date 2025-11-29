#CitaLatex 
@inproceedings{EmamiTaba2017AGame-Theoretic,
  title = {A Game-Theoretic Decision-Making Framework for Engineering Self-Protecting Software Systems},
  url = {http://dx.doi.org/10.1109/ICSE-C.2017.43},
  DOI = {10.1109/icse-c.2017.43},
  booktitle = {2017 IEEE/ACM 39th International Conference on Software Engineering Companion (ICSE-C)},
  publisher = {IEEE},
  author = {Emami-Taba,  Mahsa},
  year = {2017},
  month = may,
  pages = {449–452}
}

Referencia del archivo original: `(Mahsa Emami-Taba) A Game-Theoretic Decision-Making Framework for Engineering Self-Protecting Software Systems.pdf` [[(Mahsa Emami-Taba) A Game-Theoretic Decision-Making Framework for Engineering Self-Protecting Software Systems.pdf]]

El documento seleccionado es el artículo de investigación **"A Game-Theoretic Decision-Making Framework for Engineering Self-Protecting Software Systems"** (Un Marco de Toma de Decisiones Basado en la Teoría de Juegos para la Ingeniería de Sistemas de Software Autoprotectores), escrito por Mahsa Emami-Taba.

Este trabajo de tesis doctoral propone un **marco de toma de decisiones sistemático y novedoso** para los Sistemas de _Software_ Autoprotectores (SPS), que utiliza la Teoría de Juegos para modelar y refinar las estrategias de mitigación en respuesta a ataques dinámicos y sofisticados.

### Resumen Completo del Documento

**1. Contexto: La Necesidad de Sistemas Autoprotectores (SPS):** La creciente complejidad e interconectividad de los sistemas de _software_ hacen que asegurar la información y alcanzar un nivel de seguridad deseado sea difícil. Los ataques modernos son **dirigidos, destructivos y de naturaleza dinámica**. Para responder a estas demandas, se requieren sistemas adaptativos de reacción rápida, que puedan detectar y mitigar amenazas sobre la marcha, asegurando los objetivos de seguridad (confidencialidad, integridad y disponibilidad). El **Software Autoprotector (SPS)** es la respuesta a estas exigencias.

El desafío principal en los SPS es cómo tomar la **decisión de adaptación** más adecuada y oportuna en respuesta a una amenaza detectada o a desviaciones de los objetivos de seguridad.

**2. Limitaciones del Estado del Arte:** Un análisis del estado del arte en SPS (Tabla I) reveló varias lagunas en la investigación:

- **Enfoque de Objetivos:** La mayoría de las herramientas y técnicas de SPS se centran en la **anticipación y prevención** de objetivos de adaptación, con poco esfuerzo dedicado a limitar la propagación del ataque, minimizar las consecuencias o recuperarse a un estado confiable después del ataque.
- **Capa Arquitectónica:** Gran parte de la investigación se centra en una **capa arquitectónica específica** (ej., red, _host_ o aplicación). Este hecho restringe el conocimiento del sistema/entorno y, en consecuencia, limita las acciones de mitigación a través de mecanismos de adaptación.
- **Toma de Decisiones:** Las técnicas **clásicas (heurísticas)** son las más utilizadas en la toma de decisiones dentro de los SPS. El _Machine Learning_ se emplea en unos pocos enfoques (ej., detección de anomalías en el nivel de red), pero la aplicación de la **Teoría de Juegos en sistemas SPS** no ha sido investigada a fondo, especialmente en ataques a la capa de aplicación, que son más sofisticados.

**3. La Metodología Propuesta (Teoría de Juegos):** El marco propuesto modela el proceso de toma de decisiones como un **juego de dos jugadores**: el **gestor de adaptación** (_adaptation manager_) y el **atacante**.

- El gestor de adaptación y el atacante compiten por los recursos del sistema.
- El gestor de adaptación rastrea la estrategia del atacante y reacciona a los cambios en esa estrategia.
- Una suposición clave es la **racionalidad de los jugadores** en este juego de seguridad.
- La Teoría de Juegos es adecuada porque considera la **estrategia del oponente** al elegir la siguiente acción, lo que ayuda en el análisis de _trade-offs_ entre contramedidas de seguridad y posibles ataques.

**4. El Marco de Toma de Decisiones Basado en la Teoría de Juegos (Tres Fases):** El marco propuesto se estructura en tres fases consecutivas (Figura 2):

1. **Modelado de Objetivos (_Modeling Goals_):** Busca incorporar objetivos de calidad en el modelo de decisión. Esto implica modelar el conocimiento requerido por el gestor de adaptación explotando técnicas de **modelado orientado a objetivos y orientado a agentes**. Es crucial capturar el conocimiento no solo desde la perspectiva del sistema adaptable, sino también desde la perspectiva del **usuario malicioso** (atacante) para facilitar el análisis de decisiones de seguridad.
2. **Diseño de Técnicas de Teoría de Juegos (_Designing Game-Theoretic Techniques_):** Implica diseñar el proceso de planificación del SPS con la ayuda de la Teoría de Juegos. El objetivo es construir el modelo de decisión, que debe actualizarse durante el tiempo de ejecución (_runtime_). La intención es que el marco tenga una capacidad de **"plug-and-play"** para adaptar técnicas de teoría de juegos (ej., _Markov game, Bayesian game, Stackelberg games_) que se ajusten a los objetivos y requisitos de seguridad.
3. **Realización del Gestor de Adaptación (_Realizing Adaptation Manager_):** Es la fase de desarrollo que implementa las dos fases anteriores, incluyendo la construcción del modelo orientado a objetivos, el mapeo a la técnica de teoría de juegos, el desarrollo del motor de toma de decisiones y la evaluación/prueba con casos apropiados.

El enfoque principal de la investigación es la realización del proceso de **Planificación** (_Planning_) del modelo MAPE-K, sin centrarse en los procesos de Monitoreo, Análisis y Ejecución.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad y el valor de un enfoque sistemático basado en la Teoría de Juegos para la autoprotección se fundamentan en las siguientes ideas clave:

1. **La Dinámica Atacante-Sistema es un Juego de Estrategias y Requiere la Incorporación de la Estrategia del Oponente:** La conclusión central es que la seguridad adaptativa debe ir más allá de las heurísticas clásicas. Se fundamenta en la idea de que los ataques son cada vez más **dinámicos y cambian de estrategia** para permanecer ocultos. Por lo tanto, el gestor de adaptación debe **fusionar las estrategias del atacante** en su modelo de toma de decisiones. La **Teoría de Juegos** es el enfoque natural para analizar cuantitativamente las acciones y utilidades de múltiples jugadores, considerando específicamente la estrategia del oponente al elegir la siguiente acción de mitigación.
2. **El Diseño de la Contramedida Óptima Exige el Modelado Explícito de _Trade-offs_ entre Objetivos Múltiples:** La conclusión de que se necesita un modelado avanzado se basa en que la toma de decisiones en SPS debe permitir el **razonamiento sobre los objetivos de seguridad** (confidencialidad, integridad, disponibilidad) en el contexto de **otros objetivos de calidad** como el rendimiento, el costo o la usabilidad. El modelado orientado a objetivos y orientado a agentes facilita este **análisis de _trade-offs_** y la interpretación de la relación entre datos y el impacto de las acciones.
3. **La Viabilidad Industrial Requiere Generalidad y Flexibilidad Arquitectónica:** La conclusión de que el marco es útil para la industria se fundamenta en la ambición de que el marco propuesto de toma de decisiones no debe ser específico para un solo tipo de ataque, sino que debe abordar **principios generales de diseño** y desarrollo. Además, su diseño debe exhibir una capacidad de **"plug-and-play"** para poder adaptar diversas técnicas de Teoría de Juegos (Markov, Bayesiana, etc.) según los requisitos específicos del sistema.

---

### Valor del Paper

El valor del artículo **"A Game-Theoretic Decision-Making Framework for Engineering Self-Protecting Software Systems"** es significativo para la investigación en _Software_ Autoadaptativo y Ciberseguridad:

- **Innovación en la Toma de Decisiones:** El valor principal es la introducción pionera de la **Teoría de Juegos** como la base para la toma de decisiones en los Sistemas de _Software_ Autoprotectores (SPS), lo cual aborda una brecha de investigación clave identificada en el estado del arte.
- **Marco Estructurado y Holístico:** Propone un **marco sistemático de tres fases** que garantiza que las decisiones de adaptación no sean heurísticas, sino que se basen en un conocimiento explícito de los objetivos de calidad (_trade-offs_) y las estrategias dinámicas del atacante.
- **Enfoque en la Estrategia del Atacante:** El trabajo proporciona los cimientos para diseñar sistemas de mitigación **conscientes de la estrategia** (_strategy-aware mitigation_), lo que es fundamental para contrarrestar ataques modernos que cambian dinámicamente sus tácticas.

Este marco es como pasar de un **sistema de seguridad reactivo** que simplemente pone parches donde se detectan agujeros, a un **sistema de defensa estratégico** que utiliza la inteligencia militar (Teoría de Juegos). En lugar de solo monitorear su propia fortaleza, el gestor de adaptación modela la racionalidad del atacante, anticipa su próximo movimiento y elige la contramedida que minimice el daño, entendiendo las implicaciones de rendimiento y costo de esa acción, asegurando así una defensa dinámica y económica.
