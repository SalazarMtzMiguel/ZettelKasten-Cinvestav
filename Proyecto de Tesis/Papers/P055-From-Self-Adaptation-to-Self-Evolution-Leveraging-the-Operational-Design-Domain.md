#CitaLatex 
@INPROCEEDINGS{WeynsDannyFromSelf-Adaptation,
  author={Weyns, Danny and Andersson, Jesper},
  booktitle={2023 IEEE/ACM 18th Symposium on Software Engineering for Adaptive and Self-Managing Systems (SEAMS)}, 
  title={From Self-Adaptation to Self-Evolution Leveraging the Operational Design Domain}, 
  year={2023},
  volume={},
  number={},
  pages={90-96},
  abstract={Engineering long-running computing systems that achieve their goals under ever-changing conditions pose significant challenges. Self-adaptation has shown to be a viable approach to dealing with changing conditions. Yet, the capabilities of a self-adaptive system are constrained by its operational design domain (ODD), i.e., the conditions for which the system was built (requirements, constraints, and context). Changes, such as adding new goals or dealing with new contexts, require system evolution. While the system evolution process has been automated substantially, it remains human-driven. Given the growing complexity of computing systems, human-driven evolution will eventually become unmanageable. In this paper, we provide a definition for ODD and apply it to a self-adaptive system. Next, we explain why conditions not covered by the ODD require system evolution. Then, we outline a new approach for self-evolution that leverages the concept of ODD, enabling a system to evolve autonomously to deal with conditions not anticipated by its initial ODD. We conclude with open challenges to realise self-evolution.},
  keywords={Automation;Adaptive systems;Autonomous systems;Ecosystems;Computer architecture;Complexity theory;Software engineering;Self-adaptation;operational design domain;system evolution;self-evolution},
  doi={10.1109/SEAMS59076.2023.00022},
  ISSN={2157-2321},
  month={May},}


Referencia del archivo original: `(Danny Weyns) From Self-Adaptation to Self-Evolution Leveraging the Operational Design Domain.pdf` [[(Danny Weyns) From Self-Adaptation to Self-Evolution Leveraging the Operational Design Domain.pdf]]

El documento seleccionado es el artículo **"From Self-Adaptation to Self-Evolution Leveraging the Operational Design Domain"** de Danny Weyns y Jesper Andersson.

Este artículo aborda el desafío de diseñar sistemas informáticos de larga duración que puedan alcanzar sus objetivos bajo condiciones cambiantes, proponiendo un **nuevo enfoque de auto-evolución** que aprovecha el concepto de Dominio de Diseño Operacional (ODD).

A continuación, se presenta un resumen completo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Problema:** La ingeniería de sistemas informáticos de larga duración que deben funcionar bajo condiciones en constante cambio presenta desafíos significativos. La **auto-adaptación** (_Self-adaptation_) es un enfoque viable que permite a un sistema gestionar la incertidumbre y la continuidad del negocio de forma autónoma o con mínima supervisión humana. Sin embargo, la capacidad de un sistema auto-adaptativo para manejar estos cambios está inherentemente limitada por su **Dominio de Diseño Operacional (ODD)**, que se define como las condiciones (requisitos, restricciones y contexto) para las cuales el sistema fue construido inicialmente.

Cualquier condición que esté **fuera del ODD** requiere una **evolución del sistema**. Si bien el proceso de evolución del _software_ se ha automatizado sustancialmente en la última década, sigue siendo fundamentalmente **impulsado por humanos** (_human-driven_). Dada la creciente complejidad de los sistemas informáticos, esta dependencia humana se volverá inmanejable con el tiempo.

**2. Definición del Dominio de Diseño Operacional (ODD):** Los autores definen el ODD de un sistema $S$ como las condiciones para las cuales fue construido, es decir:

- **Requisitos ($R$):** Requisitos funcionales y de calidad que el sistema debe lograr.
- **Restricciones ($B$):** Restricciones que deben tenerse en cuenta durante la construcción del sistema.
- **Contexto ($C$):** Contexto en el que debe operar el sistema.

El $ODD_S$ se define formalmente como el conjunto de puntos de trabajo $(u, c)$ donde $u$ es la utilidad proporcionada por el sistema en un contexto operacional $c$ que satisface las condiciones de diseño $(R, B, C)$.

**3. Auto-Adaptación vs. Evolución:**

- **Auto-Adaptación:** Se realiza mediante un **sistema gestor (_managing system_)** que cambia la configuración del sistema gestionado (_managed system_). Este cambio permite al sistema conmutar entre diferentes regiones del ODD que satisfacen la utilidad y el contexto, lidiando así con cambios _anticipados_. El diseño del sistema auto-adaptativo cubre el ODD inicial.
- **Evolución:** Las condiciones no cubiertas por el ODD inicial (cambios no anticipados, como nuevos requisitos o contextos) requieren la **extensión del ODD** mediante la evolución del sistema.

**4. El Enfoque Propuesto: Auto-Evolución (Self-Evolution):** El artículo propone un nuevo enfoque para la auto-evolución que permite a un sistema **evolucionar de forma autónoma** para hacer frente a condiciones no anticipadas. La clave es utilizar el concepto de ODD como representación de un **objetivo de evolución (_evolution target_)**.

