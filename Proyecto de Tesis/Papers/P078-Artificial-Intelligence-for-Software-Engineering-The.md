#CitaLatex 
@article{AhmedIftekhar2025ArtificialIntelligencefor,
author = {Ahmed, Iftekhar and Aleti, Aldeida and Cai, Haipeng and Chatzigeorgiou, Alexander and He, Pinjia and Hu, Xing and Pezz\`{e}, Mauro and Poshyvanyk, Denys and Xia, Xin},
title = {Artificial Intelligence for Software Engineering: The Journey So Far and the Road Ahead},
year = {2025},
issue_date = {June 2025},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
volume = {34},
number = {5},
issn = {1049-331X},
url = {https://doi.org/10.1145/3719006},
doi = {10.1145/3719006},
abstract = {Artificial intelligence and recent advances in deep learning architectures, including transformer networks and large language models, change the way people think and act to solve problems. Software engineering, as an increasingly complex process to design, develop, test, deploy, and maintain large-scale software systems for solving real-world challenges, is profoundly affected by many revolutionary artificial intelligence tools in general and machine learning in particular. In this roadmap for artificial intelligence in software engineering, we highlight the recent deep impact of artificial intelligence on software engineering by discussing successful stories of applications of artificial intelligence to classic and new software development challenges. We identify the new challenges that the software engineering community has to address in the coming years to successfully apply artificial intelligence in software engineering, and we share our research roadmap toward the effective use of artificial intelligence in the software engineering profession, while still protecting fundamental human values.We spotlight three main areas that challenge the research in software engineering: the use of generative artificial intelligence and large language models for engineering large software systems, the need of large and unbiased datasets and benchmarks for training and evaluating deep learning and large language models for software engineering, and the need of a new code of digital ethics to apply artificial intelligence in software engineering.},
journal = {ACM Trans. Softw. Eng. Methodol.},
month = may,
articleno = {119},
numpages = {27},
keywords = {Automated Software Development, Machine Learning, Large Language Models, Artificial Intelligence, Explainable AI, Ethical AI}
}

Referencia del archivo original: `(Iftekhar Ahmed) Artificial Intelligence for Software Engineering The.pdf` [[(Iftekhar Ahmed) Artificial Intelligence for Software Engineering The Journey so Far and the Road Ahead.pdf]]

El documento seleccionado es el artículo **"Artificial Intelligence for Software Engineering: The Journey So Far and the Road Ahead"** (Inteligencia Artificial para la Ingeniería de Software: El Camino Recorrido y el Horizonte), cuyos autores son Iftekhar Ahmed, Aldeida Aleti, Haipeng Cai, Alexander Chatzigeorgiou, y otros.

Este trabajo es un **informe de hoja de ruta (_roadmap paper_)** que examina el impacto profundo de la Inteligencia Artificial (IA), el Aprendizaje Profundo (DL), y los Modelos de Lenguaje Grande (LLMs) en la Ingeniería de _Software_ (SE). El objetivo es destacar las historias de éxito, identificar los desafíos pendientes y trazar una hoja de ruta de investigación hasta 2030.

### Resumen Completo del Documento

**1. El Impacto Transformador de la IA en SE:** La IA está ejerciendo una influencia profunda en el complejo proceso de SE, que abarca el diseño, desarrollo, prueba, despliegue y mantenimiento de sistemas de _software_ a gran escala. Herramientas de IA generativa como OpenAI ChatGPT, GitHub Copilot y Amazon CodeWhisperer son la punta del _iceberg_ de esta intensa actividad de entrenamiento de modelos en vastos corpus de datos (incluyendo código fuente).

El DL afecta todas las actividades del ciclo de vida del _software_:

- **Requisitos y Diseño:** Se utilizan modelos DL (como redes siamesas profundas y redes neuronales convolucionales) para la **clasificación de requisitos**, extracción, trazabilidad y la generación de requisitos a partir de texto.
- **Producción de Código Fuente:** Los LLMs son esenciales para tareas de clasificación, clasificación y generación de código. Los LLMs se usan en la **generación de código**, la **finalización de código** y el **resumen de código**. Sin embargo, la precisión del código generado depende de factores como el lenguaje y la complejidad de la tarea.
- **Pruebas de Software:** La IA generativa se aplica para generar **casos de prueba**, **oráculos de prueba** y entradas de prueba del sistema.
- **Operaciones de TI (AIOps):** La IA se emplea en tareas como la **detección de anomalías**, el triaje de incidentes y el análisis de la causa raíz. Un desafío clave es cómo aprovechar la **longitud limitada del contexto** de los LLMs para manejar grandes volúmenes de datos en tiempo de ejecución de sistemas industriales.
- **Análisis de Programas:** Los LLMs, con su capacidad de generalización y uso de datos multidimensionales, pueden ayudar a superar los desafíos de escala, complejidad y diversidad del lenguaje en el análisis de programas clásicos.

**2. Desafíos Técnicos Abiertos (Hoja de Ruta):** El documento destaca tres áreas principales que desafían la investigación en SE:

- **A. Generación y Aplicación de LLMs:**
    
    - **Ingeniería de _Prompts_:** Es difícil diseñar _prompts_ que optimicen el rendimiento de los LLMs en tareas de SE, ya que el código fuente difiere del lenguaje natural. Es un desafío abierto combinar _prompts_ con información específica del dominio para abordar tareas de SE de manera efectiva.
    - **Integración:** Es necesario combinar la tecnología LLM pre-entrenada con el **análisis de programas clásico** para mejorar la eficiencia y precisión y superar la explosión de espacio de los algoritmos tradicionales.
- **B. Evaluación y Explicabilidad (XAI):**
    
    - **Evaluación Objetiva:** Es urgente establecer un **sistema de evaluación eficaz, objetivo y completo** para los LLMs para código, que vaya más allá de las métricas funcionales e incluya **seguridad, robustez y consistencia**. El problema principal es la **falta de oráculos de prueba** (especificaciones legibles por ordenador) para verificar la corrección de los sistemas basados en DL.
    - **IA Explicable (XAI):** La naturaleza de **"caja negra"** de muchos modelos DL disminuye la confianza. XAI es fundamental para la **confiabilidad**, la **trazabilidad** de las decisiones y el cumplimiento de regulaciones como el GDPR. Un enfoque prometedor para la transparencia es la IA Neurosimbólica, que combina el reconocimiento de patrones con el razonamiento lógico.
- **C. Calidad de Datos y Benchmarks:**
    
    - **Datasets de Alta Calidad:** Se necesitan **datasets grandes, de alta calidad, éticamente obtenidos y sin sesgos** para entrenar y ajustar (fine-tune) los LLMs. Los datasets actuales son limitados en tamaño o son "simplificados y poco realistas".
    - **Conocimiento de Dominio:** Los LLMs de propósito general fallan al no comprender la **semántica del código** de manera contextual o sensible al contexto. El conocimiento de dominio es esencial para que los LLMs entiendan el contexto, reduzcan el espacio de búsqueda y corrijan las percepciones erróneas.
    - **Benchmarks:** Los _benchmarks_ disponibles públicamente son a menudo **obsoletos, demasiado pequeños o demasiado simples** para reflejar la complejidad industrial (especialmente en AIOps).

**3. Desafíos Organizacionales y Éticos:** La integración de IA introduce nuevos desafíos éticos, legales y laborales.

- **Seguridad y Riesgo:** El código generado por herramientas de inteligencia de código (como Copilot) a menudo exhibe **vulnerabilidades** (hasta el 40% en un estudio).
- **Aspectos Legales:** Hay incertidumbre sobre las **violaciones de licencias** cuando los modelos producen copias de código de sus datos de entrenamiento, y sobre la **titularidad (_copyright_)** del código generado.
- **Impacto en la Profesión:** La IA **automatizará tareas repetitivas** (codificación básica, pruebas manuales), llevando a la **comoditización de las habilidades de codificación**. Por otro lado, la **demanda de personas expertas en arquitectura y diseño de soluciones** se disparará. La educación universitaria debe adaptarse para incluir ética de la IA, ML y ciencia de datos.
- **Ética y Sesgo:** Los algoritmos de IA son **susceptibles a sesgos** que pueden perpetuar desigualdades sociales. Es crucial un nuevo **código de ética digital**.

**4. Horizonte de Investigación 2030:** La visión para 2030 implica una **colaboración fluida y ética entre humanos y IA**. Los desafíos clave se centran en:

1. **Uso Efectivo de IA Generativa:** Adaptar LLMs a tareas específicas de SE e integrarlos con conocimiento de dominio y enfoques clásicos.
2. **Creación de Datasets y Benchmarks:** Generar datasets de gran volumen, alta calidad y sin sesgos, superando los desafíos de etiquetado.
3. **Colaboración Humano-IA:** Formar equipos híbridos, interpretando adecuadamente las decisiones de la IA (XAI), y definiendo el **código de ética** para la SE impulsada por IA.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones presentadas en la hoja de ruta, que sugieren una adaptación fundamental de la disciplina de SE, se fundamentan en las siguientes ideas clave:

1. **La Inconsistencia y la Falta de Contexto Limitante a los LLMs en SE:** La conclusión de que los LLMs todavía no son prácticamente adoptables para tareas específicas de SE se basa en el hecho de que su rendimiento es limitado por el **escaso contexto** que pueden manejar de los grandes volúmenes de datos de tiempo de ejecución (AIOps) y su incapacidad actual para **comprender la semántica rigurosa del código** de manera contextual, a diferencia del lenguaje natural.
2. **La Fiabilidad del Software Impulsado por IA Exige Transparencia y Datos Impecables:** La conclusión de que la calidad y la confianza son desafíos primordiales se fundamenta en la experiencia de que los sistemas de DL tienen una naturaleza de **"caja negra"**, lo que impide el uso de métodos formales de garantía de calidad (QA) y **socava la confianza**. Esto hace que la **IA Explicable (XAI)** sea una necesidad urgente y que los sistemas dependan fundamentalmente de **datasets grandes y libres de sesgos**, cuya ausencia es una limitación principal.
3. **El Éxito Futuro de SE Reside en la Arquitectura y la Ética, No en la Codificación Básica:** La conclusión sobre la evolución de la profesión se basa en la predicción de que la IA **comoditizará las habilidades básicas de codificación** y automatizará las tareas repetitivas. El valor de los profesionales se trasladará al **diseño de soluciones y la arquitectura**, lo que impulsa la necesidad de **normas éticas claras** y la **reestructuración de los planes de estudio universitarios**.

---

### Valor del Paper

El artículo **"Artificial Intelligence for Software Engineering: The Journey So Far and the Road Ahead"** es un documento de alto valor para la comunidad de Ingeniería de _Software_ y la investigación en IA:

- **Mapa Estratégico para la Investigación (Hoja de Ruta 2030):** Su valor principal radica en que es un **documento de hoja de ruta** que identifica los **desafíos técnicos y organizacionales abiertos**, proporcionando una dirección de investigación estructurada hasta 2030, que incluye preguntas abiertas detalladas (Open Challenges) en áreas críticas como la evaluación de LLMs, la XAI, los _datasets_ y la ética.
- **Análisis Integral del Ciclo de Vida del Software (SDLC):** Ofrece una visión completa de cómo la IA impacta en **cada fase del ciclo de vida del _software_**, desde los requisitos (clasificación y extracción) hasta el mantenimiento (AIOps).
- **Concientización sobre Seguridad y Riesgos Éticos:** El trabajo es valioso al cuantificar y enfatizar los riesgos críticos, como la **alta tasa de vulnerabilidades** en el código generado por IA y la necesidad de una **regulación ética y legal** para abordar el sesgo, la propiedad intelectual y la explotación no autorizada de datos.

Este _roadmap_ es esencialmente un **plano arquitectónico para el futuro de la ingeniería de _software_**. No solo muestra dónde están los ladrillos (el código) y las herramientas (los LLMs), sino que, de manera crucial, resalta dónde faltan los cimientos (los _datasets_ de alta calidad), dónde están las grietas (la falta de oráculos de prueba y la caja negra) y qué nuevas regulaciones (el código de ética) deben implementarse para construir sistemas que sean seguros, fiables y éticos.
