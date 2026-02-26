
\section{Results}
    As a result of the systematic search and selection process, a total of 55 primary studies were identified, constituting the Selected studies analyzed in this survey. These studies were obtained through the execution of the predefined search strings and the subsequent application of the established inclusion and exclusion criteria.

A preliminary analysis of the Selected studies reveals a notable heterogeneity in the proposed approaches. In particular, a significant number of studies cannot be strictly classified within a single topic or thematic category. This is due to the broad scope of many proposals, which integrate multiple conceptual perspectives and combine diverse techniques drawn from different domains, such as software engineering, artificial intelligence, and adaptive computing.

The multidimensional nature of the analyzed studies highlights the inherent complexity of the problem under investigation and justifies the adoption of a flexible classification scheme capable of capturing the coexistence of mixed approaches and techniques within a single proposal. Consequently, the categorization presented in the subsequent sections should not be interpreted as mutually exclusive, but rather as an analytical instrument intended to emphasize the main contributions and dominant trends identified in the literature.

The following section presents a synthesized analysis of the selected studies aimed at addressing the defined research questions (RQs). The synthesis is structured to facilitate its subsequent integration into formal academic writing.

\subsection{RQ1: How has the self-design of systems been addressed within the context of SES?}

The concept of self-design has been addressed primarily by transforming software into an active participant in its own life cycle, shifting architectural and implementation decisions to runtime.

