#CitaLatex 
@INPROCEEDINGS{AlharbiJasser2021MachineLearningwith,
  author={Alharbi, Jasser and Bhattacharyya, Siddhartha},
  booktitle={2021 IEEE International Systems Conference (SysCon)}, 
  title={Machine Learning with System/Software Engineering in Selection and Integration of Intelligent Algorithms}, 
  year={2021},
  volume={},
  number={},
  pages={1-7},
  abstract={Machine learning has become an essential component in the design of intelligent systems across several disciplines. This widespread use of machine learning has led to the importance of evaluating how Systems/Software Engineering approaches go hand in hand with Machine Learning to reliably integrate intelligence in software systems. In this research effort, our motivation is to develop a systematic approach also termed as Machine Learning Engineering for the selection and integration of machine learning algorithms in systems. The proposed approach discusses combining a structured approach for designing and developing system/software with an experimental analysis that data scientists perform on machine learning algorithms. This experimental analysis is essential as some of the characteristics exhibited by intelligent algorithms cannot be predicted or guaranteed compared to systems without intelligent algorithms. In this paper, we elaborate on our system/software engineering guided disciplined approach by comparing two machine learning algorithms that focus on the recognition of handwritten digits. The algorithms we compare are the Logistic Regression and Neural Network algorithms. After the analysis, we identify the contracts that should be associated with intelligent components to better predict the behavior of the system as a result of the selection of one of the components to be a machine learning algorithm. Finally, we indicate how the results can be used by Systems/Software Engineers in integrating intelligent algorithms.},
  keywords={Machine learning algorithms;Systematics;Neural networks;Machine learning;Prediction algorithms;Reliability engineering;Software systems},
  doi={10.1109/SysCon48628.2021.9447111},
  ISSN={2472-9647},
  month={April},}

Referencia del archivo original: `(Jasser Alharbi) Machine Learning with System Software Engineering in Selection and Integration of Intelligent Algorithms.pdf` [[(Jasser Alharbi) Machine Learning with System Software Engineering in Selection and Integration of Intelligent Algorithms.pdf]]

El documento seleccionado es el artículo **"Machine Learning with System/Software Engineering in Selection and Integration of Intelligent Algorithms"** (Aprendizaje Automático con Ingeniería de Sistemas/Software en la Selección e Integración de Algoritmos Inteligentes), escrito por Jasser Alharbi y Siddhartha Bhattacharyya.

Este trabajo aborda la creciente necesidad de un **enfoque sistemático (Machine Learning Engineering)** para la selección e integración confiable de algoritmos de _Machine Learning_ (ML) en sistemas de _software_. Los autores proponen una metodología guiada por la ingeniería de sistemas/software para evaluar y formalizar los contratos de rendimiento de los componentes inteligentes.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. El Problema de la Integración Confiable de ML:** El _Machine Learning_ (ML) se ha convertido en un componente esencial para el diseño de sistemas inteligentes en varias disciplinas. Sin embargo, a diferencia de los sistemas tradicionales, los algoritmos inteligentes exhiben características que no pueden predecirse o garantizarse con facilidad. Dado que estos sistemas a menudo se integran en **aplicaciones críticas para la seguridad** o sistemas autónomos (como en medicina o aeroespacial), es crucial aplicar un enfoque estructurado para asegurar la calidad y determinar los límites de rendimiento. El objetivo del _paper_ es desarrollar una metodología de Ingeniería de _Machine Learning_ (Machine Learning Engineering) que combine un enfoque estructurado de Ingeniería de Sistemas/Software (SE) con el análisis experimental que realizan los científicos de datos.

**2. Metodología SEGML Propuesta (Structured Framework):** Los autores proponen una metodología guiada por la Ingeniería de Sistemas/Software para el Aprendizaje Automático (SEGML, por sus siglas en inglés). Esta metodología requiere una interacción bien planificada entre el Ingeniero de _Software_ (SE), enfocado en la fiabilidad del producto, y el Científico de Datos (DS), enfocado en el rendimiento.

Las etapas del marco SEGML son:

1. **Selección del Caso de Uso:** Elegir un escenario de aplicación (ej., reconocimiento de dígitos escritos a mano).
2. **Evaluación de la Necesidad de Inteligencia:** Determinar si la inteligencia habilitada por ML es superior a la automatización simple.
3. **Identificación de Algoritmos ML Potenciales:** El DS sugiere algoritmos con el potencial de cumplir con los requisitos.
4. **Selección del Dataset:** Definir el conjunto de datos de entrenamiento y examen (se eligió el dataset **MNIST** para el estudio).
5. **Identificación de Parámetros Clave de Rendimiento (KPP):** Determinar los parámetros cuya variación puede evaluarse fácilmente sin cambiar la arquitectura del algoritmo (ej., _learning rate_, _epoch_, _batch size_).
6. **Evaluación del Rendimiento:** Medir el rendimiento de cada algoritmo en **precisión (_accuracy_)** y **tiempo de aprendizaje**.
7. **Variación de Parámetros:** Cambiar los KPP y repetir la ejecución y evaluación.
8. **Resultado Final:** Identificación de las **asunciones y garantías (contratos)** cumplidas por el componente ML, basadas en los valores de KPP.

**3. Estudio de Caso: Reconocimiento de Dígitos Escritos a Mano:** Para demostrar el marco SEGML, se seleccionó el reconocimiento de dígitos escritos a mano, un subcampo de OCR (Reconocimiento Óptico de Caracteres).

