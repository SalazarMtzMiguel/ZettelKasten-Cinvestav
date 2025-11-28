#CitaLatex 
@INPROCEEDINGS{DmitriyV2023ComputationalDesign,
  author={Ivolga, Dmitriy V. and Borisov, Ivan I. and Nasonov, Kirill V. and Kolyubin, Sergey A.},
  booktitle={2023 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)}, 
  title={Computational Design of Closed-Chain Linkages: Respawn Algorithm for Generative Design}, 
  year={2023},
  volume={},
  number={},
  pages={481-486},
  abstract={Designing robots is a multiphase process aimed at solving a multi-criteria optimization problem to find the best possible detailed design. Generative design (GD) aims to accelerate the design process compared to manual design, since GD allows exploring and exploiting the vast design space more efficiently. In the field of robotics, however, relevant research focuses mostly on the generation of fully-actuated open chain kinematics, which is trivial in mechanical engineering perspective. Within this paper, we address the problem of generative design of closed-chain linkage mechanisms. A GD algorithm has to be able to generate meaningful mechanisms which satisfy conditions of existence. We propose an optimization-driven algorithm for generation of planar closed-chain linkages to follow a predefined trajectory. The algorithm creates an unlimited range of physically reproducible design alternatives that can be further tested in simulation. These tests could be done in order to find solutions that satisfy extra criteria, e.g., desired dynamic behavior or low energy consumption. The proposed algorithm is called “respawn” since it builds a new linkage after the ancestor has been tested in a virtual environment in pursuit for the optimal solution. To show that the algorithm is general enough, we show a set of generated linkages that can be used for a wide class of robots.},
  keywords={Couplings;Heuristic algorithms;Software algorithms;Virtual environments;Transforms;Software;Trajectory},
  doi={10.1109/IROS55552.2023.10341425},
  ISSN={2153-0866},
  month={Oct},}

Referencia del archivo original: `(Dmitriy V) Computational Design of Closed-Chain Linkages Respawn Algorithm for Generative Design.pdf` [[(Dmitriy V) Computational Design of Closed-Chain Linkages Respawn Algorithm for Generative Design.pdf]]

El documento seleccionado es el artículo **"Computational Design of Closed-Chain Linkages: Respawn Algorithm for Generative Design"** (Diseño Computacional de Mecanismos de Cadena Cerrada: Algoritmo Respawn para Diseño Generativo), cuyos autores son Dmitriy V. Ivolga, Ivan I. Borisov, Kirill V. Nasonov y Sergey A. Kolyubin.

El _paper_ aborda el problema del diseño generativo (GD) de mecanismos de cadena cerrada para la robótica, proponiendo un algoritmo basado en optimización denominado **"respawn"**.

A continuación, se presenta un resumen claro y completo, las ideas clave que sustentan sus conclusiones y la determinación del valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Desafío (Diseño de Robots y GD):** El diseño de robots es un proceso multifásico que busca resolver un problema de optimización multi-criterio para encontrar el mejor diseño detallado posible. El **Diseño Generativo (GD)** tiene como objetivo acelerar este proceso al explorar y explotar de manera más eficiente el vasto espacio de diseño. Sin embargo, la investigación en robótica se ha centrado principalmente en la generación de cinemática de cadena abierta completamente actuada, lo cual es trivial desde una perspectiva de ingeniería mecánica. El desafío radica en el diseño generativo de mecanismos de **cadena cerrada**, que imponen condiciones de existencia más estrictas.

**2. Limitaciones de Enfoques Existentes:** Los enfoques de diseño existentes presentan limitaciones:

- **Diseño Manual:** Requiere una entrada significativa del diseñador, lo que dificulta garantizar la optimalidad de los resultados.
- **Optimización Basada en Modelos:** Depende en gran medida de las entradas del usuario, aunque puede encontrar soluciones adecuadas.
- **Diseño Evolutivo:** Requiere una entrada mínima, pero el _software_ de simulación actual a menudo crea estructuras altamente abstractas que difícilmente se pueden reproducir físicamente.

**3. El Enfoque Propuesto: Algoritmo "Respawn" (GD para Cadena Cerrada):** El _paper_ propone un algoritmo de diseño generativo impulsado por la optimización, llamado **"respawn"**, para la generación de mecanismos de cadena cerrada plana que sigan una **trayectoria predefinida**. El nombre "respawn" se debe a que construye un nuevo mecanismo después de que el ancestro ha sido probado en un entorno virtual en la búsqueda de la solución óptima.

El algoritmo se centra en la segunda etapa de un método de síntesis de tres etapas previamente presentado por los autores:

1. **Co-diseño de Cadena Abierta:** Se encuentra un mecanismo de cadena abierta completamente actuada que interactúa con el entorno y su trayectoria de referencia.
2. **Cierre (_Closure_):** La etapa principal abordada en este _paper_. El objetivo es encontrar la estructura y los parámetros geométricos de los grupos de eslabones que se adjuntarán a la cadena abierta inicial para formar una cadena cerrada, **reubicando motores y/o disminuyendo su número** mediante restricciones holonómicas.
3. **Optimización de Actuadores:** Se encuentra la asignación óptima de actuadores activos (accionamientos) y pasivos (elementos elásticos) para la eficiencia energética y de fuerza.

