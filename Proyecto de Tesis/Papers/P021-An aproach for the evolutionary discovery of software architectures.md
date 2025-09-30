#CitaLatex 
@article{RAMIREZ2015234,
title = {An approach for the evolutionary discovery of software architectures},
journal = {Information Sciences},
volume = {305},
pages = {234-255},
year = {2015},
issn = {0020-0255},
doi = {https://doi.org/10.1016/j.ins.2015.01.017},
url = {https://www.sciencedirect.com/science/article/pii/S0020025515000559},
author = {Aurora Ramírez and José Raúl Romero and Sebastián Ventura},
keywords = {Search based software engineering, Software architecture discovery, Evolutionary algorithms, Ranking aggregation fitness},
abstract = {Software architectures constitute important analysis artefacts in software projects, as they reflect the main functional blocks of the software. They provide high-level analysis artefacts that are useful when architects need to analyse the structure of working systems. Normally, they do this process manually, supported by their prior experiences. Even so, the task can be very tedious when the actual design is unclear due to continuous uncontrolled modifications. Since the recent appearance of search based software engineering, multiple tasks in the area of software engineering have been formulated as complex search and optimisation problems, where evolutionary computation has found a new area of application. This paper explores the design of an evolutionary algorithm (EA) for the discovery of the underlying architecture of software systems. Important efforts have been directed towards the creation of a generic and human-oriented process. Hence, the selection of a comprehensible encoding, a fitness function inspired by accurate software design metrics, and a genetic operator simulating architectural transformations all represent important characteristics of the proposed approach. Finally, a complete parameter study and experimentation have been performed using real software systems, looking for a generic evolutionary approach to help software engineers towards their decision making process.}
}

Lectura basada en [[(Aurora Ramirez) An approach for the evolutionary discovery of software architectures.pdf]]

### Resumen del Paper: "Un Enfoque para el Descubrimiento Evolutivo de Arquitecturas de Software"

El artículo propone un **algoritmo evolutivo (EA)** para el **descubrimiento semi-automático de arquitecturas de software** basadas en componentes. El objetivo es ayudar a los ingenieros de software en la tarea de analizar un sistema existente para extraer su estructura arquitectónica, un proceso que normalmente es manual, tedioso y muy dependiente de la experiencia del arquitecto. El enfoque se enmarca dentro de la disciplina de **Ingeniería de Software Basada en Búsqueda (SBSE)**.

---

### 1. El Problema: Descubrimiento de Arquitecturas a partir de Modelos de Análisis

La tarea de descubrir la arquitectura de un sistema de software es fundamental, pero se vuelve muy compleja cuando la documentación es escasa o el diseño original se ha degradado por modificaciones no controladas. Muchos enfoques existentes se basan en la ingeniería inversa del código fuente, lo cual puede no reflejar la concepción original de alto nivel.

Para superar esto, los autores proponen usar como punto de partida los **diagramas de clases de la fase de análisis**. Estos modelos ofrecen una vista intermedia, más abstracta que el código pero más concreta que los requisitos, y son un buen punto de partida para identificar los bloques funcionales del sistema.

### 2. La Solución: Un Algoritmo Evolutivo para Descubrir Arquitecturas

El enfoque formula el descubrimiento de arquitecturas como un problema de optimización, donde se busca la mejor manera de agrupar las clases de un diagrama en componentes más abstractos.

#### **a. Codificación (Genotipo): Representación Intuitiva de la Arquitectura**

- Una de las ideas clave es el uso de una **estructura de árbol** para codificar cada arquitectura candidata.
- Esta representación es **jerárquica y flexible**, permitiendo un número variable de componentes. Además, es más **comprensible para los arquitectos** que las codificaciones lineales, ya que se asemeja a cómo las herramientas de modelado estructuran los artefactos de diseño.
- El árbol representa la arquitectura completa, con nodos para componentes, conectores, clases e interfaces.

#### **b. Función de Calidad (Fitness): Agregación de Rankings**

Para evaluar la calidad de cada arquitectura, se utiliza una **función de fitness basada en la agregación de rankings**. En lugar de combinar directamente los valores de diferentes métricas (lo que requeriría una normalización artificial), el método clasifica a todos los individuos de la población para cada métrica por separado y luego suma sus posiciones en el ranking. El objetivo es minimizar este valor agregado.

Las tres métricas utilizadas, inspiradas en principios de buen diseño de software, son:

1. **ICD (Intra-Modular Coupling Density):** Mide el equilibrio entre cohesión (relaciones internas de un componente) y acoplamiento (relaciones externas). Se busca maximizar esta métrica.
2. **ERP (External Relations Penalty):** Penaliza las relaciones entre clases de diferentes componentes que no se abstraen como interfaces (por ejemplo, herencia o asociaciones no dirigidas). Se busca minimizar esta métrica.
3. **GCR (Groups/Components Ratio):** Favorece arquitecturas donde cada componente agrupa un único conjunto de clases fuertemente interconectadas. Se busca minimizar este métrica (el valor óptimo es 1).

#### **c. Operador Genético: Mutaciones que Simulan Transformaciones Arquitectónicas**

La evolución y exploración de nuevas arquitecturas se realiza a través de un **operador de mutación especializado** que simula las transformaciones que un arquitecto aplicaría manualmente. Se utiliza una ruleta con pesos para seleccionar una de las cinco posibles mutaciones:

1. **Añadir un componente:** Crea un nuevo componente moviendo clases de otros existentes.
2. **Dividir un componente:** Divide un componente en dos nuevos.
3. **Eliminar un componente:** Elimina un componente y distribuye sus clases entre los restantes.
4. **Fusionar dos componentes:** Une dos componentes en uno solo.
5. **Mover una clase:** Mueve una clase de un componente a otro.

Estas operaciones están guiadas por heurísticas basadas en el conocimiento del dominio para generar soluciones de mayor calidad.

### 3. Evaluación y Resultados

- El enfoque fue validado utilizando siete sistemas de software reales de diversa complejidad.
- Se realizó un estudio exhaustivo de los parámetros del algoritmo (métodos de selección, pesos de las mutaciones, tamaño de la población) para encontrar la configuración más adecuada y ofrecer guías a los arquitectos.
- Los resultados demuestran que el algoritmo es capaz de gestionar el **conflicto (_trade-off_) entre las métricas** (por ejemplo, mejorar el ERP puede empeorar el ICD) y encontrar soluciones de buena calidad para todos los casos de estudio.

### Conclusión:

Este paper podría ser **muy útil para tu tesis**, especialmente si tu investigación se centra en:

- **Ingeniería de Software Basada en Búsqueda (SBSE):** Es un ejemplo práctico y detallado de cómo aplicar un algoritmo evolutivo a un problema de diseño de software.
- **Descubrimiento y Recuperación de Arquitecturas de Software:** Ofrece un enfoque novedoso que parte de modelos de análisis (diagramas de clases) en lugar del código fuente, lo cual es una diferencia importante con otros trabajos.
- **Automatización del Diseño de Software:** El trabajo se enfoca en automatizar una tarea de alto nivel, tradicionalmente humana, para ofrecer soporte a la toma de decisiones del arquitecto.
- **Métricas de Calidad y Optimización Multi-criterio:** Aunque usa un algoritmo mono-objetivo, la función de fitness y el análisis de resultados abordan explícitamente el conflicto entre métricas de diseño clave como cohesión y acoplamiento.
- **Algoritmos Evolutivos Aplicados:** Presenta un diseño detallado de componentes específicos del problema, como la codificación en árbol y los operadores de mutación basados en el dominio, que son más avanzados que los enfoques genéricos.