\begin{itemize}
    %\item \textbf{El Software como Diseñador:} Se ha propuesto un enfoque fundacional donde el sistema actúa como un miembro de su propio equipo de diseño. [Porter] \cite{Porter2024SelfDesigning} introduce el concepto de "software que se diseña a sí mismo" (Self-designing software), capaz de razonar sobre su propia estructura y sintetizar nuevas variantes de sus bloques de construcción (building blocks) en tiempo real mediante técnicas de "hot-swapping" y aprendizaje continuo. [Rodrigues] \cite{Filho2016RuntimeFramework} expande esto con un marco de trabajo que utiliza aprendizaje no supervisado para descubrir qué ensamblajes de componentes funcionan mejor bajo condiciones cambiantes.
    \item \textbf{The Software as Designer:} A foundational approach has been proposed in which the system functions as a member of its own design team. \cite{Porter2024SelfDesigning} introduces the concept of "self-designing software," which is capable of reasoning about its own structure and synthesizing new variants of its building blocks in real time using hot-swapping and continuous learning techniques. \cite{Filho2016RuntimeFramework} elaborates on this with a framework that utilizes unsupervised learning to ascertain which component assemblies demonstrate optimal performance under changing conditions.
    
    
    %\item \textbf{De la Adaptación a la Evolución:} [Weyns] \cite{WeynsDannyFromSelf-Adaptation}\cite{DannyWeyns2015SoftwareArchitecture} argumenta que la autoadaptación tradicional está limitada por el Dominio de Diseño Operativo (ODD) inicial. Para abordar el auto-diseño real, se propone la "Auto-Evolución", donde el sistema extiende su ODD autónomamente para manejar condiciones no anticipadas, utilizando almacenes de computación y motores evolutivos.
    \item \textbf{From Adaptation to Evolution:} \cite{WeynsDannyFromSelf-Adaptation}\cite{DannyWeyns2015SoftwareArchitecture} proposes that conventional self-adaptation is constrained by the initial Operational Design Domain (ODD). To address the concept of true self-design, he proposes a system known as "Self-Evolution," in which the system autonomously extends its ODD to handle unanticipated conditions, utilizing computational stores and evolutionary engines.
    
    %\item \textbf{Conciencia y Reflexión:} [Lewis]\cite{Lewis2015ArchitecturalAspects} y [Faniyi]\cite{FaniyiArchitectingSelf-Aware} abordan el diseño desde la psicología cognitiva, proponiendo arquitecturas "auto-conscientes" (Self-aware) que poseen conocimiento público y privado para gestionar compensaciones (trade-offs) complejas. [Frank Jose Affonso]\cite{FrankJos2024AReferenceArchitecture} propone arquitecturas de referencia basadas en la reflexión computacional (RA4SaS), permitiendo que el sistema inspeccione y modifique su meta-modelo en tiempo de ejecución.
    \item \textbf{Awareness and Reflection:} \cite{Lewis2015ArchitecturalAspects} and \cite{FaniyiArchitectingSelf-Aware} adopt a cognitive psychology perspective in their approach to design, proposing self-aware architectures that possess public and private knowledge to manage complex trade-offs. \cite{FrankJos2024AReferenceArchitecture} proposes reference architectures based on computational reflection (RA4SaS), allowing the system to inspect and modify its meta-model at runtime.
    
    
    %\item \textbf{Planificación Automatizada:} [Gil] \cite{Gil2015AutomatedPlanning} y [Konstantinos A.] \cite{angelopoulosEngineeringSelfAdaptiveSoftware2018} abordan el auto-diseño mediante la planificación automatizada y el control predictivo de modelos (MPC), donde el sistema genera planes deliberados para alcanzar estados deseados frente a la incertidumbre.
    \item \textbf{Automated Planning:} \cite{Gil2015AutomatedPlanning} and \cite{angelopoulosEngineeringSelfAdaptiveSoftware2018}, self-design is achieved through automated planning and model predictive control (MPC). In such systems, deliberate plans are generated to achieve desired states in the face of uncertainty.



    %\item \textbf{Diseño Generativo Multi-Agente:} Recientemente, se ha abordado el auto-diseño mediante la simulación de roles humanos utilizando Modelos de Lenguaje Grande (LLMs). [Zhang] \cite{Zhang2025Knowledge-Based} propone el marco \textit{MAAD}, donde agentes de IA especializados (e.g., Arquitecto, Evaluador) colaboran y debaten para sintetizar arquitecturas de software completas a partir de requisitos, imitando el proceso cognitivo humano. De manera similar, [Rajendran] \cite{Rajendran2025AMulti-Agent} introduce entornos donde estos agentes negocian refactorizaciones complejas, moviendo el diseño de una actividad puramente algorítmica a una colaborativa-sintética.
    \item \textbf{Multi-Agent Generative Design:} Recently, self-design has been addressed by simulating human roles using Large Language Models (LLMs).\cite{Zhang2025Knowledge-Based} proposes the MAAD framework, where specialized AI agents (e.g., Architect, Evaluator) collaborate and debate to synthesize complete software architectures from requirements, mimicking the human cognitive process. Similarly, \cite{Rajendran2025AMulti-Agent} introduces environments where these agents negotiate complex refactorings, moving design from a purely algorithmic activity to a collaborative-synthetic one.

    %\item \textbf{Formalización Teórica del Diseño:} Para garantizar que el auto-diseño sea "correcto por construcción" (correct-by-construction), se ha abordado la necesidad de una teoría unificada. [Mohammadat] \cite{Mohammadat2023AModelof} introduce el "Modelo de Diseño" (MoD) basado en la Teoría de Categorías. Este enfoque trata el diseño no solo como una adaptación, sino como una estructura matemática decidible y coherente que mapea especificaciones funcionales y extra-funcionales a implementaciones, permitiendo razonar formalmente sobre la automatización del diseño antes de su ejecución.
    \item \textbf{Theoretical Formalization of Design:} In order to guarantee that self-design is "correct-by-construction," the necessity for a unified theory has been addressed. \cite{Mohammadat2023AModelof} introduces the "Model of Design" (MoD) based on Category Theory. This approach treats design not only as adaptation but also as a decidable and coherent mathematical structure that maps functional and extra-functional specifications to implementations. As a result, formal reasoning about design automation is possible before its execution.

    %\item \textbf{Diseño Automatizado de Algoritmos (AutoDes):} En un nivel de granularidad más fino, el auto-diseño se ha abordado como un problema de optimización combinatoria para la creación de algoritmos heurísticos y de aprendizaje automático. [Pillay] \cite{Pillay2021AutomatedDesign} y [Qu] \cite{Qu2020GeneralCombinatorial} definen marcos donde el sistema selecciona, configura y compone componentes algorítmicos (building blocks) para generar nuevos solucionadores (solvers) sin intervención humana, utilizando técnicas como la programación genética y la configuración automática (e.g., AutoMOEA descrito por [Bezerra] \cite{Bezerra2016AutomaticComponent}).
    \item \textbf{Automated Algorithm Design (AutoDes):} At a finer level of granularity, AutoDes has been approached as a combinatorial optimization problem for the creation of heuristic and machine learning algorithms. \cite{Pillay2021AutomatedDesign} and \cite{Qu2020GeneralCombinatorial} define frameworks in which the system selects, configures, and composes algorithmic components (building blocks) to generate new solvers without human intervention. These frameworks use techniques such as genetic programming and automatic configuration. One example is AutoMOEA, which is described by \cite{Bezerra2016AutomaticComponent}.

    %\item \textbf{Automatización del Diseño en Tiempo de Ejecución:} Se ha propuesto desdibujar la frontera entre el diseño en laboratorio y la operación. [Saidi] \cite{Saidi2022AutonomousSystems} argumenta que el auto-diseño implica trasladar las herramientas de Automatización de Diseño Electrónico (EDA) y exploración del espacio de diseño (DSE) al tiempo de ejecución (runtime). Esto se complementa con enfoques como DuSE de [Andrade] \cite{AndradeTowardSystematicConveying}, que sistematizan la exploración del espacio de diseño arquitectónico mediante optimización multiobjetivo para encontrar configuraciones Pareto-óptimas de manera autónoma ante cambios ambientales.
    \item \textbf{Runtime Design Automation:} The hypothesis that the distinction between laboratory design and operation should be obscured has been posited. \cite{Saidi2022AutonomousSystems} argument posits that the process of self-design entails the migration of Electronic Design Automation (EDA) and Design Space Exploration (DSE) tools to runtime. This approach is further refined by methodologies such as \cite{AndradeTowardSystematicConveying} Toward Systematic Conveying (DuSE), which employs multi-objective optimization to systematically explore architectural design spaces, thereby enabling the autonomous identification of Pareto-optimal configurations in response to environmental variations.

    %\item \textbf{Composición Impulsada por Conocimiento:} Para sistemas distribuidos como IoT, el auto-diseño se aborda mediante la integración semántica dinámica. [Burzlaff] \cite{noauthor_2019-px} y [Banerjee] \cite{BanerjeeAmarAKnowledgeDriven} proponen arquitecturas donde el sistema utiliza ontologías y bases de conocimiento para interpretar capacidades de dispositivos desconocidos y componer arquitecturas de control automáticamente, permitiendo una evolución "bottom-up" (de abajo hacia arriba) en lugar de un diseño "top-down" rígido.
    \item \textbf{Knowledge-Driven Composition:} In the context of distributed systems, such as the Internet of Things (IoT), the paradigm of self-design is addressed through the concept of dynamic semantic integration. \cite{noauthor_2019-px} and \cite{BanerjeeAmarAKnowledgeDriven} propose architectures where the system utilizes ontologies and knowledge bases to interpret the capabilities of unknown devices and automatically compose control architectures. This enables bottom-up evolution instead of rigid top-down design.


    
