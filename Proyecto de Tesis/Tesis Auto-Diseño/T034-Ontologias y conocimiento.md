Los siguientes documentos se centran explícitamente en el uso de ontologías y sistemas de representación del conocimiento para el diseño, la adaptación y la reconfiguración de software:

**1. Ontologías para la Modificación de Sistemas Auto-adaptativos** Los artículos de **Dmytro Fedasyuk et al.** (_"Method of modification of self-adaptive software systems based on ontology"_ y _"The Use of Ontology in the Process of Designing Adaptive Software Systems"_) se basan por completo en el uso de ontologías.

- Proponen un modelo conceptual y una meta-ontología de alto nivel que representa los componentes principales del software abstraídos del dominio de aplicación.
- La ontología combina conjuntos de conceptos, relaciones, atributos e individuos para reaccionar dinámicamente a nuevos requisitos o necesidades del usuario.
- Utilizan **reglas semánticas (SWRL)** para que un motor de razonamiento (semantic reasoner) genere configuraciones óptimas y modifique la funcionalidad y la interfaz gráfica sin necesidad de recompilar o redesplegar el sistema.

**2. Ontología de Capacidades (Capability Ontology) para IoT y Sistemas Ciberfísicos (CPS)** El artículo **"(Amar Banerjee) A Knowledge-Driven Approach for Dynamic Reconfiguration..."** propone una arquitectura impulsada por el conocimiento para la reconfiguración dinámica en tiempo de ejecución.

- Utiliza una **Ontología de Capacidades** modelada en lenguajes de la Web Semántica como **OWL** y **TTL**.
- Representa el conocimiento sobre los dispositivos, sus comportamientos, flujos de trabajo y tipos de sesión, almacenando estos datos en un **Grafo de Conocimiento (Knowledge Graph)**.
- A través de consultas SPARQL y reglas semánticas, el sistema razona sobre este conocimiento para automatizar el diseño de controladores y sincronizar máquinas heterogéneas.

**3. Razonamiento Ontológico para Refactorización de Arquitecturas** En el trabajo **"(Nacha Chondamrongkul) Architectural Refactoring for Functional Properties in Evolutionary Architecture"**, se utilizan técnicas formales para automatizar la refactorización arquitectónica.

- Emplean el Lenguaje de Ontologías Web (**OWL**) para describir el modelo estructural de la arquitectura de software.
- Aplican **razonamiento ontológico** para garantizar que la estructura de los componentes y conectores refactorizados se ajusten a los patrones arquitectónicos predefinidos antes de realizar verificaciones de comportamiento.

**4. Bases de Conocimiento Simbólico en Diseño Multi-Agente** El artículo **"(Dam) Towards_Multi-Agentic_AI_for_automated_software_design..."** describe el "DM-Agent", cuyo módulo de memoria cuenta con una **base de conocimiento simbólico**. Esta base incluye elementos formales de representación como reglas de diseño, restricciones OCL y el metamodelo UML, lo que permite al sistema razonar, validar y transformar modelos arquitectónicos de forma consistente.

**5. Marcos de Conocimiento para el Diseño Arquitectónico Automatizado (LLMs)** El documento **"(Yiran Zhang) Knowledge-Based Multi-Agent Framework for Automated Software Architecture Design"** propone extraer y estructurar el **conocimiento arquitectónico** proveniente de tres fuentes: diseños de sistemas existentes, literatura técnica autorizada y arquitectos expertos (mediante PNL y métodos estructurados como Delphi). Esta representación del conocimiento se inyecta en los agentes basados en Modelos de Lenguaje Grande (LLMs) para que puedan razonar sobre restricciones, modelos de dominio y asignación de recursos.

**6. Motores de Conocimiento (Knowledge Engines) mediante Programación Lógica** El artículo **"(Patrick Day) Autonomic Feature Selection using Computational Intelligence"** integra un "Motor de Conocimiento" (Knowledge Engine) que funciona junto a redes neuronales.

- Utiliza una base de conocimientos constituida por hechos y reglas.
- Integra programación lógica con encadenamiento hacia adelante (basado en datos) y hacia atrás (orientado a objetivos) para inferir qué características están contribuyendo a que el sistema esté, por ejemplo, bajo un ataque, permitiendo la adaptación del comportamiento.

**7. Sistemas Basados en Conocimiento para Reutilización de Software** De manera más general, el documento **"(Divanshi Priyadarshni) Artificial Intelligence Techniques in Software Engineering..."** identifica a los **Sistemas Basados en Conocimiento (Knowledge Based Systems)** y el descubrimiento de conocimiento como la principal vía de inteligencia artificial para agrupar y lograr la reutilización inteligente de componentes de software (Software Reuse) a lo largo del ciclo de vida del desarrollo.