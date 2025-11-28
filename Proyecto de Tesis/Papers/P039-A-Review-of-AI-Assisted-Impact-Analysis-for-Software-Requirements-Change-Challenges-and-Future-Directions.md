#CitaLatex 
@INPROCEEDINGS{SamhanAhmadAReviewofAI-Assisted,
  author={Samhan, Ahmad and AlHajHassan, Suhair and Dabaa't, Sara Abu and Elrashidi, Ali},
  booktitle={2024 25th International Arab Conference on Information Technology (ACIT)}, 
  title={A Review of AI-Assisted Impact Analysis for Software Requirements Change: Challenges and Future Directions}, 
  year={2024},
  volume={},
  number={},
  pages={1-13},
  abstract={This paper presents a review study that explores the landscape and challenges of AI-assisted impact analysis in software requirements engineering. The growth of complex and change-prone software systems has highlighted the need for AI techniques—especially machine learning (ML) and natural language processing (NLP)—to be harnessed to improve impact analysis scalability and efficiency. Key challenges identified include data quality issues, scalability constraints, and ethical problems related to bias and accountability. To investigate these challenges and provide insights, a review was conducted across IEEE Xplore, ACM Digital Library, and Google Scholar, cross referencing between keywords that include concepts from the domains of "software requirements", "impact analysis", and "AI-Assisted approaches". Inclusion criteria focused on studies that presents empirical data on AI-assisted impact analysis. This study highlights research gaps and presents insights for overcoming obstacles using emerging technologies such as edge AI in order to enhance post-impact analysis. Findings show that while AI improves traditional impact analysis, further work is necessary to deliver effective, ethical and practical implementations within evolving software contexts.},
  keywords={Ethics;Accuracy;Reviews;Scalability;Machine learning;Edge AI;Software systems;Natural language processing;Artificial intelligence;Software engineering;Impact Analysis;Software Requirements;Artificial Intelligence;Natural Language Processing;Software Engineering;AI Challenges;Edge AI},
  doi={10.1109/ACIT62805.2024.10877072},
  ISSN={2831-4948},
  month={Dec},}


Referencia del archivo original: `(Ahmad Samhan) A Review of AI-Assisted Impact Analysis for Software Requirements Change Challenges and Future Directions.pdf` [[(Ahmad Samhan) A Review of AI-Assisted Impact Analysis for Software Requirements Change Challenges and Future Directions.pdf]]

El documento seleccionado es una revisión exhaustiva titulada **"A Review of AI-Assisted Impact Analysis for Software Requirements Change: Challenges and Future Directions"**,.

A continuación, se presenta el resumen más completo posible del _paper_, la identificación de las ideas clave que sustentan sus conclusiones, y la determinación de su valor.

---

### Resumen Completo del Documento

El propósito de este trabajo es revisar el panorama y los desafíos del **análisis de impacto (Impact Analysis - IA) asistido por Inteligencia Artificial (AI)** en la ingeniería de requisitos de _software_. La investigación se justifica por el crecimiento de sistemas de _software_ complejos y propensos al cambio, lo que hace que las técnicas tradicionales de IA sean ineficaces,.

**1. Contexto y Problema (Análisis Tradicional):** Los métodos tradicionales de análisis de impacto, como las matrices de trazabilidad, el análisis de dependencia del código y el juicio de expertos,,, tienen serias limitaciones en entornos dinámicos y a gran escala (como Agile y DevOps),. Estas limitaciones incluyen ser costosos y propensos a errores en sistemas complejos, además de fallar debido a las altas demandas de tiempo y recursos,. Esto resalta la necesidad de enfoques más precisos, como las evaluaciones de impacto habilitadas por AI.

**2. Metodología de la Revisión:** Se llevó a cabo una revisión sistemática en bases de datos académicas como IEEE Xplore, ACM Digital Library y Google Scholar,. Los criterios de inclusión se centraron en estudios que presentaran **datos empíricos** sobre el análisis de impacto asistido por AI,.

**3. La Emergencia de la AI en el Análisis de Impacto:** La integración de la AI, especialmente el **aprendizaje automático (Machine Learning - ML)** y el **procesamiento del lenguaje natural (Natural Language Processing - NLP)**, ha transformado el IA al mejorar la capacidad predictiva y la eficiencia,,.

- **NLP:** Se utiliza para la extracción de requisitos, la validación, el mantenimiento, y para manejar consultas en lenguaje natural, identificando ambigüedades y conflictos,,.
- **ML:** Los modelos (supervisados y no supervisados) aprenden del historial de cambios para predecir el impacto, estimar riesgos y generar gráficos de dependencias entre componentes de _software_,,.
- **Beneficios de la AI:** La AI automatiza el análisis de dependencias, reduce el error humano, proporciona análisis en tiempo real para entornos CI/CD (Integración Continua/Entrega Continua), y ofrece predicciones con **valores de confianza** para ayudar en la toma de decisiones informada,,.

**4. Desafíos Centrales del Análisis de Impacto Asistido por AI:** La revisión identifica que, si bien la AI mejora el IA tradicional, existen desafíos que limitan su implementación práctica y ética:

- **Calidad de los Datos (Data Quality):** La precisión de la AI depende de datos representativos, no sesgados y de alta calidad,. La limpieza de datos es un proceso costoso y requiere pasos cruciales como corregir errores, manejar valores perdidos y eliminar duplicados,. La privacidad y la seguridad de los datos también son preocupaciones primarias.
- **Interpretabilidad y Explicabilidad (Explainability):** Los modelos complejos de _deep learning_ a menudo actúan como una "caja negra" (_blackbox_), dificultando entender cómo se toman las decisiones. Esta falta de transparencia socava la confianza de los _stakeholders_ y dificulta la rendición de cuentas (accountability) y la identificación de sesgos,.
- **Limitaciones de Precisión:** La ambigüedad en los requisitos y el lenguaje específico del dominio pueden llevar a interpretaciones incorrectas por parte de los modelos de AI,. Además, los modelos sufren de problemas como el sobreajuste (_overfitting_), el subajuste (_underfitting_), y la **deriva del modelo** (_model drift_), que requiere un reentrenamiento constante,.
- **Escalabilidad e Integración:** Integrar herramientas de AI, especialmente código generado automáticamente, en proyectos grandes y complejos puede ser difícil debido a la incompatibilidad, la necesidad de un contexto amplio, y los problemas de calidad y confiabilidad del código generado,.
- **Consideraciones Éticas y Sesgo:** El sesgo en los datos de entrenamiento puede llevar a resultados sesgados o injustos,. Es esencial que exista una responsabilidad clara (accountability), requiriendo supervisión humana para evitar consecuencias catastróficas, especialmente en disciplinas sofisticadas como la ingeniería de _software_,.

**5. Direcciones Futuras:** El estudio concluye sugiriendo vías para superar los obstáculos, incluyendo: **Deep Learning** para mejorar la precisión predictiva y la comprensión contextual,; la mejora de la **Colaboración Humano-AI** (donde la experiencia humana complementa las predicciones de la AI),,; el avance en la **AI Explicable (XAI)** para aumentar la confianza y la auditabilidad,; el desarrollo de **Estandarización y Mejores Prácticas**,; y la exploración de **Tecnologías Emergentes** como **Edge AI** (para análisis en tiempo real y privacidad local) y la **Computación Cuántica** (para aumentar la capacidad de procesamiento masivo),,,.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ —que afirman que la AI mejora el IA tradicional, pero que es necesario seguir trabajando para lograr implementaciones efectivas, éticas y prácticas,— se fundamentan en las siguientes ideas clave:

1. **La Inviabilidad de la Tarea Manual en la Complejidad Moderna:** La naturaleza de los sistemas de _software_ contemporáneos (grandes, distribuidos, y en constante evolución en entornos Agile/DevOps) ha vuelto obsoletos o insuficientes los métodos manuales y semi-automatizados tradicionales,,. Esto establece la premisa fundamental de que **la AI no es solo una mejora, sino una necesidad** para la gestión del cambio.
2. **La Capacidad Predictiva Superior de la AI y el Valor de la Confianza:** La AI permite ir más allá de la mera identificación de impactos para **predecir la severidad y el riesgo del cambio**, una capacidad crucial para priorizar tareas. Esta predicción se ofrece con **valores de confianza**, lo que proporciona a los tomadores de decisiones una indicación de la fiabilidad del pronóstico, un avance que no ofrecen las técnicas manuales.
3. **El Problema Dual de Datos y Transparencia como Barreras de Adopción:** A pesar de los beneficios, el estudio demuestra que dos problemas interrelacionados limitan la adopción: la necesidad de datos perfectos (limpios, representativos, sin sesgos) y la falta de transparencia inherente a los modelos complejos (el efecto "caja negra"). La conclusión de que se necesita más trabajo se basa en que, si no se resuelven el sesgo de los datos y la falta de explicabilidad, se socava la confianza y la rendición de cuentas, especialmente en decisiones de alto riesgo,.
4. **El Futuro Recae en la Integración Ética y Tecnológica (XAI y Edge AI):** El trabajo concluye que el camino a seguir es tecnológico y ético. Tecnológicamente, la AI debe ser combinada con **Edge AI** (para velocidad y privacidad local) y, críticamente, debe evolucionar hacia la **AI Explicable (XAI)**,,. Éticamente, se necesita la **estandardización** y la **supervisión humana** para garantizar que los modelos de AI se alineen con los valores humanos y las pautas legales, asegurando que el poder predictivo se utilice de manera responsable,,.

---

### Valor del Paper

El valor del _paper_ **"A Review of AI-Assisted Impact Analysis for Software Requirements Change: Challenges and Future Directions"** reside en su exhaustividad como documento de referencia y su enfoque en proporcionar una hoja de ruta para el desarrollo futuro:

- **Establecimiento de una Línea Base (Benchmark) de Retos:** El valor más significativo es la identificación sistemática de los **desafíos clave** que impiden la implementación práctica y ética de la AI en el IA. El estudio articula y organiza estos desafíos (calidad de datos, interpretabilidad, escalabilidad) para la comunidad de investigación.
- **Guía para la Investigación Futura:** El _paper_ **destaca las brechas de investigación** y presenta información valiosa para superar los obstáculos, sugiriendo activamente la exploración de Edge AI, la computación cuántica,, y la necesidad de desarrollar métricas de evaluación que consideren la lógica y la consistencia de los resultados de la AI.
- **Relevancia para la Práctica Industrial:** Al comparar las limitaciones de los métodos tradicionales con los beneficios de la AI (mayor precisión, automatización y escalabilidad), el documento justifica la inversión en estas tecnologías y ofrece a los desarrolladores herramientas conceptuales para abordar las complejidades del IA en tiempo real y en sistemas grandes,.
- **Énfasis en la Responsabilidad Ética:** El enfoque en los problemas éticos (sesgo, privacidad, rendición de cuentas) y la necesidad de marcos éticos claros y XAI subraya la importancia de la implementación responsable, un aspecto crucial para la adopción de la AI en sectores críticos,.