\end{itemize}


% Miguel REVISION ITERATIVA...
\subsection{RQ2: In what ways have traditional software design engineering processes been automated or made autonomous?}

The automation of design engineering has evolved significantly, transitioning from conventional approaches such as Model-Driven Engineering (MDE) and search-based software engineering (SBSE) towards the integration of Generative Artificial Intelligence (GenAI) and cognitive architectures. Presently, systems not only optimize predefined parameters but also employ artificial intelligence (AI) agents and natural language processing (NLP) models to synthesize design artifacts, explore complex solution spaces, and autonomously execute architectural decisions.

\textbf{SRQ2.1} In what ways has architectural self-design or the automation of architectural design been conceptualized, implemented, or evaluated in the literature?

The field of architectural design has emerged from a confluence of four predominant approaches: The following topics will be discussed in this paper: LLM-based multi-agent collaboration, evolutionary exploration of the design space, model-based formal synthesis, and runtime automated planning.

\begin{itemize}
    %\item \textbf{Agentes Cognitivos y GenAI:} La aplicación de LLMs ha permitido simular roles humanos en el diseño. [Zhang] \cite{Zhang2025Knowledge-Based} propone el marco \textit{MAAD}, donde agentes especializados (Analista, Modelador, Diseñador, Evaluador) colaboran para sintetizar planos arquitectónicos completos a partir de requisitos (SRS). Complementando esto, [Rajendran] \cite{Rajendran2025AMulti-Agent} introduce un entorno donde agentes negocian compromisos entre atributos de calidad (seguridad vs. rendimiento) mediante subastas y consenso. Además, [Guntupalli] \cite{GuntupalliIntegratingGenerative} presenta un "Asistente de IS" que utiliza Generación Aumentada por Recuperación (RAG) para transformar requisitos en Documentos de Diseño (DesDocs) detallados, mientras que [Pangavhane] \cite{Pangavhane2024AI-Augmented} destaca el uso de GenAI para la creación rápida de prototipos de alto nivel y diagramas arquitectónicos.
    \item \textbf{Cognitive Agents and Generative AI:} The application of large language models (LLMs) has enabled the simulation of human roles in design. \cite{Zhang2025Knowledge-Based} proposes the MAAD framework, in which specialized agents (i.e., Analyst, Modeler, Designer, and Evaluator) collaborate to synthesize complete architectural plans from requirements (i.e., SRS). In addition, \cite{Rajendran2025AMulti-Agent} proposes a system in which agents engage in negotiations to establish trade-offs between quality attributes (e.g., security vs. performance) through the use of auctions and consensus. Additionally, \cite{GuntupalliIntegratingGenerative} work, as cited in [GuntupalliIntegratingGenerative], incorporates an "IS Wizard" that utilizes Retrieval Augmented Generation (RAG) to transform requirements into detailed Design Documents (DesDocs). Similarly, \cite{Pangavhane2024AI-Augmented} research, as referenced in [Pangavhane2024AI-Augmented], underscores the efficacy of Generative AI in facilitating the rapid generation of high-level prototypes and architectural diagrams.
    
    %\item \textbf{Búsqueda Evolutiva y Exploración del Espacio de Diseño:} Se utilizan metaheurísticas para descubrir y optimizar estructuras. [Ramirez] \cite{RAMIREZ2015234} aplica algoritmos evolutivos para "descubrir" arquitecturas de componentes a partir de diagramas de clases. [Andrade] \cite{AndradeTowardSystematicConveying} sistematiza este enfoque con la herramienta \textit{DuSE}, que explora espacios de diseño arquitectónico mediante optimización multiobjetivo para encontrar configuraciones Pareto-óptimas que satisfagan metas de calidad en sistemas auto-adaptativos.

    %\item \textbf{Refactorización y Optimización Matemática:} Para mejorar diseños existentes, [Houichime] \cite{Houichime2024Optimized} introduce \textit{ODR}, un marco que utiliza números complejos y curvas de Hilbert para representar y refactorizar diseños orientados a objetos de manera eficiente. [Porter] \cite{Porter2024SelfDesigning} lleva esto al tiempo de ejecución con "software que se diseña a sí mismo", capaz de buscar y sintetizar variantes de implementación (e.g., algoritmos alternativos) en tiempo real mediante aprendizaje continuo y "hot-swapping".

    %\item \textbf{Formalización y Planificación Automatizada:} Para garantizar la corrección del diseño automatizado, [Mohammadat] \cite{Mohammadat2023AModelof} propone un "Modelo de Diseño" (MoD) basado en Teoría de Categorías para formalizar la transición de especificación a implementación. En el ámbito de la auto-adaptación, [Gil] \cite{Gil2015AutomatedPlanning} utiliza planificación automatizada (PDDL) para generar secuencias de acciones arquitectónicas, y [Affonso] \cite{FrankJos2024AReferenceArchitecture} presenta \textit{RA4SaS}, una arquitectura de referencia que utiliza reflexión computacional para "desmontar" y "reensamblar" entidades de software automáticamente en tiempo de ejecución.

    
