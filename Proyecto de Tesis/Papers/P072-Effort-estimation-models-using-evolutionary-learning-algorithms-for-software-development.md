#CitaLatex 
@INPROCEEDINGS{GabraniGoldie2016Effortestimationmodels,
  author={Gabrani, Goldie and Saini, Neha},
  booktitle={2016 Symposium on Colossal Data Analysis and Networking (CDAN)}, 
  title={Effort estimation models using evolutionary learning algorithms for software development}, 
  year={2016},
  volume={},
  number={},
  pages={1-6},
  abstract={Software effort estimation is a complicated task being carried out by software developers as very little information is available to them in the early phases of software development. The information collected about various attributes of software needs to be subjective, which otherwise can lead to uncertainty. Inaccurate software effort estimation can be disastrous as both underestimation and overestimation may result in schedule overruns and incorrect estimation of budget. This paper focuses on the comparative study of various non-algorithmic techniques used for estimating the software effort by empirical evaluation of five different evolutionary learning algorithms. The accuracy of these algorithms is found out and the behavior of these algorithms is analyzed with respect to the size and the type of data. All the five techniques are applied on three different datasets and various paramenters such as MMRE, PRED(25), PRED(50), PRED(75) are calculated. The proposed results are compared to other machine learning methods like SVR, ANFIS etc. The results show that evolutionary learning algorithms give more accurate results than machine learning algorithms.},
  keywords={Software;Estimation;Software algorithms;Prediction algorithms;Data models;Algorithm design and analysis;Machine learning algorithms;Software Effort Estimation;Evolutionary Learning Algorithms;Machine Learning Algorithms;Mean Magnitude of the Relative Error MMRE;Percentage of Predictions(x) PRED(x)},
  doi={10.1109/CDAN.2016.7570916},
  ISSN={},
  month={March},}

Referencia del archivo original: `(Goldie Gabrani) Effort estimation models using evolutionary learning algorithms for software development.pdf` [[(Goldie Gabrani) Effort estimation models using evolutionary learning algorithms for software development.pdf]]

El documento seleccionado es el artículo **"Effort Estimation Models Using Evolutionary Learning Algorithms for Software Development"** (Modelos de Estimación de Esfuerzo Utilizando Algoritmos de Aprendizaje Evolutivo para el Desarrollo de Software), escrito por Goldie Gabrani y Neha Saini.

Este trabajo se centra en un **estudio comparativo de cinco algoritmos de aprendizaje evolutivo no algorítmicos** para la estimación del esfuerzo de _software_. Los autores evalúan la precisión de estos algoritmos y analizan su comportamiento en relación con el tamaño y el tipo de los datos.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Problema de la Estimación del Esfuerzo de Software:** La estimación del esfuerzo de _software_ es una tarea crucial y compleja en la planificación de proyectos. La información disponible en las primeras fases del desarrollo suele ser incompleta e inconsistente, lo que puede llevar a incertidumbre. Una estimación inexacta puede ser desastrosa: la **subestimación** puede provocar retrasos en los cronogramas y sobrecostos, lo que reduce la calidad del producto; la **sobreestimación** puede llevar a la pérdida de clientes y socios. No existe un modelo único de estimación que pueda dar predicciones rápidas, correctas y precisas bajo todas las circunstancias.

**2. Técnicas de Estimación y Enfoque del Paper:** Las técnicas de estimación se dividen en algorítmicas y no algorítmicas.

- **Técnicas Algorítmicas:** Se basan en ecuaciones matemáticas (como COCOMO, SLIM) y métodos de regresión. Son sensibles a valores atípicos (_outliers_), requieren grandes _datasets_ sin datos faltantes y se basan en la estimación del tamaño del _software_, que es difícil de obtener al inicio del proyecto.
- **Técnicas No Algorítmicas:** No se basan necesariamente en relaciones matemáticas. Aunque la estimación por juicio de expertos existe, puede ser inconsistente y cuestionable. Por ello, se han desarrollado técnicas basadas en **algoritmos de aprendizaje evolutivo** (EAs) como Redes Neuronales, Programación Genética y Lógica Difusa. Estos EAs aprenden de la experiencia histórica, se refinan continuamente y son capaces de modelar relaciones complejas, además de ser menos sensibles a _outliers_.

**3. Metodología de la Investigación:** El estudio se enfocó en cinco algoritmos de aprendizaje evolutivo, algunos de ellos híbridos:

- **FRSBM** (Fuzzy Random Set Based Modeling).
- **Ensemble-R** (que une varias redes neuronales).
- **GFS-GPG-R, GFS-GSP-R, y GFS-SAP-Sym-R** (variantes que hibridan Programación Genética y Lógica Difusa).

Estos algoritmos se aplicaron a tres _datasets_ disponibles públicamente, seleccionados por su diferente tamaño:

- **Miyazaki94:** Pequeño.
- **Maxwell:** Mediano.
- **Desharnais:** Grande.

