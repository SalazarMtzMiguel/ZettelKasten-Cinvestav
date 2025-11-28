#CitaLatex 
@INPROCEEDINGS{Donetskaya2020DevelopmentofDesignProcedures,
  author={Donetskaya, Ju. V. and Gatchin, Yu. A.},
  booktitle={2020 Wave Electronics and its Application in Information and Telecommunication Systems (WECONF)}, 
  title={Development of Design Procedures for the Synthesis of Design Solutions for Data Management, Design and Production Procedures at the Stages of the Life Cycle of an Electronic Product}, 
  year={2020},
  volume={},
  number={},
  pages={1-5},
  abstract={The report suggests the development of design procedures for the synthesis of design solutions for managing product data and design and production procedures at the stages of the life cycle. Variants of the tasks of forming design decisions are given, the requirements for them are formulated. The rules of choosing descriptions of the components of a digital passport and the wording of the similarity criterion are presented, which forms the developed design procedures. Based on the results obtained, an implementation option is proposed for the formation of design decisions.},
  keywords={Manufacturing industries;Instruments;Production;Telecommunications;Task analysis;design procedures;data management;synthesis of design decisions;management of design and production procedures},
  doi={10.1109/WECONF48837.2020.9131470},
  ISSN={},
  month={June},}

Referencia del archivo original: `(Ju. V. Donetskaya) Development of Design Procedures for the Synthesis of Design Solutions for Data Management Design.pdf` [[(Ju. V. Donetskaya) Development of Design Procedures for the Synthesis of Design Solutions for Data Management Design.pdf]]

El documento seleccionado es el artículo **"Development of Design Procedures for the Synthesis of Design Solutions for Data Management Design"** (Desarrollo de Procedimientos de Diseño para la Síntesis de Soluciones de Diseño para la Gestión de Datos, Diseño y Procedimientos de Producción en las Etapas de la Vida del Producto), escrito por Ju. V. Donetskaya y Yu. A. Gatchin.

Este trabajo aborda la necesidad de un enfoque sistemático para gestionar los datos de productos y los procedimientos de diseño y producción a lo largo del ciclo de vida de un producto electrónico complejo.

### Resumen Completo del Documento

**1. Contexto y Problema Central:** Un producto electrónico moderno es un complejo _hardware-software_. Para su entrega y gestión, las empresas utilizan diversos sistemas (PDM, ERP, MES, QMS). El desafío radica en que cada empresa crea su propia **descripción única del producto en forma de su pasaporte digital**. Aunque esto permite la interacción interna, la colaboración operativa entre diferentes empresas se dificulta debido a la necesidad de coordinar los formatos de datos entre sistemas heterogéneos. Por lo tanto, el trabajo se centra en desarrollar nuevos enfoques para la organización de la interacción empresarial utilizando el contenido del pasaporte digital.

**2. El Pasaporte Digital y las Tareas de Solución:** El pasaporte digital es un conjunto de datos del producto (objetos de información) y los procedimientos de diseño y producción correspondientes. Consiste en $k$ conjuntos de componentes, donde cada elemento es un par de “objeto de información – procedimiento de diseño y producción”. La implementación de estos procedimientos requiere la adopción de ciertas decisiones de diseño. Los autores han generalizado siete tareas clave para la formación de estas decisiones:

1. Búsqueda de datos sobre productos y sus componentes.
2. Búsqueda de datos sobre componentes comprados (PC), materiales y sus proveedores.
3. Generación de datos para documentación desarrollada o revisada.
4. Búsqueda de datos sobre documentación de diseño, _software_ y tecnológica (DD, SD y TD).
5. Monitoreo de la implementación de tareas unificadas (horarios de trabajo y solicitudes de lanzamiento de producción).
6. Gestión de operaciones de producción.
7. Búsqueda de procedimientos de diseño y producción.

**3. Requisitos para las Soluciones de Diseño:** La variabilidad de las decisiones de diseño generadas está determinada por los requisitos, que indican los parámetros a analizar para formar una solución de diseño. Estos requisitos se dividen en dos tipos y se establecen como **variables lingüísticas** (con valores "0" si no se analiza o "1" si sí se analiza).

- **Requisitos para la Gestión de Datos del Producto (Primer Tipo):** Incluyen 11 parámetros, como el tipo de producto (complejo, unidad de ensamblaje, parte), el fabricante, la característica del producto (IPC, de nueva creación, prestado), la presencia de comentarios en la DD, SD o TD, la posibilidad de adquisición (varios o un solo proveedor), si hay problemas de calidad inadecuada, disponibilidad en _stock_ y tipo de estructura electrónica del producto (EPS).
- **Requisitos para Procedimientos (Segundo Tipo):** Incluyen 7 parámetros para los procedimientos de diseño (tipo de documento, tipo de trabajo, condición controlada, tipo de producto, presencia de comentarios, disponibilidad en _stock_ y característica de producción), y 3 parámetros para los procedimientos de producción (etapa del ciclo de vida del producto, tipo de documento del cliente y la tarea de formar una solución de diseño).

