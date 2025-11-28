#CitaLatex 
@inproceedings{Liu2022ArtificialIntelligence,
  title = {Artificial Intelligence in Software Requirements Engineering: State-of-the-Art},
  url = {http://dx.doi.org/10.1109/IRI54793.2022.00034},
  DOI = {10.1109/iri54793.2022.00034},
  booktitle = {2022 IEEE 23rd International Conference on Information Reuse and Integration for Data Science (IRI)},
  publisher = {IEEE},
  author = {Liu,  Kaihua and Reddivari,  Sandeep and Reddivari,  Kalyan},
  year = {2022},
  month = aug,
  pages = {106–111}
}

Referencia del archivo original: `(Kaihua Liu) Artificial Intelligence in Software Requirements Engineering State-of-the-Art.pdf` [[(Kaihua Liu) Artificial Intelligence in Software Requirements Engineering State-of-the-Art.pdf]]

El documento seleccionado es el artículo de revisión **"Artificial Intelligence in Software Requirements Engineering: State-of-the-Art"** (Inteligencia Artificial en la Ingeniería de Requisitos de Software: Estado del Arte), escrito por Kaihua Liu, Sandeep Reddivari y Kalyan Reddivari.

El trabajo es una **revisión de literatura** publicada entre enero de 2015 y diciembre de 2021. Su objetivo es comprender cómo las técnicas de Inteligencia Artificial (IA), especialmente el Aprendizaje Automático (_Machine Learning_, ML) y el Procesamiento del Lenguaje Natural (_Natural Language Processing_, NLP), han avanzado el campo de la Ingeniería de Requisitos (RE).

A continuación, se presenta un resumen claro y completo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del _paper_.

### Resumen Completo del Documento

**1. Contexto y Problema (La Importancia de RE y sus Deficiencias):** La Ingeniería de Requisitos (RE), que es un subcampo de la Ingeniería de _Software_ (SE), es una actividad crucial en el ciclo de vida del desarrollo de _software_. Una mala ejecución de las fases de RE puede resultar en _software_ de baja calidad y altos costos de mantenimiento. La RE se encarga de identificar y comunicar el propósito de un sistema y su contexto de uso, documentando las condiciones o capacidades que el sistema debe poseer.

Aunque investigadores han aplicado previamente la IA a la RE, existe una comprensión insuficiente sobre el **rol específico de la IA en el proceso de RE** y cómo debería incorporarse para producir requisitos de alta calidad, claros y detallados.

**2. Técnicas de IA Aplicadas a RE (ML y NLP):** La revisión se centró principalmente en dos técnicas de IA:

- **Aprendizaje Automático (ML):** Permite a un sistema informático aprender de un conjunto de datos sin conocimiento previo, utilizando minería de datos para reconocer patrones. Las tareas incluyen el **aprendizaje supervisado** (ej., clasificación y regresión) y el **aprendizaje no supervisado** (ej., _clustering_ y redes neuronales).
- **Procesamiento del Lenguaje Natural (NLP):** Es una técnica computacional que analiza texto lingüístico para procesar lenguaje natural o voz, aplicando varios niveles de análisis (ej., _tokenization_, etiquetado de parte de la oración, corrección de errores gramaticales).

**3. Aplicaciones de IA en las Fases del Proceso de RE:**

El proceso de RE comienza con la **Elicitación y Análisis** de Requisitos. Esta actividad suele ser manual, depende de la experiencia del ingeniero y es propensa a errores. La IA se aplica aquí para:

- **Automatizar la Elicitación:** Se propuso un _chatbot_ de IA que utiliza NLP (extracción de entidades, clasificación de intención) para interactuar con los usuarios y hacer preguntas necesarias para formular requisitos claros y completos.
- **Analizar el _Feedback_ de la Multitud (CrowdRE):** Se utilizan técnicas de NLP (eliminación de signos de puntuación, lematización) y clasificadores (MNB, DT, RF) para extraer información útil de fuentes como **reseñas de aplicaciones** o **foros de usuarios** para identificar nuevos requisitos, _claims_ o características. El modelo BERT basado en red neuronal también se ha utilizado para la extracción de requisitos funcionales.
- **Clasificación Temprana:** Se utiliza CNN para clasificar el contenido como requisito o no-requisito.

La **Especificación** de Requisitos implica documentar y modelar formalmente los requisitos en un documento SRS (Software Requirements Specification). La IA se aplica aquí para:

- **Clasificación FR/NFR:** Es la aplicación más común. Se usan clasificadores (NB, J48, Bagging) y NLP para clasificar requisitos funcionales (FR) y no funcionales (NFR). Algunos estudios mostraron que el uso de NLP (extracción de características gramaticales, temporales y sentimentales) puede mejorar la clasificación de FR/NFR, mientras que otros encontraron que técnicas específicas de NLP (stemming y lematización) pueden degradar el rendimiento.
- **Priorización y Trazabilidad:** Clasificadores como J48 pueden utilizarse para **clasificar y priorizar nuevos requisitos** basándose en requisitos similares anteriores, lo que también ayuda a la trazabilidad.
- **Generación de Diagramas:** Las técnicas de NLP (NER) pueden utilizarse para extraer entidades con nombre para generar elementos de **casos de uso** o transformar requisitos textuales en una **ontología** para la generación de diagramas UML (ER, objeto, clase).

La **Validación** de Requisitos confirma que las especificaciones cumplen con los requisitos del usuario y no son ambiguas. La IA se aplica aquí para:

- **Detección de Ambigüedad:** Se usa NLP para extraer palabras clave que influyen en la ambigüedad, y clasificadores (RF, J48 DT) para clasificar los requisitos como ambiguos o inequívocos.
- **Validación de Modelos:** Se puede usar NLP (análisis lingüístico, resolución de correferencia) para extraer artefactos y relaciones del SRS para producir modelos de meta-uso para validar la documentación.

**4. Conclusión:** Existe una dirección clara en la aplicación de técnicas de NLP y aprendizaje supervisado (clasificación) a los documentos de requisitos. La IA tiene un alto potencial para liberar a los ingenieros de requisitos de las **tareas mundanas** (control de calidad, ambigüedad, clasificación) y permitirles centrarse en la **creatividad** del proceso de RE.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ sobre la adopción de IA en la RE y la dirección futura de la investigación se fundamentan en las siguientes ideas clave:

1. **La Transformación del Lenguaje Natural a Formatos Analizables es la Aplicación Principal de la IA en RE:** La conclusión sobre la dirección del campo se basa en el descubrimiento de que la mayoría de la investigación reciente (2015-2021) se centra en aplicar **NLP y ML supervisado (clasificación)** al **texto de requisitos**. Esto permite extraer significado adicional (ej., clasificar FR vs. NFR, ambiguo vs. inequívoco) y estructurar el lenguaje natural de las _stories_ de usuario o reseñas en formatos utilizables por la SE (ej., ontologías o elementos de casos de uso).
2. **La Intervención Temprana de la IA (Elicitación y Análisis) Minimiza la Dependencia Humana y Mejora la Calidad:** La conclusión de que la IA es valiosa se basa en la idea de que la **calidad del _software_** es inherentemente sensible a los defectos en la fase de RE. La IA, al automatizar tareas como la **detección de ambigüedad** y la **identificación de requisitos faltantes** a través de _chatbots_ o análisis de _crowd-feedback_, proporciona garantías de calidad continuas y tempranas, superando la dependencia de la **experiencia y el conocimiento del dominio** del ingeniero.
3. **La Manipulación de Texto es Crítica: El Éxito de ML Depende de las Técnicas de Preprocesamiento de NLP Aplicadas:** La necesidad de investigación futura se fundamenta en la observación de que las técnicas específicas de NLP utilizadas para el preprocesamiento del texto pueden **mejorar o degradar** el rendimiento de los algoritmos de ML. Esto subraya que la IA debe integrarse de manera cuidadosa y experimental, ya que no todas las técnicas de NLP son adecuadas para todas las tareas de clasificación de requisitos.

---

### Valor del Paper

El valor del artículo **"Artificial Intelligence in Software Requirements Engineering: State-of-the-Art"** es significativo para la comunidad de Ingeniería de _Software_ (SE) y la investigación en IA:

- **Mapeo del Estado del Arte:** Su valor principal radica en que proporciona un **resumen sistemático y actualizado** de la investigación en IA para RE, cubriendo un periodo crucial (2015-2021). La revisión identifica las **tendencias de aplicación específicas** (NLP y clasificación) para cada fase del proceso de RE (Elicitación, Especificación y Validación).
- **Orientación para la Investigación Futura:** El _paper_ define una dirección clara para el futuro, resaltando la necesidad de investigación en la **integración de manera holística** de las técnicas existentes y la necesidad de entender mejor el efecto de las técnicas de NLP en el rendimiento de ML.
- **Justificación de la Transformación del Rol del Ingeniero:** El trabajo justifica el valor de la IA en términos de productividad, al sugerir que la IA puede automatizar las **tareas "mundanas"** de clasificación y control de calidad, permitiendo que los ingenieros de requisitos se centren en la **creatividad** y el trabajo de dominio.

El artículo funciona como un **mapa de metro** que muestra cómo la Inteligencia Artificial (el tren rápido) ha comenzado a intersectar y complementar el antiguo sistema de transporte de la Ingeniería de Requisitos. El mapa ilustra que las "estaciones" de Elicitación, Especificación y Validación ahora están conectadas a nuevas tecnologías (NLP, ML), y aunque el viaje es más rápido, el _paper_ advierte que aún se necesita trabajo de ingeniería para asegurar que todas las conexiones sean estables y que el sistema se adapte de manera ética y eficiente.

