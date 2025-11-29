#CitaLatex 
@article{AlAli2022Aguidetodesign,
  title = {A guide to design uncertainty-aware self-adaptive components in Cyber–Physical Systems},
  volume = {128},
  ISSN = {0167-739X},
  url = {http://dx.doi.org/10.1016/j.future.2021.10.027},
  DOI = {10.1016/j.future.2021.10.027},
  journal = {Future Generation Computer Systems},
  publisher = {Elsevier BV},
  author = {Al-Ali,  Rima and Bulej,  Lubomír and Kofroň,  Jan and Bureš,  Tomáš},
  year = {2022},
  month = mar,
  pages = {466–489}
}

Referencia del archivo original: `(Rima Al-Ali) A guide to design uncertainty-aware self-adaptive components in.pdf` [[(Rima Al-Ali) A guide to design uncertainty-aware self-adaptive components in.pdf]]

El documento seleccionado es el artículo **"A guide to design uncertainty-aware self-adaptive components in Cyber–Physical Systems"** (Una guía para diseñar componentes autoadaptativos conscientes de la incertidumbre en Sistemas Ciberfísicos), escrito por Rima Al-Ali, Lubomír Bulej, Jan Kofroň y Tomáš Bureš.

Este trabajo es un **estudio sistemático de proyectos científicos europeos** liderados por la industria, cuyo objetivo es proporcionar una guía para el diseño de componentes autoadaptativos conscientes de la incertidumbre en los Sistemas Ciberfísicos (CPS). Los autores buscan sintetizar las relaciones entre las características del sistema, los tipos de incertidumbres y los métodos utilizados para manejarlas.

### Resumen Completo del Documento

**1. Contexto y Problema Central (Incertidumbre en CPS Colectivos):** Los Sistemas Ciberfísicos (CPS), especialmente los Smart CPS (sCPS) que surgen del auge de Industry 4.0 e IoT, son inherentemente complejos y requieren un **comportamiento cooperativo** entre dispositivos. Estos sistemas deben adaptarse a entornos cambiantes para lograr sus objetivos, pero la toma de decisiones de adaptación en tiempo de ejecución se complica por las **incertidumbres inherentes** asociadas a los datos y el conocimiento del entorno. El diseño de CPS es difícil y la identificación de las incertidumbres y los métodos adecuados para manejarlas está a menudo "confundida por la terminología, el contexto y los requisitos específicos del dominio".

**2. Metodología de Revisión Sistemática (SLR):** Para crear una base de conocimiento reutilizable y generalizable, los autores realizaron una revisión sistemática (_Systematic Literature Review_, SLR) centrada en **demostradores industriales** de proyectos de la UE (FP7-ICT y Horizon2020-ICT). Este estudio es **atípico** porque se basa en los _deliverables_ de los proyectos, en lugar de solo artículos científicos revisados por pares, para asegurar la relevancia industrial y la existencia de demostradores reales. Los proyectos seleccionados debían cumplir tres aspectos esenciales de sCPS: **Autoadaptación** (uso de bucles de retroalimentación), **Cooperación** (comportamiento colectivo y coordinación distribuida) y **Interacción con el Mundo Físico** (capacidades de detección y actuación).

**3. Clasificaciones de Resultados (RQ1, RQ2 y RQ3):** La revisión se estructuró para responder a tres preguntas de investigación (RQ):

- **RQ1: Dominios Típicos:** Los 23 casos de uso seleccionados cubren dominios como Fábrica Inteligente, Tráfico y Transporte, Hogares y Edificios, Redes y Energía, Robótica, Crisis y Emergencia, y Nubes. Los dominios más frecuentes son **Tráfico y Transporte Inteligente** y **Redes y Energía Inteligentes**.
- **RQ2: Desafíos (Propiedades):** Los desafíos se agruparon según propiedades del sistema. Las propiedades más abordadas en los sCPS colectivos son **Rendimiento (_Performance_)** y **Resiliencia (_Resilience_)**.
- **RQ3: Relación entre Incertidumbres y Adaptación:** Se clasificaron las fuentes de incertidumbre (ej. **Aprendizaje Automático** y **Recursos Cambiantes** son las más comunes), los tipos de incertidumbre (ej. **Violación de Límites Operacionales**, **Redes y Retrasos**, y **Fallos** son los más comunes), y los métodos utilizados para manejarlas:
    - Los métodos más comunes son **Estadística y Probabilidad** (HU2), **Aprendizaje Automático y Redes Neuronales** (HU4).
    - Desde la perspectiva de la autoadaptación, la mayoría de los tipos de incertidumbre se originan en la **parte Cibernética** del CPS y el modo de adaptación predominante es la **Adaptación de Parámetros** en un entorno **Descentralizado**.

**4. El Marco y la Guía de Diseño Propuestos:** Basándose en el mapeo de los resultados y el uso de **Redes Bayesianas** para modelar las influencias probabilísticas entre los dominios, las propiedades y los métodos, los autores proponen una **guía de diseño** sistemática para desarrolladores.

- **Fundamento Arquitectónico:** La guía se basa en el concepto de **Componentes de Servicio (SC)** que forman **Conjuntos de Componentes de Servicio (SCE)** dinámicos para lograr la cooperación.
- **Modelo de Adaptación:** Utiliza el bucle **MAPE-K** (_Monitoring, Analyzing, Planning, Executing_ sobre el _Knowledge_) como modelo central. La innovación es que el enfoque se centra en cómo las incertidumbres impactan el **Conocimiento** (Knowledge) y, por lo tanto, la toma de decisiones.
- **Proceso de la Guía:** Los pasos incluyen identificar las partes clave del componente (propiedades, modos), identificar las **situaciones límite** (_border situations_), extraer fuentes y tipos de incertidumbre (usando la red bayesiana para apoyo), seleccionar los métodos para manejarlas, y finalmente determinar las **reglas de adaptación** (ej. cambio de modo) usando una notación ligera que representa los umbrales y operadores.
- **Demostración:** El uso de la guía se demuestra con un ejemplo del proyecto **OrPHEuS** (gestión de energía híbrida), mostrando cómo la guía ayuda a los desarrolladores a probar diferentes opciones y considerar soluciones de otros dominios.

**5. Conclusiones y Valor:** El estudio concluye que el diseño de sCPS conscientes de la incertidumbre es una tarea desalentadora. Al proporcionar un **mapa sistemático** de las incertidumbres y los métodos de mitigación utilizados en la industria, el trabajo simplifica este aspecto del diseño. La guía resultante ayuda a los desarrolladores a construir reglas de autoadaptación considerando explícitamente las incertidumbres.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de un nuevo enfoque sistemático y la validez de la guía de diseño propuesta se basan en las siguientes ideas clave:

1. **La Incertidumbre es Inevitable y Central en el Diseño de CPS Colectivos, y su Manejo es Inseparable de la Ingeniería de _Software_**: La conclusión de que el diseño es "desalentador" se fundamenta en que las incertidumbres son inherentes a los sCPS y que el éxito de la adaptación depende de manejar la información imperfecta. Los problemas de incertidumbre surgen en todas las etapas del ciclo de vida y están ligadas a **atributos de calidad** (como Rendimiento y Resiliencia, los más comunes).
2. **Los Métodos para Manejar la Incertidumbre (Estadística, ML) deben Seleccionarse Sistemáticamente en Función del Contexto, la Propiedad y la Autonomía del Sistema:** La conclusión de proporcionar una guía se basa en la observación de que la elección de métodos (ej. HU2, HU4) depende de múltiples factores arquitectónicos. El estudio muestra que el **dominio y las propiedades** tienen una fuerte relación con los **tipos de incertidumbre**, mientras que el **grado de autonomía y las técnicas de adaptación** se alinean fuertemente con la selección de los **métodos**. Esta interdependencia justifica la necesidad de un marco de decisión sistemático (la Red Bayesiana).
3. **La Conciencia de la Incertidumbre debe Operacionalizarse en el Modelo de Adaptación (MAPE-K) Centrándose en el Conocimiento (_Knowledge_):** La conclusión sobre la utilidad de la guía propuesta se basa en el principio de que, si bien el bucle MAPE-K es el modelo estándar, no especifica cómo lidiar con las incertidumbres. El enfoque de los autores se centra en cómo la incertidumbre afecta directamente los **datos almacenados en el _Knowledge_** del componente, que luego influye en la decisión de adaptación. Al identificar estos vínculos, la guía permite al desarrollador construir **reglas de adaptación (cambio de modo)** que son conscientes de la incertidumbre a través de umbrales y métodos de mitigación.

---

### Valor del Paper

El artículo **"A guide to design uncertainty-aware self-adaptive components in Cyber–Physical Systems"** es de un **alto valor metodológico y práctico** para la Ingeniería de _Software_ y la Arquitectura de Sistemas Ciberfísicos:

- **Base de Conocimiento Única y Relevante para la Industria:** El valor clave reside en el uso de los **_deliverables_ de proyectos de la UE** liderados por la industria como fuentes primarias. Esto garantiza que la información extraída y la guía propuesta se basen en **problemas y soluciones reales** adoptadas en el dominio industrial, ofreciendo una perspectiva más práctica que las revisiones basadas únicamente en artículos académicos.
- **Mapeo Exhaustivo de Incertidumbres y Métodos:** El estudio proporciona un mapeo detallado que conecta **dominios, desafíos, fuentes de incertidumbre, tipos de incertidumbre y métodos de manejo** (ej. las clasificaciones de S1-S10, U1-U8 y HU1-HU7). Este conocimiento es invaluable para los desarrolladores que buscan soluciones en dominios cruzados.
- **Marco de Diseño Operacional:** La introducción de la **Guía de Diseño** y el **Marco Basado en Redes Bayesianas** proporciona una metodología sistemática para la toma de decisiones. Esto permite a los desarrolladores, especialmente aquellos con menos experiencia, **cuantificar la influencia de la incertidumbre** y seleccionar las técnicas de mitigación más adecuadas para garantizar la confiabilidad del sistema.

El _paper_ ofrece una herramienta esencial, actuando como un **"mapa de riesgos y soluciones"** para los arquitectos de sistemas ciberfísicos. En lugar de enfrentar la complejidad de un entorno dinámico a ciegas, el desarrollador puede consultar este mapa para ver qué tipos de terremotos (incertidumbres) son comunes en su región (dominio y propiedad) y qué técnicas de construcción (métodos de ML, estadística, etc.) han sido exitosas en otros lugares para garantizar que su estructura (su componente autoadaptativo) sea segura y operativa.