\end{itemize}

\textbf{SRQ2.2} How has the notion of interface self-design or automated interface design been generated or approached in existing research?

La automatización del diseño de interfaces se ha abordado desde dos perspectivas complementarias: la integración semántica de interfaces máquina-máquina (especialmente en sistemas distribuidos como IoT y CPS) y la generación adaptativa de interfaces humano-computadora (HCI). Ambas vertientes convergen en el uso de ontologías y modelos de conocimiento para desacoplar la especificación de la interfaz de su implementación técnica.

\begin{itemize}
    %\item \textbf{Integración Semántica Evolutiva:} [Burzlaff] \cite{noauthor_2019-px} propone el método "Knowledge-driven Architecture Composition" (KDAC) para abordar la incertidumbre en interfaces IoT. A diferencia de los enfoques revolucionarios que exigen estándares completos a priori, KDAC permite una formalización incremental ("bottom-up") de las reglas de integración. El sistema utiliza razonamiento lógico (basado en OWL-DL) para inferir mapeos faltantes entre interfaces de dispositivos heterogéneos, permitiendo que la composición de la arquitectura evolucione a medida que se descubre nuevo conocimiento semántico sobre los puntos finales.
    
    %\item \textbf{Reconfiguración Dinámica de Interfaces de Control:} [Banerjee] \cite{BanerjeeAmarAKnowledgeDriven} introduce una arquitectura impulsada por el conocimiento (KDA) que utiliza una "Ontología de Capacidades" (Capability Ontology) para estandarizar las interfaces funcionales de máquinas en sistemas ciberfísicos. Este enfoque permite sintetizar controladores automáticamente al emparejar las capacidades requeridas por un flujo de trabajo con las interfaces ofrecidas por los dispositivos disponibles. Además, emplea "Tipos de Sesión" (Session Types) para formalizar y verificar los protocolos de interacción, asegurando que la reconfiguración dinámica de las interfaces de control sea correcta y libre de errores de comunicación.

    %\item \textbf{Adaptación Contextual de Interfaces de Usuario (UI):} [Fedasyuk] \cite{FedasyukDmytro2022TheUseofOntology} presenta un método para la modificación dinámica de interfaces gráficas (GUI) en sistemas auto-adaptativos sin necesidad de reconfiguración estática. Su enfoque utiliza una ontología que modela la relación entre componentes funcionales y elementos visuales, permitiendo al sistema generar configuraciones de interfaz personalizadas en tiempo de ejecución basándose en el perfil del usuario y las características del dispositivo activo (e.g., móvil vs. escritorio).

    %\item \textbf{Generación de GUI mediante IA Generativa:} [Yalciner] \cite{Yalner2025} y [Pangavhane] \cite{Pangavhane2024AI-Augmented} destacan el uso emergente de IA Generativa para automatizar el diseño visual. Se emplean modelos para la "Recuperación de GUI" (encontrar diseños existentes basados en descripciones textuales) y la "Recomendación de Diseño de Usuario", donde la IA sugiere distribuciones óptimas alineadas con las necesidades del usuario, agilizando el prototipado y la implementación de interfaces frontend.

    %\item \textbf{Verificación Formal de Interfaces:} En el ámbito de la corrección del diseño, [Afanasyev] \cite{AfanasyevControlofUML} propone métodos basados en gramáticas de autómatas gráficos para el control sintáctico y semántico de diagramas de interfaces (como en UML). Esto automatiza la detección de errores de inconsistencia lógica y semántica en el diseño de interfaces de sistemas automatizados antes de su implementación.

    
