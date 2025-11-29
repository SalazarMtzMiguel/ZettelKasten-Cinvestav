#CitaLatex 
@inproceedings{Qayyum2021DataMining,
  title = {Role of Data Mining and Machine Learning in Software Reusability},
  url = {http://dx.doi.org/10.1109/ICIC53490.2021.9693064},
  DOI = {10.1109/icic53490.2021.9693064},
  booktitle = {2021 International Conference on Innovative Computing (ICIC)},
  publisher = {IEEE},
  author = {Qayyum,  Rabia and Rubaab,  Joveria and Riaz,  Umer and Arif,  Fahim},
  year = {2021},
  month = nov,
  pages = {1–8}
}

Referencia del archivo original: `(Rabia Qayyum) Role of Data Minig and Machine Learning in Software Reusability.pdf` [[(Rabia Qayyum) Role of Data Minig and Machine Learning in Software Reusability.pdf]]

El documento seleccionado para el análisis es el artículo **"Role of Data Mining and Machine Learning in Software Reusability"** (El Rol de la Minería de Datos y el Aprendizaje Automático en la Reutilización de _Software_), escrito por Rabia Qayyum, Joveria Rubaab, Umer Riaz y Dr. Fahim Arif.

Este trabajo se centra en el uso de técnicas de Inteligencia Artificial (IA), específicamente redes neuronales y _clustering_, para **automatizar la reutilización de _software_**, un aspecto fundamental del Ciclo de Vida del Desarrollo de _Software_ (SDLC) que reduce costos y aumenta la productividad.

### Resumen Completo del Documento

**1. Contexto y Problema (La Importancia de la Automatización de la Reutilización):** El proceso de desarrollo de _software_ consume tiempo y recursos financieros y humanos. La **reutilización de _software_** es vital porque incrementa la productividad, mejora la calidad y mantenibilidad del producto, y lo hace más rentable. La automatización de la reutilización de _software_ desempeña un papel dinámico en el SDLC al reducir el costo y el esfuerzo necesarios. La Ingeniería de _Software_ Basada en Componentes (CBSE) implica crear repositorios masivos de componentes para su posterior reutilización.

**2. Metodología de Mapeo y Taxonomía:** El artículo aborda la falta de identificación explícita de métricas de reutilización en la literatura. El estudio se propuso crear un **mapa taxonómico** detallado que vincule las métricas de reutilización con las técnicas de Minería de Datos (DM) y Aprendizaje Automático (ML) aplicables.

- **Fuentes del Mapeo:** La taxonomía se construyó analizando estudios de investigación que discutían métricas de reutilización de _software_ y las técnicas utilizadas para encontrarlas e implementarlas.
- **Métricas Identificadas:** Se identificaron métricas para dos paradigmas de programación:
    - **Orientado a Objetos (OO):** Incluyen Acoplamiento entre Clases (CCBC), Número de Hijos (NOC), Profundidad del Árbol de Herencia (DIT), Método Ponderado por Clase (WWC), Respuesta para la Clase (RFC), Acoplamiento entre Clases de Objeto (CBO) y Falta de Cohesión en Métodos (LCOM).
    - **Orientado a Procedimientos:** Incluyen Complejidad Ciclomática (CC), Líneas Totales de Código (TLOC), Líneas Ejecutables de Código (ELOC), y Métricas de Halstead.
- **Técnicas Nominadas:** Las técnicas de IA seleccionadas para comprobar su aplicabilidad son **Redes Neuronales (NN)** y **Clustering**. Las NN son efectivas para escanear repositorios e identificar el componente específico. El _clustering_ (ej., K-mean) agrupa componentes con características similares para reducir el espacio de búsqueda.

**3. El Modelo Propuesto (Clustering y Redes Neuronales):** El documento sugiere un **modelo** para la automatización de la reutilización de _software_ utilizando la clasificación, el _clustering_ y las redes neuronales, basado en la taxonomía identificada.

- **Enfoque de "Dividir y Conquistar":** El modelo utiliza primero **K-means clustering** en el repositorio de componentes. El K-means agrupa componentes con la mayor similitud dentro de un _cluster_ y la menor similitud entre _clusters_, usando métricas seleccionadas (como DIT, NOC, CBO, WWC y LCOM para el paradigma OO). Esto reduce el espacio de búsqueda, haciendo posible la regla de "Dividir y Conquistar".
- **Identificación (ANN):** Una vez que los _clusters_ están formados, se emplea un **perceptrón de capa oculta única (Single Hidden Perceptron)** dentro de una **Red Neuronal Artificial (ANN)** para identificar el componente deseado dentro de los _clusters_ recopilados. La ANN funciona en cada _cluster_ de forma secuencial, dando una salida de 0 o 1, correspondiente a encontrado o no encontrado.
- **Rendimiento Combinado:** Los autores sostienen que la minería de datos y el aprendizaje automático dan mejores resultados **cuando se utilizan en combinación** para el objetivo de encontrar e identificar el componente correcto en el caso de "desarrollo mediante reutilización".

**4. Evaluación del Modelo (Análisis de Encuesta):** Se realizó una **encuesta** a expertos del dominio con un mínimo de dos años de experiencia laboral en empresas de _software_ para evaluar la viabilidad y efectividad del modelo propuesto. La encuesta cubrió tres aspectos: automatización de la reutilización, efectividad de ML en la reutilización y el diseño del modelo.

- **Resultados Clave de la Encuesta:**
    - El **89.7%** de los encuestados está a favor de la automatización de la reutilización.
    - El **89.7%** considera que la ANN es **altamente efectiva** para automatizar la reutilización.
    - El **69%** cree que el uso combinado de K-mean _clustering_ y ANN puede producir **resultados efectivos** en la automatización de la reutilización.
    - El **72.4%** cree que el modelo propuesto es **factible** de implementar en repositorios de datos.

**5. Conclusiones:** El estudio concluye que el modelo basado en K-means _clustering_ y Redes Neuronales Artificiales de _feed-forward_ ayuda a los desarrolladores a encontrar componentes reutilizables en grandes repositorios. Los resultados de la encuesta indican que el modelo propuesto **reduce el esfuerzo, el tiempo y el costo** al identificar y reutilizar componentes. La evaluación basada en la encuesta identifica a la **ANN como la mejor técnica** entre las redes neuronales y el _clustering_ para la automatización de la reutilización de _software_.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez y la utilidad del modelo propuesto se fundamentan en las siguientes ideas clave:

1. **La Reutilización Efectiva Requiere Métricas Cuantificables que Sirvan como _Features_ para los Algoritmos de IA:** La conclusión de que se debe utilizar un enfoque basado en ML/DM se fundamenta en la premisa de que la reutilización puede medirse con **varias métricas** (ej., CBO, DIT, CC). Estas métricas son vitales para la construcción de modelos de predicción de reutilización y se convierten en los **atributos o _features_** que alimentan los algoritmos de _clustering_ y las redes neuronales, lo que permite la automatización.
2. **La Combinación de _Clustering_ y Redes Neuronales es la Práctica de ML Más Efectiva para la Recuperación de Componentes:** La conclusión sobre la superioridad de la combinación de técnicas se basa en la **evaluación del modelo por expertos**. El _clustering_ (K-mean) satisface la necesidad de **reducir el espacio de búsqueda** al agrupar componentes similares, mientras que la ANN se utiliza para la **identificación y recuperación** precisa del componente dentro de ese grupo reducido. Esta sinergia es validada por la alta respuesta positiva de los encuestados (69%) sobre la efectividad del uso combinado.
3. **La Automatización de la Reutilización a Través de la IA es una Decisión Viable y Costo-Efectiva Validada por la Industria:** La conclusión sobre el valor práctico del enfoque se fundamenta en la **aceptación y el _feedback_ positivo de la industria**. El 89.7% de los expertos apoya la idea de automatizar la reutilización, y el 58.6% (o 68.6% según la figura 9) cree que el uso de IA en la reutilización es **altamente costo-efectivo**.

---

### Valor del Paper

El artículo **"Role of Data Mining and Machine Learning in Software Reusability"** es de valor significativo para la Ingeniería de _Software_ y la aplicación práctica de la Inteligencia Artificial:

- **Marco Taxonómico Detallado:** Proporciona un **mapa taxonómico** exhaustivo que conecta las métricas de reutilización de _software_ para paradigmas OO y procedimentales con técnicas específicas de DM/ML (Clustering, Clasificación, Redes Neuronales). Esto es valioso para guiar a los investigadores y profesionales sobre qué algoritmos aplicar a qué métricas.
- **Modelo de Recuperación Híbrido Validado:** Propone un **modelo híbrido** que utiliza la fortaleza del **K-means** para organizar grandes repositorios y la precisión de la **ANN** para la identificación final del componente deseado.
- **Validación Empírica por la Industria:** El modelo es evaluado a través de una encuesta con expertos de la industria, proporcionando una **validación práctica** de su factibilidad y potencial para reducir costos y esfuerzos en el desarrollo de _software_.

La metodología es como la implementación de un **sistema bibliotecario avanzado para componentes de _software_**. El _clustering_ (K-means) es el equivalente a agrupar todos los libros (componentes) con temas o características similares en una sala específica (el _cluster_). Luego, la Red Neuronal Artificial (ANN) actúa como un **buscador de inteligencia artificial** que solo necesita escanear esa sala específica para encontrar el libro exacto deseado, reduciendo drásticamente el tiempo de búsqueda y garantizando una alta precisión en la recuperación.