- **Algoritmos Comparados:** Se eligieron dos algoritmos populares para esta tarea: **Regresión Logística** y **Redes Neuronales**.
- **Requisitos de Ejemplo:** Se establecieron requisitos, como clasificar objetos escritos a mano con más del **90% de precisión** dentro de un tiempo de $10^{-5}$ segundos.
- **Parámetros Clave de Rendimiento (KPPs):** Los KPPs que se variaron fueron el _batch size_ (50, 100, 150), el _epoch_ (5 a 20 en incrementos de 5) y el _learning rate_ (de 0.001 a 0.3). El tamaño de entrada y el número de clases se mantuvieron fijos.

**4. Resultados de la Evaluación y Comparación:** La evaluación experimental mostró que el rendimiento de los algoritmos era diferente al variar los KPPs.

- **Regresión Logística:**
    
    - La precisión (_accuracy_) mejoró consistentemente al aumentar el _epoch_ y el _learning rate_, alcanzando hasta el **92%**.
    - El **cambio en el _epoch_ no tuvo efecto en la precisión final** alcanzada (92%).
    - La Regresión Logística mostró un **rendimiento más estable** y un cambio de rendimiento "lento y gradual, como se esperaba".
    - Tomó menos tiempo de entrenamiento en la mayoría de los casos examinados.
- **Redes Neuronales:**
    
    - El algoritmo comenzó con una precisión excelente (hasta el **98%**) para valores bajos de _learning rate_ y _epoch_.
    - Sin embargo, la precisión **disminuyó drásticamente** cuando el _learning rate_ superó el valor de 0.03, cayendo hasta un 9% o 11% en algunos _runs_.
    - La variación en el tiempo de entrenamiento de la Red Neuronal no mostró un patrón consistente.

**5. Conclusiones sobre Contratos y Estabilidad:** La Regresión Logística demostró un rendimiento **más estable** en el reconocimiento de dígitos escritos a mano en comparación con la Red Neuronal.

El proceso SEGML permitió identificar la **frontera de rendimiento** (performance boundary) de la Red Neuronal: si se integra este algoritmo, el _learning rate_ debe **cumplir estrictamente** el requisito de no superar el valor de 0.03.

El resultado final de este proceso son los **contratos** (asunciones sobre KPPs y garantías sobre precisión/tiempo) que deben asociarse con el algoritmo inteligente seleccionado para el análisis de fiabilidad y reutilización del sistema global.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de formalizar los **contratos** para los algoritmos inteligentes y la identificación de **límites de rendimiento** se fundamentan en las siguientes ideas clave:

1. **La Inconsistencia Impredecible de los Algoritmos Inteligentes:** La conclusión principal se basa en la premisa de que las características de los algoritmos inteligentes **no pueden predecirse o garantizarse** de manera fiable sin experimentación. El estudio demostró esto empíricamente: la Red Neuronal, a pesar de tener un rendimiento inicial superior (98%), se volvió **drásticamente inestable** cuando el _learning rate_ superó un umbral específico (0.03), mientras que la Regresión Logística mostró una **mejora lenta y estable**.
2. **La Necesidad de Estructurar la Experimentación mediante la Ingeniería de Software (SE):** La conclusión de que se necesita la metodología SEGML se fundamenta en la observación de que, para integrar la inteligencia de manera confiable en productos _software_ utilizados en aplicaciones críticas para la seguridad, el proceso debe seguir un **enfoque disciplinado y estructurado** heredado de los principios de la ingeniería de sistemas/software. Esto implica la interacción formal entre el Ingeniero de _Software_ y el Científico de Datos para definir los KPPs y los requisitos.
3. **Los Contratos Formales (Asunciones y Garantías) Permiten la Confiabilidad y Reutilización del Sistema:** La conclusión de que el proceso genera valor industrial se basa en el resultado de que el análisis identifica las **asunciones (restricciones en los KPPs)** y las **garantías (rendimiento esperado)** que definen el contrato del componente ML. Estos contratos son esenciales para el **análisis composicional** de la fiabilidad del sistema inteligente completo y para la **reutilización** del algoritmo entrenado.

---

### Valor del Paper

El valor del artículo **"Machine Learning with System/Software Engineering in Selection and Integration of Intelligent Algorithms"** es significativo para el campo emergente de Machine Learning Engineering (MLE):

- **Propuesta de Marco Metodológico (SEGML):** El valor principal es la propuesta del marco **SEGML**, que proporciona un **enfoque estructurado y disciplinado** para abordar la selección e integración de algoritmos de ML. Esto aborda una necesidad crítica en la industria de crear productos inteligentes confiables.
- **Formalización de los Contratos de Componentes Inteligentes:** El _paper_ introduce el concepto crucial de **contratos** para algoritmos inteligentes, definiendo las **fronteras de rendimiento** (como el _learning rate_ máximo permitido para una Red Neuronal) que deben cumplirse para garantizar la estabilidad del sistema.
- **Guía para la Interacción Interdisciplinaria:** El trabajo destaca el **tipo de interacción planeada** que debe ocurrir entre el Ingeniero de _Software_ (SE) y el Científico de Datos (DS). Esto es vital para superar la falta de comprensión mutua y asegurar que se consideren tanto la fiabilidad del producto como la optimización del rendimiento del modelo.

Este enfoque es como la **certificación de un componente crítico de un motor**. No es suficiente saber que un componente de ML puede funcionar; el marco SEGML actúa como el proceso de certificación de ingeniería, sometiendo el componente a pruebas rigurosas bajo parámetros variables (KPPs) para determinar sus límites operativos. El resultado es un "contrato" que establece: "Este motor funciona con un 92% de eficiencia, siempre y cuando la presión del aceite (learning rate) no exceda 0.03", lo que permite a los ingenieros de sistemas integrarlo de manera segura y confiable.