**Proceso Metodológico (3 Pasos):**

1. **Preprocesamiento de Datos (Paso I):** Se utiliza el algoritmo **KNN missing value** (K-Nearest Neighbour, ponderado por la inversa de la distancia) para manejar los valores faltantes y obtener un _dataset_ limpio.
2. **Entrenamiento y Validación (Paso II):** Se utilizó la metodología de **Validación Cruzada k** (_k-cross validation_), con $k=10$. Se empleó la herramienta de código abierto **KEEL** (Knowledge Extraction based on Evolutionary Learning) para el análisis.
3. **Medición del Rendimiento (Paso III):** Se calcularon métricas clave de evaluación:
    - **MMRE** (Mean Magnitude of the Relative Error): Debe minimizarse.
    - **PRED(25)**, **PRED(50)** y **PRED(75)** (Percentage of Predictions dentro del x% del valor real): Deben maximizarse.

**4. Resultados Clave:** Los resultados confirmaron la dependencia entre el algoritmo de estimación y el tipo y tamaño del _dataset_:

- **Rendimiento General:** Los algoritmos de aprendizaje evolutivo utilizados dieron **resultados más precisos** que otros métodos de _machine learning_ como SVR, ANFIS y MLP. Esto se atribuye a la **hibridación** de algoritmos, lo que minimiza el error de predicción.
- **Mejor Rendimiento por Tamaño de Dataset**:
    - **Dataset Grande (Desharnais):** **GFS-GPG-R** tuvo el mejor rendimiento (MMRE 0.288).
    - **Dataset Mediano (Maxwell):** **GFS-GSP-R** fue el mejor (MMRE 0.273).
    - **Dataset Pequeño (Miyazaki94):** **GFS-SAP-Sym-R** fue el mejor (MMRE 0.273).
- **Algoritmo Consistente:** **GFS-SAP-Sym-R** se identificó como un buen método para _datasets_ de **cualquier tamaño** (pequeño, mediano, grande).
- **Peor Rendimiento:** **Ensemble-R** tuvo el peor rendimiento en los tres _datasets_ (MMRE de 0.594 a 1.174), posiblemente debido a la poca variedad en los modelos de redes neuronales ensamblados.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que el rendimiento del algoritmo evolutivo depende del tipo de datos y la necesidad de modelos híbridos se fundamentan en las siguientes ideas clave:

1. **La Insuficiencia de los Modelos Algorítmicos para la Estimación Temprana:** La premisa fundamental se basa en la dificultad de los modelos algorítmicos (como COCOMO) para manejar datos incompletos, inconsistentes o categóricos, y su fuerte dependencia de la estimación del tamaño, que es inexacta al principio del proyecto. Esto justifica la necesidad de los métodos no algorítmicos (EAs).
2. **La Superioridad de la Hibridación de Algoritmos Evolutivos sobre los Métodos de Machine Learning Tradicionales:** La conclusión principal se basa en la evidencia experimental que muestra que los EAs utilizados (muchos de ellos híbridos, como GFS-GSP-R que combina programación genética, lógica difusa y _simulated annealing_) **superan consistentemente a los algoritmos de _machine learning_ tradicionales** como SVR, MLP y ANFIS en las métricas de precisión (MMRE y PRED(25)).
3. **La Fuerte Dependencia entre el Algoritmo Óptimo y las Características del Dataset:** La conclusión clave es que **no existe una técnica única** que dé resultados precisos en todas las circunstancias. El estudio demuestra esta dependencia al identificar que diferentes algoritmos de EA (GFS-GPG-R, GFS-GSP-R, GFS-SAP-Sym-R) son óptimos para _datasets_ de diferentes tamaños (grande, mediano y pequeño, respectivamente).

---

### Valor del Paper

El valor del artículo **"Effort Estimation Models Using Evolutionary Learning Algorithms for Software Development"** es alto y tiene un impacto directo en la planificación de proyectos:

- **Guía para la Selección de Algoritmos:** El _paper_ es de suma importancia para las organizaciones de _software_. Proporciona una **guía empírica y práctica** que permite a las organizaciones determinar qué algoritmo de aprendizaje evolutivo es el más adecuado para predecir el esfuerzo basándose en el **tipo y tamaño del _dataset_** que posean.
- **Validación de la Eficacia de los EAs Híbridos:** El estudio valida la eficacia de la combinación de técnicas de aprendizaje evolutivo (hibridación) para reducir el error de predicción en un campo complejo como la estimación del esfuerzo de _software_.
- **Mejora de la Planificación Empresarial:** La estimación precisa del esfuerzo es esencial para el éxito de un proyecto. Al proporcionar conclusiones sólidas sobre qué método seleccionar según el tipo de datos, el trabajo ayuda a las organizaciones a realizar **cálculos precisos del presupuesto y los requisitos de mano de obra**, garantizando la finalización oportuna y la mejora de la calidad.