**4. Síntesis Estructural y Criterios (Chebychev–Grübler):** El algoritmo utiliza el **criterio de Chebychev–Grübler** para calcular los Grados de Libertad (DoF) y determinar qué grupos de eslabones pueden adjuntarse para imponer restricciones holonómicas. La clave es que, a diferencia de trabajos anteriores que solo agregaban un eslabón rígido a la vez, el algoritmo propone **adjuntar un grupo completo de eslabones** para generar múltiples mecanismos de cadena cerrada con múltiples lazos cerrados.

El algoritmo de "respawn" utiliza **gramática de grafos** y **optimización** en un proceso de doble bucle (interno y externo) durante $N$ episodios:

- **Bucle Externo (Estructura):** Busca cómo agregar restricciones holonómicas (cambiando el vector de puntos de cierre $C$ y el vector de longitudes $L$) hasta que los DoF del mecanismo $W$ alcancen el valor deseado $W_d$.
- **Bucle Interno (Geometría):** Busca los parámetros geométricos óptimos de los puntos de conexión $P$.

**5. Función de Costo y Criterios:** La función de costo ($f$) se evalúa numéricamente en simulación y es una suma ponderada de dos criterios:

1. **Criterio $Q_1$ (Cierre o Conexión):** Evalúa si la distancia entre los puntos de conexión tiende a una constante (para un solo eslabón) o a cero (para un grupo de eslabones), asegurando la condición de existencia del mecanismo de cadena cerrada.
2. **Criterio $Q_2$ (Seguimiento de Trayectoria):** Estima cuánto se cambia la trayectoria después de adjuntar el grupo de eslabones, utilizando la distancia euclidiana (_Lock-step Euclidean distance - LSED_) entre la trayectoria deseada $\bar{J}(t)$ y la trayectoria actual $\hat{J}(t)$.

**6. Implementación y Resultados:** El algoritmo fue implementado en Python utilizando el motor de simulación multi-física de código abierto **PyChrono**. Las simulaciones demostraron la generación de múltiples variantes de mecanismos de cadena cerrada (ej., para un mecanismo 3R) tanto a través de la solución recursiva de un solo eslabón como mediante la adición de grupos de eslabones. El algoritmo es capaz de generar un rango ilimitado de alternativas de diseño físicamente reproducibles.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ —que el algoritmo propuesto automatiza la generación de mecanismos de cadena cerrada y es aplicable a una amplia clase de robots— se fundamentan en las siguientes ideas clave:

1. **La Necesidad de Abordar el Diseño de Cadena Cerrada de Forma No Trivial:** La conclusión se basa en la premisa de que la generación de cinemática de cadena abierta es trivial, pero la **cadena cerrada impone condiciones de existencia más estrictas** y es crucial para el diseño eficiente de robots. Los mecanismos de cadena cerrada ofrecen ventajas clave sobre la cinemática abierta, como la necesidad de **menos actuadores** y la simplificación del control algorítmico a través de la **computación morfológica** (morphological computation).
2. **La Estrategia de "Respawn" y Grupos de Eslabones Aumenta la Exploración del Espacio de Diseño:** La validez metodológica se fundamenta en la propuesta de **adjuntar grupos de eslabones** en lugar de solo uno a la vez. Este enfoque, combinado con el proceso iterativo y de optimización (el algoritmo "respawn"), permite **generar un número ilimitado de mecanismos** y explorar el vasto espacio de diseño de manera más eficiente que los métodos manuales o evolutivos restrictivos.
3. **La Optimización de Dos Criterios (Cierre y Trayectoria) Garantiza la Relevancia Física:** La solidez del algoritmo se fundamenta en la función de costo que utiliza criterios $Q_1$ y $Q_2$. $Q_1$ garantiza que el mecanismo cumpla las **condiciones de existencia** (eslabones cerrados correctamente), y $Q_2$ asegura que el mecanismo resultante **siga la trayectoria deseada** de la cadena abierta original.

---

### Valor del Paper

El valor del artículo **"Computational Design of Closed-Chain Linkages: Respawn Algorithm for Generative Design"** es alto y se enfoca en la automatización del diseño mecánico complejo:

- **Innovación Metodológica en GD:** El _paper_ contribuye significativamente al campo del Diseño Generativo (GD) al ser uno de los pocos trabajos que aborda la **generación automatizada de mecanismos de cadena cerrada**. El enfoque de adjuntar grupos de eslabones mediante un algoritmo basado en optimización y gramática de grafos es novedoso y práctico.
- **Abordaje de la Eficiencia en Robótica (Morphological Computation):** El valor se incrementa al conectar el GD con el concepto de **computación morfológica** o inteligencia mecánica. El diseño de cadena cerrada generado por el algoritmo está destinado a lograr un comportamiento deseado con menor dependencia del control algorítmico ("el cuerpo en lugar del cerebro"), resultando en robots más eficientes y simples.
- **Marco de Diseño de Tres Etapas:** El _paper_ se posiciona como una pieza clave en un marco de co-diseño más amplio (previamente introducido por los autores), que se ha aplicado a prototipos relevantes como manos artificiales adaptativas, robots saltadores energéticamente eficientes y exo-trajes ergonómicos. Esto demuestra la relevancia práctica y el potencial de generalización del algoritmo "respawn".

El valor reside en que el algoritmo propuesto transforma una tarea que históricamente ha dependido de la "creatividad, imaginación, intuición y experiencia" del desarrollador en un proceso de diseño automatizado y optimizado.
