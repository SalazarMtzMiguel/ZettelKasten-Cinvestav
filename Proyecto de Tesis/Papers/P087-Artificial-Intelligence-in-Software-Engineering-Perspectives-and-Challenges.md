#CitaLatex 
@inproceedings{Bhandari2023ArtificialIntelligence,
  title = {Artificial Intelligence in Software Engineering: Perspectives and Challenges},
  url = {http://dx.doi.org/10.1109/ICSCCC58608.2023.10176436},
  DOI = {10.1109/icsccc58608.2023.10176436},
  booktitle = {2023 Third International Conference on Secure Cyber Computing and Communication (ICSCCC)},
  publisher = {IEEE},
  author = {Bhandari,  Kirti and Kumar,  Kuldeep and Sangal,  Amrit Lal},
  year = {2023},
  month = may,
  pages = {133–137}
}

Referencia del archivo original: `(Kirti Bhandari) Artificial Intelligence in Software Engineering Perspectives and Challenges.pdf` [[(Kirti Bhandari) Artificial Intelligence in Software Engineering Perspectives and Challenges.pdf]]

El documento seleccionado es el artículo **"Artificial Intelligence in Software Engineering: Perspectives and Challenges"** (Inteligencia Artificial en Ingeniería de Software: Perspectivas y Desafíos), escrito por Kirti Bhandari, Kuldeep Kumar y Amrit Lal Sangal.

Este trabajo examina la fusión de la Inteligencia Artificial (IA) con la Ingeniería de _Software_ (SE), describiendo las nuevas áreas de investigación que emergen de esta unión y detallando los numerosos desafíos (técnicos, organizacionales y de producción) que deben abordarse para la selección e integración adecuada de técnicas de IA/ML en el desarrollo de _software_.

### Resumen Completo del Documento

**1. Introducción y Fusión de IA y SE:** La Ingeniería de _Software_ (SE) es el enfoque sistemático y científico para desarrollar, desplegar y mantener sistemas de _software_. El desarrollo tradicional de _software_ (que incluye fases como la elicitación de requisitos, diseño, pruebas, codificación y mantenimiento) es a menudo costoso y consume mucho tiempo.

La IA se introduce en la SE para simular la inteligencia humana en las máquinas. La IA es una rama de la informática centrada en hacer que las máquinas sean inteligentes, y el Aprendizaje Automático (ML) es una rama de la IA que proporciona innovaciones para el desarrollo de _software_. El objetivo de la IA es hacer que el _software_ se comporte de manera inteligente, mientras que el objetivo de la SE es construir _software_ de alta calidad con costos y tiempo minimizados.

Actualmente, la integración de IA/ML con SE está en auge. Los avances permiten que las técnicas o modelos de IA sean fáciles de usar, a menudo a través de bibliotecas o APIs existentes. Por ejemplo, los modelos de ML pueden aplicarse en el dominio de Predicción de Fallos de _Software_ para predecir fallos antes de que comience la fase de pruebas. Esto permite a los desarrolladores centrarse en las partes del código susceptibles a fallos, reduciendo el tiempo, el costo y el esfuerzo del desarrollo.

**2. Áreas de Investigación Emergentes (Fusión de AI y SE):** La integración de IA y SE ha dado lugar a cuatro nuevas áreas de investigación que requieren una extensa investigación futura:

- **Inteligencia Ambiental (_Ambient Intelligence_):** Tecnología que hace que nuestro entorno sea sensible y receptivo a los seres humanos, como los sistemas de hogar inteligente que manejan radiadores y electrodomésticos.
- **Agentes de _Software_ (_Software Agents_):** Sistemas inteligentes pequeños que dependen de una base de conocimiento para tomar decisiones. Estas decisiones se basan en experiencias de expertos. Un ejemplo es un programa antivirus que trabaja en segundo plano y alerta cuando detecta un nuevo virus.
- **Inteligencia Computacional (_Computational Intelligence_):** Comprende conceptos y métodos adaptativos que exhiben un comportamiento inteligente en entornos complejos y dinámicos. Ayuda a encontrar soluciones que son robustas y aproximativas, y se ha utilizado para encontrar, por ejemplo, cáncer de mama mediante modelos predictivos de cáncer de próstata.
- **Sistemas Basados en Conocimiento (_Knowledge-Based systems_):** Anteriormente conocidos como sistemas expertos, son programas informáticos que utilizan la IA y se basan en el conocimiento y las experiencias de expertos para realizar tareas, como el diagnóstico de diversas enfermedades del cuello.

**3. Desafíos en la Fusión de IA/ML y SE:** La aplicación de técnicas de IA en SE plantea muchas oportunidades y riesgos. Los autores identifican varios desafíos agrupados en tres categorías:

**A. Desafíos de Desarrollo:**

- **Desafíos Experimentales:** Se necesita repetir experimentos para encontrar el modelo óptimo. Es difícil generar resultados repetibles debido a que una pequeña variación en los requisitos de configuración (Hardware, Plataforma, Código Fuente) puede variar los resultados del modelo.
- **Control de Versiones:** La gestión de diferentes versiones de datos y de modelos de ML es difícil y costosa, especialmente cuando se realiza la **afinación de hiperparámetros (_hyperparameter tuning_)** que crea múltiples versiones de los mismos datos con diferentes parámetros.
- **Falta de Transparencia:** En ML, la división de un sistema complejo en bloques abstractos se realiza automáticamente, lo que dificulta la identificación de las capas de abstracción y la obtención de información semántica sobre el modelo.
- **Dificultad para Solucionar Problemas (_Troubleshoot_):** Es difícil depurar las redes neuronales utilizando procesos tradicionales porque no se conoce su funcionamiento interno. Además, entrenar una red neuronal con muchas capas no siempre garantiza un alto rendimiento, lo que puede resultar en un desperdicio de esfuerzo.
- **Requisitos de Recursos:** Los sistemas distribuidos requieren un número sustancial de recursos para tareas como la extracción de datos, la transformación, el entrenamiento y la evaluación de modelos.
- **Pruebas (_Testing_):** Es un desafío seleccionar una muestra del conjunto de datos que contenga todos los casos límite. La naturaleza no determinista de los algoritmos de entrenamiento hace que la prueba sea un problema crítico, y hay diferencias entre el modo de producción y la implementación en cuanto al procesamiento de datos y la entrega del modelo (_model serving_).

**B. Desafíos Organizacionales:**

- **Dificultad para Estimar el Esfuerzo:** A diferencia del _software_ tradicional, en proyectos de IA/ML no está claro hasta qué punto un modelo puede alcanzar su objetivo. La falta de transparencia dificulta la comprensión del modelo y su actualización para obtener mejores resultados.
- **Privacidad y Seguridad de los Datos:** El funcionamiento interno desconocido de la red neuronal tiene serias implicaciones para la privacidad y la seguridad de los datos. Algunas empresas evitan usar datos sin procesar como entrada, y las regulaciones como GDPR trabajan para proteger los datos.
- **Diferencias Culturales:** Los diferentes roles en un equipo (programadores centrados en el código, otros en la calidad) pueden llevar a dificultades en la colaboración, lo que requiere interacción entre los campos de SE y AI.

**C. Desafíos de Producción:**

- **Dependencia de Hardware/Software:** Para el entrenamiento de sistemas de Aprendizaje Profundo (_Deep Learning_, DL), se utilizan GPUs para mejorar el rendimiento. El cambio de hardware o _software_ no solo aumenta el costo sino que también dificulta la obtención de resultados reproducibles.
- **Monitoreo y Registro (_Monitoring and Logging_):** El esfuerzo requerido para mantener los sistemas AI/ML desplegados con el tiempo es difícil de predecir. El comportamiento del modelo de ML cambia a medida que cambia el comportamiento externo, y la elección de métricas para el monitoreo del rendimiento en vivo es desafiante.
- **Bucles de Retroalimentación no Deseados (_Unwanted Feedback Loops_):** Los sistemas AI/ML, cuya rendición depende de datos externos, pueden sufrir bucles de retroalimentación no deseados e inherentemente inestables cuando se implementan en un contexto de _big data_.
- **_Glue Code_:** Solo alrededor del 5% del código de los sistemas AI/ML se ocupa del sistema en sí; el resto es _glue code_ utilizado para integrar bibliotecas y sistemas. Las actualizaciones de este código y los cambios externos en los servicios de la nube generan desafíos inesperados en sistemas listos para producción.

**4. Conclusión:** La industria del _software_ se inclina cada vez más hacia el desarrollo de sistemas basados en IA. Aunque la fusión de ML y SE ofrece resultados prometedores, se requiere más investigación para abordar los desafíos identificados. Superar estos desafíos no solo beneficiará a investigadores e ingenieros de _software_, sino también a una gran cantidad de empresas a nivel global.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ sobre el potencial y los desafíos críticos de la fusión de IA y SE se fundamentan en las siguientes ideas clave:

1. **La Necesidad de IA Surge de la Ineficiencia y el Costo del Desarrollo Tradicional de Software:** La conclusión de que la IA es el futuro de la SE se basa en el reconocimiento de que el proceso tradicional de desarrollo de _software_ (elicitación, diseño, pruebas) es **costoso y consume mucho tiempo**. La IA aborda esto al permitir, por ejemplo, la **predicción automática de fallos** antes de la fase de prueba, lo que reduce drásticamente el tiempo, el costo y el esfuerzo de desarrollo.
2. **La Naturaleza Experimental y Opaca de ML Crea Conflictos Fundamentales con los Principios de Ingeniería de Software:** La conclusión de que existen desafíos críticos se basa en la identificación de que los sistemas de ML, especialmente el DL, carecen de la transparencia y la estabilidad requeridas por la SE. Esto se manifiesta en:
    - La **dificultad de depurar** las redes neuronales debido al desconocimiento de su funcionamiento interno.
    - La **falta de transparencia** en la abstracción del modelo.
    - La **naturaleza no determinista** de los algoritmos, lo que complica la prueba y la obtención de **resultados reproducibles** ante cambios de configuración o hardware.
3. **Los Desafíos Prácticos de Producción y Mantenimiento Reducen la Viabilidad Industrial:** La conclusión sobre la necesidad de más investigación se fundamenta en los desafíos prácticos de la producción. Esto incluye la complejidad del **monitoreo en vivo** de sistemas cuyo comportamiento cambia con datos externos, la dificultad de gestionar el _**glue code**_ que soporta la integración de bibliotecas, y el riesgo de **bucles de retroalimentación no deseados** que generan inestabilidad.

---

### Valor del Paper

El artículo **"Artificial Intelligence in Software Engineering: Perspectives and Challenges"** es de gran valor como un documento introductorio y de síntesis sobre el estado actual de la integración de IA y SE:

- **Identificación de Áreas de Investigación Emergentes:** Proporciona un **marco conceptual** al definir y describir las cuatro áreas clave de investigación que surgen de la fusión de IA y SE: Inteligencia Ambiental, Agentes de _Software_, Inteligencia Computacional y Sistemas Basados en Conocimiento.
- **Catálogo Exhaustivo de Desafíos:** Su principal contribución es la presentación organizada y detallada de los desafíos de la integración de IA/ML, clasificándolos en categorías críticas: **Desarrollo, Organizacionales y Producción**. Esto sirve como una **lista de verificación (_checklist_)** para investigadores y profesionales que buscan abordar o mitigar los riesgos asociados con los sistemas basados en IA.
- **Justificación de la Investigación Futura:** El _paper_ establece claramente que, si bien la fusión es la tendencia más popular y promete una gran eficiencia, la **investigación es aún incipiente** y se necesita un esfuerzo significativo para manejar los desafíos de transparencia, reproducibilidad y estabilidad antes de que los sistemas basados en IA puedan alcanzar una madurez industrial generalizada.

Este _paper_ es como un **informe de viabilidad** para un nuevo tipo de construcción. Si bien confirma que construir edificios (sistemas de _software_) más altos y rápidos es posible con nuevos materiales (IA/ML), también actúa como una advertencia de ingeniería, señalando que estos nuevos materiales tienen **propiedades de prueba inconsistentes** y requieren **herramientas de monitoreo y cimientos** completamente nuevos (la solución a los desafíos de producción y desarrollo) antes de que puedan ser aprobados para su uso a gran escala.
