#CitaLatex 
@INPROCEEDINGS{TantithamthavornChakkritExplainableAIforSoftware,
  author={Tantithamthavorn, Chakkrit Kla and Jiarpakdee, Jirayus},
  booktitle={2021 36th IEEE/ACM International Conference on Automated Software Engineering (ASE)}, 
  title={Explainable AI for Software Engineering}, 
  year={2021},
  volume={},
  number={},
  pages={1-2},
  abstract={The success of software engineering projects largely depends on complex decision-making. For example, which tasks should a developer do first, who should perform this task, is the software of high quality, is a software system reliable and resilient enough to deploy, etc. However, erroneous decision-making for these complex questions is costly in terms of money and reputation. Thus, Artificial Intelligence/Machine Learning (AI/ML) techniques have been widely used in software engineering for developing software analytics tools and techniques to improve decision-making, developer productivity, and software quality. However, the predictions of such AI/ML models for software engineering are still not practical (i.e., coarse-grained), not explainable, and not actionable. These concerns often hinder the adoption of AI/ML models in software engineering practices. In addition, many recent studies still focus on improving the accuracy, while a few of them focus on improving explainability. Are we moving in the right direction? How can we better improve the SE community (both research and education)?In this tutorial, we first provide a concise yet essential introduction to the most important aspects of Explainable AI and a hands-on tutorial of Explainable AI tools and techniques. Then, we introduce the fundamental knowledge of defect prediction (an example application of AI for Software Engineering). Finally, we demonstrate three successful case studies on how Explainable AI techniques can be used to address the aforementioned challenges by making the predictions of software defect prediction models more practical, explainable, and actionable. The materials are available at https://xai4se.github.io.},
  keywords={Productivity;Decision making;Tutorials;Software quality;Learning (artificial intelligence);Predictive models;Software systems;Explainable AI;Software Engineering},
  doi={10.1109/ASE51524.2021.9678580},
  ISSN={2643-1572},
  month={Nov},}


Referencia del archivo original: `(Chakkrit (Kla) Tantithamthavorn) Explainable AI for Software Engineering.pdf` [[(Chakkrit (Kla) Tantithamthavorn) Explainable AI for Software Engineering.pdf]]

El documento seleccionado es un **tutorial** titulado **"Explainable AI for Software Engineering"** de Chakkrit (Kla) Tantithamthavorn y Jirayus Jiarpakdee.

El _paper_ (presentado como el esquema de un tutorial) aborda la necesidad de hacer que los modelos de Inteligencia Artificial/Aprendizaje Automático (AI/ML) utilizados en la ingeniería de _software_ (SE) sean más **prácticos, explicables y accionables**, ya que las predicciones actuales a menudo son poco prácticas (es decir, de grano grueso), no explicables y no accionables, lo que dificulta su adopción.

### Resumen Completo del Documento (Tutorial Outline)

El éxito de los proyectos de ingeniería de _software_ depende de la toma de decisiones complejas, como qué tareas debe realizar un desarrollador primero o si un sistema es lo suficientemente robusto para ser desplegado. Las decisiones erróneas son costosas, lo que ha llevado al uso de AI/ML para desarrollar herramientas de analítica de _software_. Sin embargo, la comunidad de SE sigue enfocándose en mejorar la **precisión** de los modelos, mientras que muy pocos se centran en mejorar la **explicabilidad**.

El tutorial de 1.5 horas propuesto se divide en tres partes:

**Parte 1: Introducción a la AI Explicable (Explainable AI - XAI)** Esta parte introduce la motivación, definiciones y el concepto de la AI Explicable. También se discute la teoría de las explicaciones (objetivos de explicabilidad, tipos de explicaciones y preguntas de inteligibilidad). Se proporciona un tutorial práctico (_hands-on tutorial_) de herramientas y técnicas ampliamente utilizadas en la comunidad XAI, como **LIME y SHAP**, para explicar las predicciones de los modelos AI/ML, incluyendo herramientas específicas del modelo (_model-specific_) y agnósticas al modelo (_model-agnostic_).

**Parte 2: Modelos de Predicción de Defectos (_Defect Prediction Models_)** Esta sección se centra en la aplicación de la AI más relevante en SE: la **predicción de defectos**. Se presenta el conocimiento fundamental de las tecnologías de predicción de defectos, que involucran cinco pasos clave: (1) Recolección de Datos, (2) Preprocesamiento de Datos, (3) Construcción de Modelos, (4) Evaluación de Modelos y (5) Clasificación de Modelos (_Model Ranking_).

- **Recolección de Datos:** Se discute cómo las técnicas para generar datos de verdad fundamental (_ground-truth data_) son a menudo inexactas. Se recomienda considerar las **versiones afectadas (_affected releases_)** para etiquetar si un archivo es defectuoso, en lugar de asumir un período de ventana posterior al lanzamiento (ej., defectos corregidos después de 6 meses).
- **Análisis de Datos:** Los conjuntos de datos de defectos están altamente desequilibrados (ratio defectuoso $<10\%$). Se sugiere el uso de **SMOTE optimizado** para mejorar la precisión predictiva al manejar el desequilibrio de clases antes de entrenar los modelos. Se aconseja utilizar **AutoSpearman** para mitigar la **colinealidad y multicolinealidad** al interpretar los modelos de defectos, y evitar las técnicas de selección automática de características existentes (como la Regresión por Pasos) si el objetivo es la interpretación.
- **Construcción de Modelos:** Para la construcción de modelos, se sugiere explorar varias técnicas, señalando que el **Bosque Aleatorio Optimizado (_Optimised Random Forest_)** y el **Gradient Boosting Optimizado (_Optimised Extreme Gradient Boosting Trees_)** a menudo producen los modelos de predicción de defectos más precisos. Además, siempre se debe optimizar la configuración de hiperparámetros (ej., usando _Grid Search_ o _Genetic Algorithm_).

**Parte 3: AI Explicable para Ingeniería de Software** En la parte final, se demuestran **tres estudios de caso exitosos** sobre cómo las técnicas de AI Explicable pueden utilizarse para hacer que las predicciones de los modelos de predicción de defectos sean más **prácticas, explicables y accionables**. La demostración práctica (_hands-on demo_) se centra en generar **explicaciones globales** y **explicaciones de instancia** para los modelos de predicción de defectos.

El tutorial está dirigido a investigadores de SE, estudiantes de doctorado, profesionales de _software_ que usan Python, analistas de _software_ y gerentes de proyecto que toman decisiones de alto riesgo.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones implícitas del _paper_ (que la XAI es crucial para el futuro de la ingeniería de _software_) se fundamentan en las siguientes ideas clave:

1. **La Insuficiencia del Foco Exclusivo en la Precisión (_Accuracy_):** La conclusión se basa en la premisa de que la práctica actual en SE, que prioriza la mejora de la precisión de los modelos AI/ML, es inadecuada. Los autores sugieren que esta dirección no es la correcta, ya que las predicciones deben ser también **prácticas, explicables y accionables** para ser adoptadas por la industria.
2. **El Rol Central del Defect Prediction como Caso de Estudio:** La validez de la XAI en SE se establece al utilizar la **predicción de defectos** como el ejemplo de aplicación fundamental. Al demostrar cómo la XAI puede abordar las deficiencias metodológicas y prácticas en este campo (como el manejo de datos desequilibrados y colinealidad), se justifica la necesidad de la explicabilidad.
3. **La Importancia de las Explicaciones Accionables:** La idea clave es que la XAI transforma los modelos predictivos de meras herramientas de diagnóstico a herramientas de **intervención práctica**. El objetivo de hacer las predicciones "accionables" es fundamental, ya que permite a los gerentes de proyecto tomar decisiones empresariales más inteligentes y basadas en datos.
4. **Necesidad de Mitigar la Colinealidad para una Interpretación Fiable:** Las conclusiones sobre cómo interpretar correctamente los modelos se basan en el hallazgo de que las métricas correlacionadas (colinealidad/multicolinealidad) impactan negativamente en los modelos de defectos. La solución de **AutoSpearman** y la evitación de técnicas de selección automática de características ilustran la necesidad de un enfoque metodológico riguroso para lograr una **interpretación fiable**.

---

### Valor del Paper

El valor del artículo (es decir, el tutorial que describe) es alto, ya que busca **cerrar la brecha** entre la investigación de la AI/ML y la adopción práctica en la ingeniería de _software_.

- **Pionero en un Campo Emergente:** El instructor principal, Dr. Chakkrit (Kla) Tantithamthavorn, está liderando una nueva área de investigación: **AI Explicable para Ingeniería de Software**. Este tutorial sirve para consolidar y difundir este conocimiento emergente.
- **Enfoque Práctico y Metodológico:** El tutorial proporciona una **guía completa y basada en evidencia empírica** para los profesionales y académicos. Ofrece directrices concretas (por ejemplo, cómo manejar los datos desequilibrados con SMOTE optimizado, o qué técnicas de clasificación son más precisas) que permiten a los asistentes aplicar los conceptos directamente.
- **Generación de Conocimiento Accionable:** El valor se amplifica al enfocarse en la generación de predicciones **accionables**. Esto transforma la utilidad de los modelos de AI, haciendo que las inversiones en analítica de _software_ sean más valiosas para la toma de decisiones de alto riesgo en los negocios.
- **Integración de Herramientas de Vanguardia:** Al incluir tutoriales prácticos de herramientas clave de XAI como **LIME y SHAP**, el _paper_ asegura que el contenido sea relevante y esté actualizado con las prácticas más avanzadas en la comunidad de AI.

El valor reside en su propósito de **elevar la comprensión y la aplicación de la AI** en SE más allá de la mera precisión, enfocándose en la **confiabilidad, transparencia y utilidad** en escenarios de alta complejidad.
