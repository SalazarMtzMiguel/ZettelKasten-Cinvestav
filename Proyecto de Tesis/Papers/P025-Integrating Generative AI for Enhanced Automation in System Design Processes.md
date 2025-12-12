#CitaLatex 
@article{AhmedArtificialIntelligence,
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

Lectura basada en [[(Iftekhar Ahmed) Artificial Intelligence for Software Engineering The Journey so Far and the Road Ahead.pdf]]


### Resumen del Paper: "Inteligencia Artificial para la Ingeniería de Software: El Viaje Hasta Ahora y el Camino por Delante"

Este documento es un **"roadmap paper" o una hoja de ruta** que analiza el profundo impacto que la Inteligencia Artificial (IA), especialmente los avances en Deep Learning y los Modelos Lingüísticos Grandes (LLMs), está teniendo en la Ingeniería de Software (SE). El objetivo es destacar los éxitos, identificar los desafíos técnicos y organizacionales más importantes, y proponer una agenda de investigación hacia el año 2030 para un uso efectivo y ético de la IA en la profesión.

---

### Ideas Clave para Evaluar

#### 1. Visión General: La IA como Fuerza Disruptiva en la Ingeniería de Software

El paper establece que la IA está cambiando fundamentalmente la forma en que se diseñan, desarrollan, prueban y mantienen los sistemas de software. Herramientas como ChatGPT, GitHub Copilot y Amazon CodeWhisperer son solo la punta del iceberg de un esfuerzo masivo por aplicar la IA a todo el ciclo de vida del software, desde los requisitos hasta el mantenimiento.

#### 2. Tres Grandes Áreas de Desafío

Los autores identifican tres áreas principales que definen la investigación actual y futura en la intersección de la IA y la SE:

- **Uso de la IA Generativa y los LLMs** para la ingeniería de sistemas de software a gran escala.
- La necesidad de **datasets y benchmarks de alta calidad**, grandes y sin sesgos para entrenar y evaluar los modelos de IA.
- La necesidad de un nuevo **código de ética digital** para regular la aplicación de la IA en la ingeniería de software.

#### 3. Desafíos Técnicos y Direcciones de Investigación

El paper detalla una serie de "Desafíos Abiertos" que son cruciales para el avance del campo:

- **Ingeniería de Prompts (Open Challenge-1):** El rendimiento de los LLMs depende críticamente de los prompts utilizados. Un desafío clave es cómo **diseñar y combinar prompts con información específica del dominio** para que sean efectivos en tareas de SE, ya que el código fuente es muy diferente del lenguaje natural. Las técnicas actuales, como el "zero-shot learning" o el "prompting conversacional", abren nuevas posibilidades pero aún necesitan ser perfeccionadas.
    
- **Evaluación de LLMs (Open Challenge-2):** Evaluar objetivamente los productos generados por IA es extremadamente difícil. El **"problema del oráculo de prueba"** (la dificultad de verificar si una salida es correcta) es un obstáculo fundamental. Se necesita ir más allá de las métricas de precisión y desarrollar estándares para evaluar la **seguridad, robustez y consistencia** del código generado por IA.
    
- **Integración de IA con la SE Clásica (Open Challenge-3):** El desafío es cómo **combinar el poder de los LLMs con los enfoques tradicionales de la SE**, como el análisis de programas clásico, para crear soluciones escalables y generalizables. Esto se aplica a todas las fases: requisitos, producción de código, testing y operaciones de TI (AIOps).
    
- **IA Explicable (XAI) en la SE (Open Challenge-4):** La naturaleza de "caja negra" de los modelos de IA genera desconfianza. Es crucial desarrollar técnicas de XAI para que los ingenieros puedan **entender y confiar en las decisiones y recomendaciones de la IA** (por ejemplo, por qué se sugiere un refactoring). El paper discute el potencial de métodos como LIME, SHAP y enfoques emergentes como la IA Neurosimbólica y la interpretabilidad causal.
    

#### 4. El Problema de los Datos: Datasets y Benchmarks

La calidad de cualquier modelo de IA depende de los datos con los que se entrena. El paper destaca varios desafíos críticos:

- **Generación de Datasets de Alta Calidad (Open Challenge-5):** La SE carece de datasets grandes, etiquetados y de alta calidad. Un reto es **generar automáticamente datos fiables y sin sesgos** para entrenar modelos, y cómo **afinar (fine-tune) los LLMs de propósito general** para tareas específicas de SE.
    
- **Necesidad de Benchmarks Fiables (Open Challenge-6):** Los benchmarks actuales para evaluar modelos de IA en SE a menudo son de baja calidad, desactualizados, demasiado simples o sufren de "fugas de datos", lo que lleva a evaluaciones sesgadas.
    
- **Incorporación de Conocimiento de Dominio (Open Challenge-7):** Los LLMs de propósito general carecen del conocimiento especializado necesario para muchas tareas de SE. Es un desafío abierto cómo **integrar eficazmente este conocimiento de dominio** para mejorar la precisión y fiabilidad de los modelos.
    

#### 5. Desafíos Éticos y Profesionales

El paper dedica una sección importante a las implicaciones éticas y el futuro de la profesión.

- **Riesgos y Ética (Open Challenge-8):** Se identifican serios problemas con las herramientas actuales, como:
    
    - La generación de **código con vulnerabilidades de seguridad** (hasta un 40% en el caso de Copilot).
    - Riesgos de **fugas de datos, violaciones de licencias y problemas de copyright** sobre el código generado.
    - La **falta de transparencia** en los datos de entrenamiento, que impide auditorías independientes.
    - Altos **costos operativos y un consumo de energía significativo**.
- **Impacto en la Profesión:** La IA automatizará tareas repetitivas, lo que podría llevar a un **desplazamiento laboral** y a la comoditización de las habilidades de codificación básicas. Al mismo tiempo, aumentará la demanda de profesionales con habilidades en **arquitectura y diseño de soluciones complejas**. Esto también requerirá una adaptación de los planes de estudio universitarios.
    

### Conclusión:

Este paper es **extremadamente útil para tu tesis**, especialmente si estás realizando una revisión sistemática, por las siguientes razones:

- **Proporciona un Estado del Arte Completo:** Ofrece una visión panorámica y estructurada de cómo la IA está impactando la Ingeniería de Software, citando una gran cantidad de trabajos recientes.
- **Identifica Brechas de Investigación Claras:** Los "Desafíos Abiertos" y las "Preguntas de Investigación" (RQs) que plantea son una guía perfecta para identificar un nicho o justificar la relevancia de tu propio trabajo de investigación.
- **Cubre Múltiples Dimensiones:** No se limita a los aspectos técnicos, sino que aborda en profundidad los desafíos relacionados con los datos, la ética, y el impacto en la profesión, lo que puede enriquecer el marco teórico de tu tesis.
- **Es una Hoja de Ruta:** Su propósito explícito es guiar la investigación futura, lo que lo convierte en una referencia fundamental para posicionar tu tesis en el panorama actual y futuro del campo.