**4. Modelado Matemático y Procedimiento de Análisis:** Los componentes del pasaporte digital están interconectados y se representan mediante un **modelo matemático**. Este modelo se compone de modelos de componentes, descripción, sustitución, interacción y parámetros de los componentes del pasaporte digital. La tarea de crear decisiones de diseño se reduce a construir una matriz basada en estos modelos y en las variables lingüísticas.

El procedimiento de análisis utiliza matrices de comparaciones por pares y calcula los valores de la función de pertenencia para una variable lingüística a través del **vector propio (eigenvector) de una matriz**.

**5. Reglas de Selección y Criterio de Similitud:** El análisis permite desarrollar reglas para elegir descripciones de los componentes del pasaporte digital. Esta selección se realiza mediante la verificación de la **proximidad de las descripciones** a los requisitos, lo que implica resolver una ecuación lineal. El proceso requiere verificar el cumplimiento de las **condiciones de Gauss-Markov** para confirmar la posibilidad de formar decisiones de diseño.

El **criterio de similitud** se formula al cumplirse las condiciones de Gauss-Markov y se basa en el método de los **mínimos cuadrados** para minimizar el error $\Delta(\beta)$. También se determinan los límites superiores e inferiores del rango de valores de similitud.

**6. Opción de Implementación (Algoritmo Evolutivo):** Dado que el modelo del pasaporte digital contiene un **modelo de interacción**, el problema se considera un **problema de grafos** donde los componentes forman un árbol. La solución se reduce a la construcción de un **árbol de expansión (_spanning tree_)**. Para esto, se utiliza un algoritmo basado en la **paradigmas de comportamiento de la colonia de abejas (_bee swarm method_)**. El algoritmo busca en el espacio de soluciones prometedoras que caen dentro del intervalo de confianza, elige las posiciones base y forma un nuevo conjunto, finalizando cuando se completa el protocolo del árbol de expansión.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ sobre el desarrollo exitoso de procedimientos de diseño y una metodología para la fabricación de instrumentación se fundamentan en las siguientes ideas clave:

1. **El Pasaporte Digital como Mecanismo de Interoperabilidad para Sistemas Heterogéneos:** La conclusión de que es posible la interacción entre diversas empresas se basa en la idea de que el **contenido del pasaporte digital** (el conjunto único de datos y procedimientos de una empresa) puede ser utilizado para **gestionar datos y procedimientos** y superar la limitación de la coordinación de formatos de datos entre sistemas heterogéneos (PDM, ERP).
2. **Formalización de Decisiones de Diseño Mediante Lógica Difusa y Modelos Matemáticos:** La rigurosidad del procedimiento de síntesis se fundamenta en la aplicación de un **modelo matemático** y la representación de los requisitos mediante **variables lingüísticas**. El uso del **vector propio (eigenvector)** de una matriz de comparaciones por pares permite calcular los valores de la función de pertenencia, proporcionando una base analítica para la toma de decisiones.
3. **Optimización de la Síntesis a Través de Criterios de Ingeniería (Gauss-Markov) y Algoritmos Evolutivos:** El método garantiza que las soluciones de diseño seleccionadas sean óptimas y estables. Esto se logra al utilizar las **condiciones de Gauss-Markov** para formular un **criterio de similitud** basado en los mínimos cuadrados. La implementación práctica utiliza un enfoque de **grafos** (construcción de un árbol de expansión) y un **algoritmo evolutivo** (método del enjambre de abejas) para la búsqueda eficiente del espacio de soluciones.

---

### Valor del Paper

El valor del artículo **"Development of Design Procedures for the Synthesis of Design Solutions for Data Management Design"** es alto, ya que proporciona una metodología concreta y formalizada para un problema industrial crítico:

- **Solución Metodológica a la Interoperabilidad Industrial:** El _paper_ ofrece una metodología para utilizar el pasaporte digital como un **marco de referencia interno** que facilita la interacción entre empresas que utilizan sistemas de gestión de datos heterogéneos. Esto es vital para la coordinación operativa y la cadena de suministro en la **industria de fabricación de instrumentación**.
- **Formalización Rigurosa de la Selección de Diseño:** La contribución es valiosa porque formaliza la relación entre los requisitos (variables lingüísticas) y las soluciones (componentes del pasaporte) mediante un **marco analítico basado en el álgebra lineal y la lógica difusa**. Esto transforma la selección de decisiones de un proceso empírico a uno estructurado y matemático.
- **Implementación Automatizada con Optimización Avanzada:** El trabajo no solo propone la teoría, sino también una **opción de implementación automatizada** que utiliza la teoría de grafos y algoritmos de **Inteligencia de Enjambre (_Swarm Intelligence_)**. Esto demuestra que la síntesis de soluciones de diseño puede llevarse a cabo de manera eficiente, determinando la mejor opción de contenido de pasaporte digital de acuerdo con el criterio de similitud.
