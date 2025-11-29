#CitaLatex 
@inproceedings{Zhang2025Knowledge-Based,
  series = {FSE Companion ’25},
  title = {Knowledge-Based Multi-Agent Framework for Automated Software Architecture Design},
  url = {http://dx.doi.org/10.1145/3696630.3728493},
  DOI = {10.1145/3696630.3728493},
  booktitle = {Proceedings of the 33rd ACM International Conference on the Foundations of Software Engineering},
  publisher = {ACM},
  author = {Zhang,  Yiran and Li,  Ruiyin and Liang,  Peng and Sun,  Weisong and Liu,  Yang},
  year = {2025},
  month = jun,
  pages = {530–534},
  collection = {FSE Companion ’25}
}

Referencia del archivo original: `(Yiran Zhang) Knowledge-Based Multi-Agent Framework for Automated Software Architecture Design.pdf` [[(Yiran Zhang) Knowledge-Based Multi-Agent Framework for Automated Software Architecture Design.pdf]]

El documento seleccionado presenta el artículo **"Knowledge-Based Multi-Agent Framework for Automated Software Architecture Design"** (Marco Multi-Agente Basado en Conocimiento para el Diseño Automatizado de Arquitectura de _Software_).

Este trabajo propone un marco conceptual, denominado **MAAD** (Multi-Agent Architecture Design), para automatizar el proceso de diseño de la arquitectura de _software_ utilizando la colaboración de múltiples agentes impulsados por Grandes Modelos de Lenguaje (LLMs).

### Resumen Completo del Documento

**1. El Problema del Diseño de Arquitectura:** La arquitectura de _software_ es fundamental, ya que sirve como plano (_blueprint_) para garantizar que los sistemas sean escalables, mantenibles y se alineen con los objetivos de negocio definidos en la Especificación de Requisitos de _Software_ (SRS). Tradicionalmente, este proceso es manual, costoso, requiere mucha experiencia humana y puede ser inconsistente. Aunque los agentes basados en LLMs han tenido éxito en otras tareas de ingeniería de _software_, la automatización del proceso de diseño de arquitectura permanecía en gran medida inexplorada. Los enfoques existentes que utilizan LLMs con estrategias simples de _zero-shot prompting_ a menudo generan contenido alucinatorio.

**2. La Solución Propuesta: El Marco MAAD (Multi-Agent Architecture Design):** Para llenar este vacío, el marco MAAD simula los roles de los arquitectos humanos en el proceso de diseño tradicional utilizando una colaboración entre cuatro agentes especializados. La colaboración multi-agente está diseñada para mejorar la **confiabilidad y la creatividad** en comparación con los enfoques de agente único.

**3. Roles y Colaboración de los Agentes:** El proceso de diseño en MAAD comienza con el SRS de entrada y sigue un ciclo de colaboración:

- **Agente Analista (_Analyst_):** Analiza el SRS para extraer, filtrar y clasificar los requisitos (funcionales y no funcionales). Es crucial para **filtrar los requisitos significativos para la arquitectura (ASRs)**, identificar riesgos potenciales (ej., descripciones ambiguas o atributos conflictivos) y documentar las restricciones.
- **Agente Modelador (_Modeler_):** Modela la arquitectura general basándose en los requisitos refinados. Genera **Decisiones Arquitectónicas** (ej., la selección de tecnología, estilos y patrones), **Vistas Lógicas Conceptuales** (dominios clave) y **Vistas Físicas Conceptuales** (topología de despliegue).
- **Agente Diseñador (_Designer_):** Refina las vistas conceptuales en diseños detallados, sirviendo como plano para la implementación del código. Sus resultados clave incluyen **Diagramas UML** (diagramas de clases, diagramas de secuencia) y diagramas de despliegue, definiendo responsabilidades e interacciones de los módulos.
- **Agente Evaluador (_Evaluator_):** Evalúa rigurosamente los artefactos generados por los otros agentes para garantizar la alineación con el SRS. Si se encuentran discrepancias, el Evaluador genera **informes de análisis de desajustes** (_mismatch analysis_), identifica la **causa raíz** y sugiere refinamientos. El proceso concluye cuando el Evaluador confirma la alineación de todos los artefactos.

**4. Inyección de Conocimiento (Knowledge-Based):** Para empoderar a los agentes y mitigar las alucinaciones, MAAD integra conocimiento explícito extraído de tres fuentes primarias:

- **Diseños Existentes y Prácticas:** Utilizando herramientas de recuperación de arquitectura y análisis estático/dinámico para correlacionar arquitecturas con métricas de calidad (ej., rendimiento, escalabilidad).
- **Literatura Autorizada:** Extrayendo principios, estilos, patrones, marcos de mitigación de riesgos y guías de diseño modular de libros de texto y estándares (como ISO/IEC).
- **Expertos en Arquitectura:** Capturando el conocimiento tácito, los _trade-offs_ prácticos y las tendencias emergentes mediante técnicas de elicitación estructurada (ej., método Delphi).

Este conocimiento facilita las tareas de los agentes, por ejemplo, ayudando al Analista a identificar ASRs o al Modelador a seleccionar patrones adecuados según los _trade-offs_ de calidad.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad y la viabilidad del marco MAAD para automatizar el diseño de arquitecturas de _software_ se fundamentan en las siguientes ideas clave:

1. **La Colaboración Multi-Agente es el Mecanismo Necesario para Lograr Confiabilidad y Creatividad en el Diseño Complejo:** La conclusión de que MAAD puede automatizar el diseño se fundamenta en la idea de que la colaboración de múltiples agentes LLM especializados (Analyst, Modeler, Designer, Evaluator) **mejora la confiabilidad y la creatividad** en comparación con los LLMs de agente único que son propensos a las alucinaciones. Este enfoque simula la colaboración humana estructurada, lo que es esencial para tareas complejas.
2. **El Conocimiento de Dominio (Knowledge-Based) es Indispensable para Groundear las Decisiones y Garantizar la Calidad de la Arquitectura Generada:** La conclusión de que el sistema puede producir diseños de alta calidad se basa en la **inyección sistemática de conocimiento** extraído de tres fuentes clave (proyectos existentes, literatura autorizada y expertos). Este conocimiento externo permite a los agentes tomar decisiones fundamentadas sobre _trade-offs_, patrones y restricciones, lo que aborda la preocupación por la **opacidad y la falta de confianza** en el Contenido Generado por Inteligencia Artificial (AIGC).
3. **La Adopción de un Proceso Iterativo de Evaluación-Refinamiento (Evaluation-Refinement) Garantiza la Alineación con los Requisitos del Negocio:** La conclusión de que el diseño final será escalable y mantenible se basa en la inclusión del **Agente Evaluador**. Este agente asegura la coherencia al verificar continuamente los artefactos (ej., Diagramas UML) contra el SRS de entrada y al iniciar un ciclo de refinamiento si se encuentran desajustes o fallos de diseño.

---

### Valor del Paper

El artículo **"Knowledge-Based Multi-Agent Framework for Automated Software Architecture Design"** ofrece un valor significativo como un trabajo de visión (_vision paper_) y un marco conceptual:

- **Rellena un Vacío Crítico:** Aborda la brecha en la automatización del diseño de la arquitectura de _software_, un paso crucial para lograr la **automatización completa y eficiente** del desarrollo de sistemas a nivel de aplicación (_end-to-end_).
- **Marco Estructurado y Replicable:** Propone una estructura clara y detallada con roles de agentes bien definidos (Analyst, Modeler, Designer, Evaluator) que reflejan el proceso de diseño humano. Esto proporciona una **hoja de ruta concreta** para la implementación futura de sistemas de diseño de arquitectura.
- **Enfoque en la Fiabilidad y Trazabilidad:** Al incorporar explícitamente la inyección de conocimiento y un bucle de evaluación riguroso, el marco está diseñado para mitigar las debilidades conocidas de los LLMs (alucinación), aumentando la **confiabilidad y la confianza** en los artefactos arquitectónicos generados por la IA.
- **Identificación de Desafíos Futuros:** El _paper_ contribuye a la investigación al destacar desafíos críticos, como la necesidad de diseñar **protocolos robustos de coordinación y comunicación** para la resolución de conflictos entre agentes, y la importancia de la escalabilidad y la adaptabilidad de los flujos de trabajo dinámicos.

El marco MAAD es conceptualmente similar a un **equipo de consultores expertos en arquitectura**, donde cada miembro (Analista, Modelador, Diseñador, Evaluador) se especializa en una fase del proyecto y se comunica para refinar el diseño. A diferencia de un solo arquitecto de IA que podría "inventar" información (alucinación), este equipo de IA está "conectado a la biblioteca universal de arquitectura" (las tres fuentes de conocimiento) y se audita continuamente a sí mismo, garantizando que el diseño final sea estructuralmente sólido y cumpla con todos los requisitos del cliente.