\end{itemize}

\textbf{SRQ2.3} To what extent has component self-design or automated component design been explored and addressed in prior studies?

El diseño de componentes se ha abordado mediante estrategias que van desde la síntesis inspirada en biología y el descubrimiento evolutivo hasta la composición semántica y la verificación formal de tiempo real:

\begin{itemize}

    %\item \textbf{Síntesis Biológica y Ciclo de Vida:} [Sophatsathit] \cite{Sophatsathit2024ABiological} propone una arquitectura inspirada en la biología celular (BASS), donde los componentes son entidades autónomas diseñadas como bloques de tamaño fijo con un ciclo de vida estricto (creación, sostenimiento, cese). El sistema realiza un "reemplazo in situ" (replacement in situ) de componentes que alcanzan su tiempo de vida límite (TTL), similar a la regeneración celular, permitiendo un auto-diseño continuo y eficiente en el uso de memoria sin la sobrecarga de la recolección de basura tradicional.
    
    %\item \textbf{Descubrimiento Evolutivo de Arquitectura:} [Ramirez] \cite{RAMIREZ2015234} utiliza algoritmos evolutivos para "descubrir" automáticamente la arquitectura de componentes a partir de modelos de análisis detallados (como diagramas de clases). Su enfoque agrupa clases en componentes lógicos maximizando métricas de diseño como la densidad de acoplamiento intra-modular (ICD) y la relación grupos/componentes (GCR), automatizando la identificación de los límites arquitectónicos óptimos.

    %\item \textbf{Síntesis de Variantes en Ejecución:} [Porter] \cite{Porter2024SelfDesigning} describe un enfoque de "software que se diseña a sí mismo", capaz de sintetizar nuevas variantes de implementación de componentes (por ejemplo, algoritmos de ordenamiento o políticas de caché) basándose en el aprendizaje de trazas de ejecución. El sistema utiliza "hot-swapping" para intercambiar estos componentes en tiempo real, adaptando el diseño interno a las condiciones cambiantes del entorno.

    %\item \textbf{Diseño Basado en Capacidades (Capability-Driven):} Para sistemas ciberfísicos, [Banerjee] \cite{BanerjeeAmarAKnowledgeDriven} introduce un enfoque donde el diseño del software de control se sintetiza automáticamente mediante el emparejamiento de requisitos de flujo de trabajo con una "Ontología de Capacidades" de los dispositivos disponibles. Esto permite la selección y composición dinámica de componentes de hardware/software, asegurando la sincronización correcta mediante tipos de sesión (session types).

    %\item \textbf{Modelado y Verificación de Tiempo Real:} [Gobillot] \cite{Gobillot2018ADesign} presenta una metodología (MAUVE) para el diseño de componentes en robótica que separa explícitamente el "shell" (interfaces de flujo de datos y parámetros) del "core" (máquinas de estado de comportamiento). Esta separación permite la generación automática de código y el análisis preciso de tiempos de ejecución (WCET/WCRT) para garantizar la seguridad antes del despliegue.

    %\item \textbf{Reutilización Inteligente:} [Qayyum] \cite{Qayyum2021DataMining} y [Priyadarshni] \cite{WangooDivanshi2018ArtificialIntelligence} exploran el uso de técnicas de IA como redes neuronales y algoritmos de clustering (K-means) para automatizar la identificación y recuperación de componentes de software reutilizables en grandes repositorios, clasificándolos según métricas de calidad y funcionalidad.
    
