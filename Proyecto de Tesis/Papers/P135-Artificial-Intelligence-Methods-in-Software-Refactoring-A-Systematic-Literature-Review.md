#CitaLatex 
@inproceedings{Motogna2024ArtificialIntelligence,
  title = {Artificial Intelligence Methods in Software Refactoring: A Systematic Literature Review},
  url = {http://dx.doi.org/10.1109/SEAA64295.2024.00055},
  DOI = {10.1109/seaa64295.2024.00055},
  booktitle = {2024 50th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},
  publisher = {IEEE},
  author = {Motogna,  Simona and Berciu,  Liviu-Marian and Moldovan,  Vasilica-Andreea},
  year = {2024},
  month = aug,
  pages = {309–316}
}

Referencia del archivo original: `(Simona Motogna) Artificial Intelligence Methods in Software Refactoring A Systematic Literature Review.pdf` [[(Simona Motogna) Artificial Intelligence Methods in Software Refactoring A Systematic Literature Review.pdf]]

El documento seleccionado es el artículo **"Artificial Intelligence Methods in Software Refactoring: A Systematic Literature Review"** (Métodos de Inteligencia Artificial en el Refactoring de _Software_: Una Revisión Sistemática de la Literatura), escrito por Simona Motogna, Liviu-Marian Berciu y Vasilica-Andreea Moldovan.

Este trabajo presenta una **Revisión Sistemática de la Literatura (SLR)** con el objetivo de mapear el estado del arte en la aplicación de métodos de Inteligencia Artificial (IA) y _Machine Learning_ (ML) en las diferentes fases del ciclo de vida del **Refactoring de _Software_**. El _refactoring_ es un proceso esencial en la ingeniería de _software_ que busca mejorar la calidad del código (estructura, mantenibilidad y reutilización) sin alterar el comportamiento o la funcionalidad del sistema.

### Resumen Completo del Documento

**1. Metodología de la Revisión Sistemática (SLR):** Los autores siguieron una metodología rigurosa basada en protocolos definidos. El objetivo principal era describir el dominio de la IA/ML en relación con el _refactoring_ de sistemas de _software_.

- **Alcance:** El estudio incluyó publicaciones revisadas por pares (revistas y conferencias) entre **2010 y marzo de 2024**. El año 2010 fue elegido como punto de partida debido a los avances significativos en IA/ML (particularmente _deep learning_) y el aumento en la disponibilidad de _datasets_ de repositorios de _software_ de código abierto.
- **Estrategia de Búsqueda:** Se consultaron cinco bibliotecas digitales principales (ACM Digital Library, IEEE Explore, ScienceDirect, Springer-Link y Wiley Online Library) utilizando una consulta de palabras clave estructurada (L1: sistemas de _software_, L2: _refactoring_, L3: IA/ML).
- **Recolección de Datos:** Se extrajeron 1,986 artículos inicialmente, que se redujeron a 127 mediante revisión manual. Se aplicó una técnica de **_snowballing_ hacia atrás** para añadir 29 entradas adicionales.
- **Conjunto de Datos Final:** El análisis se basó en un conjunto final de **156 artículos**.

**2. Resultados y Tendencias (Distribución de la Investigación):**

- **Tendencia de Publicación:** Se observó una **tendencia creciente** en las publicaciones sobre el tema desde 2010, con un **claro avance a partir de 2016** y un **pico de publicaciones en 2023**. Esto sugiere un interés y avances crecientes en la aplicación de metodologías de IA al _refactoring_.
- **Tipo de Investigación:** La distribución de los artículos mostró un **dominio abrumador de los trabajos orientados a la Solución (72.44%)**. Las formas de investigación como la **Evaluación (20.51%), la Validación (1.92%) y la Experiencia (0.64%) están menos representadas**. Esto subraya una preferencia por la innovación de soluciones sobre la evaluación rigurosa de su efectividad.
- **Fases del Ciclo de Vida Abordadas (RQ1):** El estudio se centró en seis fases del _refactoring_.
    - **Detección de _Refactoring_:** Representa la etapa con **más contribuciones (37.18%)**.
    - **Recomendación de _Refactoring_:** Es la segunda etapa de mayor interés, con el 32.69% de los artículos.
    - **Predicción:** Representa el 10.90% de los estudios.
    - **Priorización, Pruebas y Documentación** son áreas significativamente **menos exploradas**.

**3. Métodos de IA/ML Utilizados (RQ2):** Se identificaron 56 métodos diferentes de IA/ML aplicados a las etapas de _refactoring_.

- **Clasificación por Tipo de Aprendizaje:**
    - **Aprendizaje Supervisado:** El **más común (56.41%)**. Esto se debe a que los investigadores buscan una mayor precisión y fiabilidad al aprender de datos etiquetados (labeled data).
    - **Aprendizaje No Supervisado:** Utilizado por el 23.71%, destacando su valor para descubrir patrones ocultos cuando la obtención de datos etiquetados es difícil.
    - **Aprendizaje Semi-Supervisado:** Adopción moderada (9.61%), utilizado estratégicamente cuando los datos etiquetados son limitados.
    - **Métodos Híbridos:** Su uso refleja el reconocimiento de la necesidad de integrar diversas técnicas para abordar la complejidad.
- **Top 5 Algoritmos Más Utilizados:** Los más frecuentes demuestran una clara inclinación por las técnicas de optimización y la robustez.
    1. **Random Forests (18 estudios):** Destaca su uso en la **Predicción** de _refactoring_ (29.41% de los casos de predicción).
    2. **Genetic Algorithm (17 estudios):** Dominante en la **Recomendación** de _refactoring_ (15.68% de los casos de recomendación).
    3. **Support Vector Machine (SVM) (15 estudios)**.
    4. **Convolutional Neural Network (CNN) (12 estudios):** Dominante en la **Detección** de _refactoring_ (20.68% de los casos de detección).
    5. **Decision Trees (11 estudios)**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de la SLR sobre las tendencias, las brechas y las oportunidades de investigación se fundamentan en las siguientes ideas clave:

1. **El _Refactoring_ es Intrínsecamente un Problema de Optimización y Clasificación que se Beneficia de la Robustez de los Algoritmos de Conjunto (_Ensemble_) y Evolutivos:** La conclusión sobre los métodos de IA más comunes se basa en que los algoritmos en el Top 5 (Random Forests, Genetic Algorithms, SVM, CNNs) **muestran eficacia y versatilidad** al aplicarse al proceso de _refactoring_. La predominancia de Random Forests y Genetic Algorithms subraya el interés por las técnicas de **optimización y la robustez**.
2. **Existe una Fuerte Desviación Investigativa hacia la Propuesta de Soluciones, Creando una Brecha Crítica en la Evaluación Rigurosa de la Implementación en la Práctica:** La conclusión de que se necesita más investigación se fundamenta en el hallazgo de que **más del 72% de los artículos proponen soluciones**, mientras que las publicaciones centradas en la **Evaluación, Validación o Experiencia son mínimas**. Esta falta de evaluación y validación rigurosa **impide la implementación práctica** de las soluciones de IA/ML en entornos de _software_ reales, limitando su impacto en las prácticas empresariales.
3. **La Detección y Recomendación de _Refactoring_ Dominan la Investigación, pero la Priorización y la Predicción son Áreas Maduras para Obtener Grandes Beneficios de ML:** La conclusión sobre las oportunidades de investigación se fundamenta en el análisis de las fases. Aunque la Detección es la fase más investigada, los autores creen firmemente que la **Predicción y Priorización de _refactoring_** pueden **beneficiarse más de las soluciones de IA/ML** y generar mejoras significativas en los costos generales de desarrollo y el rendimiento del sistema.

---

### Valor del Paper

El artículo **"Artificial Intelligence Methods in Software Refactoring: A Systematic Literature Review"** tiene un valor sustancial como documento de referencia y de trazado de caminos para la investigación:

- **Mapeo Exhaustivo y Actualizado:** Proporciona un **análisis integral y actualizado** (2010-2024) de la intersección entre IA y _refactoring_, refinando el alcance de estudios anteriores. El conjunto de datos de 156 artículos es un recurso significativo para la comunidad investigadora.
- **Identificación de Tendencias y Brechas:** El estudio identifica **brechas críticas** en el tipo de investigación (falta de evaluación/validación) y en las fases del _refactoring_ menos abordadas (Priorización y Pruebas). Esto ofrece una **hoja de ruta clara** para futuras investigaciones.
- **Clasificación de Métodos por Tarea:** El _paper_ va más allá de un simple conteo de algoritmos, mostrando qué métodos específicos (ej., CNN para Detección, Genetic Algorithms para Recomendación, Random Forests para Predicción) son más efectivos para **fases específicas del ciclo de vida del _refactoring_**.

Este SLR es como el **catálogo de herramientas y el informe de mercado** de la industria de la reparación automatizada de _software_. Indica con precisión **qué máquinas (algoritmos)** están siendo más utilizadas, **dónde están construyendo (Detección)**, y **dónde hay que invertir más esfuerzo (Evaluación y Priorización)** para que estas herramientas de IA pasen de ser prototipos de laboratorio a soluciones robustas y fiables para la práctica industrial.
