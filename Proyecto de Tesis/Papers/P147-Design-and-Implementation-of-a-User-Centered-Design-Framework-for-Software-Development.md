#CitaLatex 
@inproceedings{Chilluri2025DesignandImplementation,
  title = {Design and Implementation of a User Centered Design Framework for Software Development},
  url = {http://dx.doi.org/10.1109/CE2CT64011.2025.10941419},
  DOI = {10.1109/ce2ct64011.2025.10941419},
  booktitle = {2025 First International Conference on Advances in Computer Science,  Electrical,  Electronics,  and Communication Technologies (CE2CT)},
  publisher = {IEEE},
  author = {Chilluri,  Venkata Suresh Babu and Oli,  Sanjay and Sharma,  Chandani and Kumar,  Ankit},
  year = {2025},
  month = feb,
  pages = {1232–1236}
}

Referencia del archivo original: `(Venkata Suresh) Design and Implementation of a User Centered Design Framework for Software Development.pdf` [[(Venkata Suresh) Design and Implementation of a User Centered Design Framework for Software Development.pdf]]

El documento seleccionado para el análisis es el artículo **"Design and implementation of a user centered design framework for software development"** (Diseño e implementación de un marco de diseño centrado en el usuario para el desarrollo de _software_).

Este trabajo examina el impacto de la aplicación de la metodología de **Diseño Centrado en el Usuario (UCD)** en la **aceptación, confianza y usabilidad** de los sistemas automatizados de soporte a la decisión basados en Inteligencia Artificial (AI-based Decision Support Systems, o DSS).

### Resumen Completo del Documento

**1. Contexto y Problema (UCD y DSS basados en IA):** La filosofía de Diseño Centrado en el Usuario (UCD) pone al usuario en el centro, enfatizando las necesidades e intereses del usuario para crear productos utilizables y comprensibles. Para los sistemas de soporte a la decisión automatizados basados en IA, la capacidad de ser usados, confiables y aceptados es crucial para superar la toma de decisiones sesgada. Por lo tanto, se requieren criterios de diseño para estos sistemas en el contexto de la artesanía tradicional. El objetivo del trabajo fue examinar las relaciones entre la aceptación del usuario y el UCD.

**2. Metodología de Evaluación (Enfoque de Métodos Mixtos):** El estudio empleó un **enfoque de métodos mixtos** en una investigación con $N_D = 20$ participantes. Se utilizó la metodología cualitativa (_think aloud_) y la cuantitativa (_survey_).

- **Fases de Evaluación:** El proceso incluyó: planificación de la investigación y acuerdos, entrevistas para establecer el contexto, evaluación de las necesidades de los usuarios, diseño de prototipos, y evaluación final de la interfaz.
- **Aplicaciones Evaluadas:** Se compararon tres aplicaciones distintas para planificar y construir cadenas de procesos de FRP (compuestos reforzados con fibra textil):
    - **Eco Preform:** Usada como línea base, similar a Microsoft Excel, ampliamente utilizado en la industria para planificación de tareas.
    - **Optimisation App:** Creada con énfasis en UCD, enfocada en algoritmos de optimización de IA.
    - **Recommender App:** Creada con énfasis en UCD, enfocada en recomendaciones de IA.
- **Métricas Cuantitativas:** Se evaluó la usabilidad utilizando el **System Usability Scale (SUS)**, que puntúa de 0 a 100, donde más de 73 es considerado decente. También se evaluaron factores de aceptación como la **Intención de Uso** (UI), **Motivación Hedónica** (HM) y **Expectativa de Rendimiento** (PE), además de la **Confianza en la Automatización** (T) y el **Esfuerzo Mental** (RSME).
- **Métricas de Diseño:** La **Eficiencia de Planificación** se calculó midiendo el tiempo requerido para las tareas, y la **Objetividad de Planificación** se evaluó cualitativamente contrastando la viabilidad técnica y la uniformidad de los niveles de automatización de las cadenas de procesos diseñadas por los participantes.

**3. Resultados Empíricos Clave:**

- **Usabilidad (SUS):** La **Recommender App obtuvo la puntuación más alta (93.5 puntos)**, seguida por la Optimisation App (84.4 puntos). Ambas están en el rango de excepcional/decente. Eco Preform obtuvo 50.6 puntos, similar a Microsoft Excel, y fue considerada menos amigable para el usuario que las otras dos.
- **Evaluación General y Confianza:** La **Recommender App tuvo la calificación promedio más alta en todas las dimensiones** (Confianza, Motivación Hedónica, Intención de Uso y Expectativa de Rendimiento).
- **Eficiencia de Planificación (Velocidad):** La Optimisation App fue la más rápida (02:45 minutos). La Recommender App tardó 03:23 minutos, y Eco Preform fue la más lenta (08:52 minutos).
- **Objetividad y Reproducibilidad:** A pesar de ser la más rápida, 12 de las 20 cadenas de procesos producidas con la **Optimisation App** no cumplieron el nivel de automatización necesario, siendo inconsistentes o no técnicamente posibles, a menudo debido a un **"error de pérdida de activación"** (el participante no hacía clic en "optimizar" o no verificaba el resultado). La **Recommender App tuvo la mayor reproducibilidad**, con 15 de 20 participantes creando pares idénticos de cadenas de procesos.
- **Relación de Variables:** La expectativa de rendimiento y la intención de uso se correlacionaron positivamente en todas las aplicaciones. La intención de usar la Optimisation App se correlacionó más fuertemente con la motivación hedónica.

**4. Conclusión del Estudio:** El análisis concluyó que los DSS basados en IA pueden ayudar en la planificación de procesos. Sin embargo, los **factores no técnicos** (como la facilidad de uso y la transparencia al ofrecer justificaciones) son tan cruciales como los factores técnicos (como la calidad del resultado). La Recommender App, que recibió la evaluación más alta, debe ser combinada con el análisis económico flexible de Eco Preform (como modo experto) y la capacidad de generación rápida de alternativas de la Optimisation App para crear una herramienta superior.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones principales del estudio sobre la necesidad del UCD y la evaluación de las herramientas de IA se basan en las siguientes ideas clave:

1. **La Usabilidad, Confianza y Aceptación de los Sistemas de IA Dependen Directamente de la Aplicación del Diseño Centrado en el Usuario (UCD):** La conclusión principal del _paper_ es que el UCD es vital. Esto se fundamenta en que, si bien los DSS basados en IA mejoran la **velocidad y la objetividad** del proceso, la **usabilidad, aceptación y confianza** de estos sistemas dependen de la implementación del UCD. El hecho de que la **Recommender App (con UCD)** obtuviera el puntaje SUS más alto (93.5 puntos) y la calificación promedio más alta en todas las dimensiones demuestra esta dependencia empíricamente.
2. **La Velocidad de un Sistema de IA es Inútil si la Falta de Usabilidad Conduce a Errores Críticos del Usuario (Pérdida de Activación):** La conclusión de que el sistema de recomendación es superior a la optimización pura se basa en el hallazgo crucial sobre la **Objetividad de Planificación**. A pesar de que la Optimisation App fue la más rápida, su diseño llevó a que 12 de 20 diseños fueran incorrectos o no viables debido a que los participantes fallaron en un paso clave ("error de pérdida de activación"). En contraste, la Recommender App, que priorizó la usabilidad, logró la **mayor reproducibilidad** (15 de 20 pares idénticos), demostrando que **la corrección y la reproducibilidad superan a la mera velocidad** si el diseño no es intuitivo.
3. **Los Factores No Técnicos, como la Transparencia y la Experiencia de Usuario, Son Tan Cruciales Como la Calidad Técnica del Resultado para la Aceptación Final:** La conclusión sobre la necesidad de integrar y mejorar las aplicaciones se fundamenta en la idea de que para recompensar a los empleados y darles la mejor asistencia, los **factores no técnicos son igualmente cruciales**. Los consumidores valoraron que las aplicaciones fueran **simples de entender y utilizar** y **transparentes** al ofrecer justificaciones para las recomendaciones.

---

### Valor del Paper

El artículo **"Design and implementation of a user centered design framework for software development"** tiene un alto valor en el campo de la ingeniería de _software_ y la interacción humano-computadora (HCI), especialmente en el contexto de la adopción de IA:

- **Validación Empírica de UCD en Sistemas de IA:** El estudio proporciona una **validación empírica y cuantitativa** que demuestra que la adopción y la confianza en los sistemas de soporte a la decisión basados en IA no son solo cuestiones de rendimiento técnico, sino que están intrínsecamente ligadas a la **calidad del UCD**.
- **Identificación de Fallas Críticas de Diseño de IA:** Identifica un riesgo de diseño específico en sistemas de optimización: el **"error de pérdida de activación"**. Este hallazgo es fundamental para guiar a los desarrolladores de herramientas de ingeniería asistidas por IA para que prioricen la usabilidad y la verificación de resultados sobre la velocidad bruta de cálculo.
- **Recomendaciones Prácticas para la Industria:** El _paper_ ofrece **recomendaciones prácticas** para el desarrollo de futuros sistemas de soporte de fabricación basados en IA, sugiriendo la combinación de las fortalezas de los diferentes prototipos para crear una herramienta óptima y holística (usabilidad del recomendador + flexibilidad del _baseline_ + rapidez del optimizador).

El valor de este trabajo es comparable a entender que, al diseñar un coche de carreras (un DSS de IA), no solo se necesita el motor más rápido (Optimisation App), sino también un **volante intuitivo y un tablero de instrumentos claro** (Recommender App). El estudio demuestra que un diseño ultrarrápido pero no centrado en el usuario (el motor rápido) puede provocar que el conductor se estrelle por una simple falta de atención, mientras que un diseño ligeramente más lento pero altamente utilizable garantiza que el conductor llegue de forma segura y consistente a su destino.