\end{itemize}


\textbf{SRQ2.4} How have approaches to data structure self-design or automated data structure design been defined and investigated in the literature?

El diseño automatizado de estructuras de datos se aborda desde tres perspectivas: la optimización lógica de clases (Class Responsibility Assignment), la selección dinámica de implementaciones en tiempo de ejecución y la generación de esquemas de persistencia y memoria.

\begin{itemize}

    %\item \textbf{Asignación de Responsabilidades y Agrupamiento Lógico:} [Javidi] \cite{JavidiSemi-Automatic} utiliza un enfoque híbrido de "Imperialist Competitive Algorithm" y búsqueda tabú (ICA-TS) para resolver el problema de asignación de responsabilidades (CRA). Este método agrupa automáticamente atributos y métodos en clases para maximizar la cohesión y minimizar el acoplamiento. De manera similar, [Houichime] \cite{Houichime2024Optimized} emplea una representación matemática basada en números complejos para mover atributos (datos) entre clases de forma autónoma, optimizando la estructura interna del software sin intervención humana directa.
    
    %\item \textbf{Selección y Variación en Tiempo de Ejecución:} [Porter] \cite{Porter2024SelfDesigning} demuestra cómo el software puede "autodiseñarse" seleccionando la implementación de estructura de datos más eficiente (por ejemplo, cambiando entre una Lista Enlazada y un Array redimensionable) basándose en el perfil de lectura/escritura observado en tiempo real. Complementando esto, [Rajendran] \cite{Rajendran2025AMulti-Agent} introduce un "Performance Agent" basado en LLMs que analiza el código para recomendar cambios de estructuras de datos ineficientes (e.g., listas) por otras más rápidas (e.g., tablas hash) para reducir la complejidad computacional.

    %\item \textbf{Diseño de Persistencia y Esquemas de Datos:} La automatización se extiende al diseño de almacenamiento. [Affonso] \cite{FrankJos2024AReferenceArchitecture} presenta un módulo de "Anotación de Persistencia" dentro de la arquitectura RA4SaS que mapea automáticamente entidades de software a esquemas de bases de datos relacionales, generando la capa de persistencia completa. Por su parte, [Banerjee] \cite{BanerjeeAmarAKnowledgeDriven} utiliza "Ontologías de Capacidad" como estructuras de datos dinámicas (grafos de conocimiento) para modelar y reconfigurar el estado del sistema en entornos IoT.

    %\item \textbf{Estructuras de Memoria Biológicas:} Desde una perspectiva experimental, [Sophatsathit] \cite{Sophatsathit2024ABiological} propone la arquitectura BASS (Biological-like Architecture), que rediseña la estructura de datos fundamental de los componentes de software. En lugar de estructuras dinámicas complejas, utiliza bloques lineales de tamaño fijo con un ciclo de vida estricto (creación, sostenimiento, cese) para imitar células biológicas, eliminando la necesidad de recolección de basura y optimizando el acceso a memoria.
    
\end{itemize}



\textbf{SRQ2.5} How has algorithm self-design or automated algorithm design been addressed?

Este campo, conocido como Diseño Automatizado de Algoritmos (AutoAD), ha evolucionado desde la selección de plantillas fijas hacia la generación libre de código mediante modelos de lenguaje y arquitecturas neuronales híbridas:

\begin{itemize}

    %\item \textbf{Marcos de Trabajo y Plantillas Configurables:} [Bezerra] \cite{Bezerra2016AutomaticComponent}\cite{Leonardo2020Automatically} desarrolla "AutoMOEA" y su extensión "AutoMOEA+", marcos que descomponen los algoritmos evolutivos multiobjetivo en componentes abstractos (e.g., apareamiento, reemplazo, archivos). AutoMOEA+ permite seleccionar incluso el motor evolutivo subyacente (GA vs. Evolución Diferencial) y formula el propio diseño del algoritmo como un problema de optimización multiobjetivo (tratando métricas en conflicto como hipervolumen e IGD simultáneamente). Similarmente, [Qu] \cite{Qu2020GeneralCombinatorial} y [Pillay] \cite{Pillay2021AutomatedDesign} formalizan el "Problema General de Optimización Combinatoria" (GCOP) para estandarizar la composición de componentes algorítmicos elementales.
    
    %\item \textbf{Optimización Neuronal Híbrida (NCO):} [Ma] \cite{LiangMa2024Ahybridneural} propone el marco HNCO, que hibrida el diseño constructivo (usando Modelos de Atención para generar soluciones iniciales) con el diseño perturbativo. Utiliza Aprendizaje por Refuerzo Profundo (DRL) para seleccionar dinámicamente componentes de tres grupos: mejora, perturbación y, notablemente, un "pool de predicción" (basado en RNN/LSTM) que aprende patrones de óptimos locales históricos para predecir nuevas soluciones algorítmicas.

    %\item \textbf{Aprendizaje de Transiciones y Componentes:} [Yi] \cite{Yi2023Automateddesign}\cite{Yi2023Automatedalgorithm} investiga el diseño automatizado dentro de un Marco de Búsqueda General (GSF). Emplea algoritmos de Actor-Crítico con entropía (ACE) y Cadenas de Markov para aprender no solo qué operador usar, sino las transiciones óptimas entre operadores de evolución y heurísticas de selección, descubriendo sinergias ocultas que el diseño manual suele pasar por alto.

    %\item \textbf{Generación y Evolución con LLMs:} [van Stein] \cite{vanStein2025CodeEvolution} introduce los "Code Evolution Graphs" (CEGs) para analizar cómo los LLMs (como en LLaMEA) diseñan algoritmos. Su análisis revela que los LLMs tienden a incrementar la complejidad del código (número de tokens) a lo largo de las generaciones y que diferentes modelos (GPT-3.5 vs GPT-4) poseen "huellas dactilares" de codificación distintas que exploran regiones disjuntas del espacio de diseño.

    %\item \textbf{Generación Autoregresiva:} [Zhao] \cite{Zhao2025AutomatedMetaheuristic} propone "ALDes", un diseñador que formula la creación de metaheurísticas como una tarea de generación de secuencias. Utiliza una red generativa autoregresiva (tipo Transformer) para escribir algoritmos completos token por token, permitiendo estructuras de longitud variable y bucles de control que rompen con las plantillas fijas tradicionales.
    
\end{itemize}

\subsection{RQ3: Which emerging terms or concepts are equivalent or close to self-design in the context of SES?}

La literatura reciente revela una taxonomía en expansión que va más allá de la simple adaptación, convergiendo hacia sistemas que diseñan, componen y evolucionan su propia estructura y lógica interna:

\begin{itemize}


    %\item \textbf{Self-Designing Software (Software Autodiseñado):} El término más directo, refiriéndose a sistemas que actúan como miembros de su propio equipo de ingeniería, sintetizando variantes de bloques de construcción y re-ensamblando su arquitectura en tiempo de ejecución [Porter] \cite{Porter2024SelfDesigning}, [Rodrigues] \cite{Filho2016RuntimeFramework}.
    %\item \textbf{Autonomous Systems Design (Diseño de Sistemas Autónomos):} Propuesto como una nueva disciplina de ingeniería que intersecciona la IA, el control y los sistemas ciberfísicos. Se diferencia de la automatización clásica en que el sistema posee flexibilidad en la toma de decisiones para alcanzar objetivos en entornos no definidos completamente a priori, requiriendo arquitecturas que evolucionen durante la operación [Saidi] \cite{Saidi2022AutonomousSystems}, [Farrell] \cite{Farrell2021Evolution}.

    %\item \textbf{Self-Evolving Computing Systems (Sistemas Computacionales Auto-Evolutivos):} Se distingue de la autoadaptación tradicional (limitada a un dominio de diseño operativo fijo) por su capacidad de extender autónomamente dicho dominio (ODD) para manejar incógnitas desconocidas ("unknown-unknowns") mediante motores evolutivos y almacenes de computación [Weyns] \cite{WeynsDannyFromSelf-Adaptation}.

    %\item \textbf{Automated Algorithm Design (AutoAD / AutoDes):} Un campo maduro enfocado en la creación automática de heurísticas y algoritmos de optimización. Incluye enfoques como la "Optimización Combinatoria Neuronal Híbrida" y la generación de código evolutivo mediante LLMs para crear solucionadores superiores a los diseñados por humanos [Qu] \cite{Qu2020GeneralCombinatorial}, [Pillay] \cite{Pillay2021AutomatedDesign}, [Yi] \cite{Yi2023Automateddesign}, [Ma] \cite{LiangMa2024Ahybridneural}, [van Stein] \cite{vanStein2025CodeEvolution}, [Zhao] \cite{Zhao2025AutomatedMetaheuristic}.

    %\item \textbf{AI-Augmented \& Generative Software Engineering (Ingeniería de Software Generativa y Aumentada por IA):} El uso de IA Generativa (GenAI) y LLMs no solo para asistir, sino para automatizar la síntesis de documentos de diseño (DesDocs), la generación de código y la arquitectura mediante agentes cognitivos que simulan roles humanos [Yalciner] \cite{Yalner2025}, [Zhang] \cite{Zhang2025Knowledge-Based}, [Ahmed] \cite{Ahmed2025ArtificialIntelligence}, [Pangavhane] \cite{Pangavhane2024AI-Augmented}, [Guntupalli] \cite{Guntupalli2024Integrating}.

    %\item \textbf{Knowledge-Driven Architecture Composition (Composición de Arquitectura Impulsada por Conocimiento):} Un enfoque emergente en IoT y CPS donde el diseño del sistema (la composición de sus componentes e interfaces) se infiere dinámicamente en tiempo de ejecución utilizando ontologías y razonamiento semántico para integrar dispositivos heterogéneos sin intervención humana [Burzlaff] \cite{noauthor_2019-px}, [Banerjee] \cite{Banerjee2024Knowledge-Driven}, [Fedasyuk] \cite{FedasyukDmytro2022TheUseofOntology}.

    %\item \textbf{Self-Aware Computing (Computación Auto-Consciente):} Sistemas que mantienen modelos explícitos de sí mismos (públicos y privados) y utilizan este conocimiento para razonar sobre compensaciones (trade-offs) arquitectónicas y tomar decisiones de auto-expresión [Lewis] \cite{Lewis2015ArchitecturalAspects}, [Faniyi] \cite{FaniyiArchitectingSelf-Aware}, [Reichhuber] \cite{Reichhuber2017Opportunistic}.

    %\item \textbf{Search-Based Software Engineering (SBSE):} La aplicación de metaheurísticas (como algoritmos genéticos) para resolver problemas complejos de diseño de software, tratándolos como problemas de búsqueda en un espacio de soluciones, aplicado frecuentemente en la refactorización y el descubrimiento de arquitecturas [Ramirez] \cite{RAMIREZ2015234}, [Houichime] \cite{Houichime2024Optimized}.

    %\item \textbf{Self-Architecting Software (Software Auto-Arquitectónico):} Sistemas capaces de razonar sobre su propia topología y estructura de componentes para satisfacer requisitos de calidad de servicio (QoS), explorando espacios de diseño de manera autónoma [Andrade] \cite{Andrade2013Toward}, [Gil] \cite{Gil2015AutomatedPlanning}.

    %\item \textbf{Model of Design (MoD):} Una formalización teórica basada en la Teoría de Categorías que busca hacer que el proceso de diseño sea "decidible y coherente", estableciendo las bases matemáticas para la automatización completa desde la especificación hasta la implementación [Mohammadat] \cite{Mohammadat2023ModelOfDesign}.
    
\end{itemize}

%Aqui voy Ing. Miguel.... Traduccion y revisión!
%Aqui voy Ing. Miguel.... Escritura
%Aqui voy Ing. Miguel.... Escritura en Español
	\section{Discussion}
	
	\subsection{Interpretación y comparación con literatura previa}
    
	Compara tus hallazgos con revisiones anteriores y teorías existentes.

    Despite clear and widely accepted definitions of software design, the field still lacks comprehensive proposals capable of automating this process end-to-end, from requirements interpretation to the generation of the resulting architectural design.
    
    Although the literature reports numerous autonomic computing approaches focused on specific capabilities such as adaptation, self-configuration, or self-healing, these efforts typically concentrate on isolated mechanisms or on particular stages of the software lifecycle. In contrast, the fundamental activity of \emph{designing} a system’s architecture—understood as the systematic derivation of architectural structures from requirements under explicit software engineering criteria—continues to be treated predominantly as a manual or human-assisted activity rather than as a fully integrated autonomous capability.


    
	\subsection{Implicaciones teóricas y prácticas}
	Discute el impacto para la ingeniería de software, la IA autónoma y sistemas auto-adaptativos.
	
	\subsection{Limitaciones y amenazas a la validez}
	Describe sesgos potenciales en la búsqueda o extracción de datos.
	
	\section{Threats to Validity}
	
	
	
	\section{Conclusion and Future Work}
	
	\subsection{Síntesis de hallazgos principales}
	Resume los puntos clave obtenidos en la revisión.
	
	\subsection{Contribución}
	Menciona la novedad o utilidad de la revisión para el desarrollo de arquitecturas autodiseñadas.
	
	\subsection{Recomendaciones y líneas futuras de investigación}
	Líneas de investigación abiertas derivadas de los hallazgos.
	