- **Objetivo de Evolución ($ODD_e$):** Es el área del ODD que el sistema debe cubrir para gestionar las nuevas condiciones. El ODD del sistema después de la evolución ($ODD_{S_e}$) es la unión del ODD inicial ($ODD_{S_i}$) y el objetivo de evolución ($ODD_e$).

**5. Arquitectura Conceptual para Sistemas Auto-Evolutivos:** La arquitectura propuesta (Figura 9) se centra en tres pasos clave de la auto-evolución:

1. **Detección:** El sistema utiliza la capa de **Detección de Anomalías y Novedades (_Anomaly and novelty detection_)** para identificar cambios no anticipados que pueden llevar el sistema a un punto de trabajo fuera del ODD.
2. **Determinación:** El **Motor Evolutivo (_Evolutionary Engine_)** utiliza el objetivo de evolución ($ODD_e$) para determinar una nueva configuración del sistema. Explora el **Almacén de Computación (_Computing Warehouse_)** para encontrar elementos habilitados para la auto-evolución (_auto-evolution-enabled elements_). Estos elementos tienen una **hoja de datos (_data sheet_)** que representa el objetivo de evolución que cubren, y una **guía de uso (_usage guide_)** para la integración.
3. **Ejecución (_Enactment_):** Una vez identificada una nueva arquitectura que satisface el objetivo de evolución, la **Ejecución de Evolución (_Evolution Enactment_)** la implementa, posiblemente desplegando nuevos elementos del Almacén de Computación e integrándolos en el sistema en ejecución.

La arquitectura también incluye la capa de **Conciencia de Contexto y Sí Mismo basada en ODD (_ODD-based Self- and Context-Awareness_)** y la capa de **Guía Humana (_Human Guidance Layer_)**, ya que se puede requerir la intervención de expertos para añadir nuevos objetivos o restricciones.

**6. Desafíos Abiertos:** El _paper_ concluye con varios desafíos necesarios para materializar la auto-evolución:

- Establecer el concepto de **Almacén de Computación** y la especificación de sus hojas de datos y guías de uso.
- Especificar la **Conciencia de Contexto basada en ODD**, lidiando con el hecho de que las fronteras del ODD son a menudo inciertas (zonas _known-known's_, _known-unknown's_ y _unknown-unknown's_).
- Necesidad de nuevos mecanismos de **Detección de Anomalías y Novedades** y su vinculación con el ODD.
- Desarrollar **mecanismos de resolución semántica** para el Motor Evolutivo.
- Sincronizar la ejecución de la nueva arquitectura para que el sistema gestionado y el sistema gestor evolucionen en tándem.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ —que la auto-evolución es necesaria y que el ODD es la clave para lograrla— se basan en las siguientes ideas fundamentales:

1. **La Insuficiencia Inevitable de la Auto-Adaptación (Límite del ODD):** La conclusión de la necesidad de la auto-evolución se basa en la premisa de que la auto-adaptación solo puede manejar cambios _anticipados_ y está limitada por el **ODD inicial** del sistema. Los **cambios no anticipados** (nuevos requisitos o contextos) que caen **fuera de este ODD** requieren fundamentalmente una **extensión arquitectónica y, por lo tanto, la evolución del sistema**.
2. **La Inmanejabilidad de la Evolución Humana en Sistemas Complejos:** La justificación para automatizar la evolución (auto-evolución) se fundamenta en el argumento de que la **creciente complejidad** de los sistemas modernos hace que la evolución impulsada por humanos sea insostenible a largo plazo.
3. **El ODD como Métrica Cuantificable del Progreso de la Evolución:** El uso del **ODD como Objetivo de Evolución ($ODD_e$)** es la idea central para la implementación de la auto-evolución. El ODD proporciona la **métrica de detención (_stopping criterion_)** necesaria para que el sistema evalúe y decida cuándo se cumplen las nuevas condiciones o requisitos. El ODD define qué área funcional y contextual debe cubrir la nueva arquitectura.

---

### Valor del Paper

El valor del artículo **"From Self-Adaptation to Self-Evolution Leveraging the Operational Design Domain"** es sustancial por varias razones:

- **Definición de un Nuevo Paradigma:** El _paper_ formaliza el concepto de **auto-evolución** y proporciona la primera **arquitectura conceptual** para su realización. Esto establece un nuevo horizonte de investigación más allá del campo maduro de la auto-adaptación.
- **Contribución Teórica del ODD:** El trabajo es valioso por **aplicar y formalizar el concepto de ODD** (tomado principalmente de los vehículos autónomos) al contexto de los sistemas auto-adaptativos, y por demostrar cómo el ODD puede servir como el **objetivo de evolución** necesario para la automatización.
- **Hoja de Ruta para la Investigación Futura:** Al delinear claramente los **desafíos abiertos** (como el Almacén de Computación, la gestión de incertidumbre del ODD y los motores evolutivos), el _paper_ sirve como un documento fundamental para guiar a los investigadores con diferentes antecedentes a colaborar en el desarrollo de sistemas verdaderamente autónomos y en constante evolución.

El artículo actúa como un puente evolutivo: si la auto-adaptación fue la solución para manejar los cambios _conocidos_ y _anticipados_ (trabajar dentro de la caja), la auto-evolución es la solución para expandir la caja misma, permitiendo que los sistemas se rediseñen continuamente para gestionar los _desconocidos_ y _no anticipados_ al mapear el nuevo objetivo de diseño en el ODD.