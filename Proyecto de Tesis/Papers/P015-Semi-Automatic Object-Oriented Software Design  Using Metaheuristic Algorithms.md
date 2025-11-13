#CitaLatex 
@INPROCEEDINGS{JavidiSemi-Automatic,
	author={Javidi, Zeynab and Akbari, Reza and Bushehrian, Omid},
	booktitle={2017 2nd Conference on Swarm Intelligence and Evolutionary Computation (CSIEC)}, 
	title={Semi-automatic object-oriented software design using metaheuristic algorithms}, 
	year={2017},
	volume={},
	number={},
	pages={123-128},
	keywords={Wireless fidelity;Software Design;Search-Based Software Engineering;Meta-Heuristic Algorithm;Formal Concept Analysis},
	doi={10.1109/CSIEC.2017.7940169}}
	
Lectura basada en: [[(Zeynab Javidi ) Semi-automatic object-oriented software design using metaheuristic algorithms.pdf]]


### Resumen del Paper: "Diseño Semi-Automático de Software Orientado a Objetos Usando Algoritmos Metaheurísticos"

El artículo propone un método para **automatizar parcialmente el diseño de software orientado a objetos**, específicamente la tarea de crear diagramas de clases. El objetivo es generar diseños de alta calidad que sean difíciles de lograr manualmente, ya que dependen mucho de la experiencia del diseñador y consumen mucho tiempo.

---

### 1. El Problema Central: Asignación de Responsabilidades a Clases (CRA)

El núcleo del diseño de software orientado a objetos es decidir qué atributos y métodos (llamados "responsabilidades") deben ir en qué clases. Este problema se conoce como **Asignación de Responsabilidades a Clases (CRA)**.

- **¿Por qué es difícil?** El número de posibles combinaciones es enorme, lo que lo convierte en un problema de optimización complejo, clasificado como **NP-Hard**.
- **El objetivo:** Encontrar la asignación "óptima" de responsabilidades que maximice la calidad del diseño. Esta calidad se mide con métricas clave como:
    - **Alta cohesión:** Los elementos dentro de una misma clase deben estar fuertemente relacionados.
    - **Bajo acoplamiento:** Las clases deben ser lo más independientes posible entre sí.
    - **Baja complejidad**.

### 2. La Solución Propuesta: Un Método en Tres Fases

Los autores proponen un método semi-automático que toma como entrada la documentación de la fase de análisis (casos de uso, atributos y métodos) y produce un diagrama de clases optimizado como salida. El método se divide en tres fases principales:

1. **Fase Inicial (Semi-automática):** Se utiliza una técnica llamada **Análisis Formal de Conceptos (FCA)** para generar una o varias soluciones iniciales (diagramas de clases preliminares) con la ayuda de un experto.
2. **Fase de Optimización (Automática):** Se utiliza un algoritmo metaheurístico híbrido, llamado **ICA-TS**, para mejorar automáticamente las soluciones iniciales.
3. **Fase de Relaciones (Semi-automática):** Una vez definidas las clases, se establecen las relaciones entre ellas (asociación, generalización, etc.).

### 3. Ideas y Conceptos Clave del Método

#### **a. Fase 1: Análisis Formal de Conceptos (FCA) para una Inicialización Inteligente**

En lugar de empezar con una solución aleatoria, el método utiliza FCA para crear un punto de partida de mayor calidad.

- **¿Cómo funciona?** FCA modela las relaciones entre los casos de uso del sistema y las responsabilidades (atributos y métodos). Crea una estructura matemática (un "retículo de conceptos") donde cada "concepto" agrupa responsabilidades relacionadas, convirtiéndose en una **clase candidata**.
- **Ventaja:** Este paso reduce el enorme espacio de búsqueda y proporciona al algoritmo de optimización un punto de partida mucho más prometedor, lo que le ayuda a converger más rápido a una buena solución.

#### **b. Fase 2: Optimización con el Algoritmo Híbrido ICA-TS**

Esta es la parte central y totalmente automatizada del proceso.

- **El Algoritmo:** Es una combinación de dos algoritmos de búsqueda:
    1. **Algoritmo Competitivo Imperialista (ICA):** Un algoritmo inspirado en la competencia socio-política entre imperios y colonias. Es bueno para explorar ampliamente el espacio de soluciones.
    2. **Búsqueda Tabú (TS):** Un algoritmo que refina la búsqueda y evita quedarse atascado en soluciones subóptimas (óptimos locales) utilizando una "lista tabú" de movimientos prohibidos recientemente.
- **La Función de Costo:** El algoritmo busca minimizar una **función de costo** que mide la calidad del diseño. Esta función es una combinación ponderada de cuatro métricas:
    1. `Coh(D)`: **Cohesión** (se busca maximizar, por eso se usa su inverso en la fórmula).
    2. `Cop(D)`: **Acoplamiento** (minimizar).
    3. `Complexity(D)`: **Complejidad** del diseño (minimizar).
    4. `ClassSizeStandardDeviation(D)`: Desviación estándar del tamaño de las clases (para evitar clases muy grandes o muy pequeñas, minimizando).

#### **c. Fase 3: Establecimiento de Relaciones entre Clases**

Una vez que el optimizador ha decidido qué responsabilidades van en cada clase, esta fase final define las conexiones entre ellas: **asociación, generalización (herencia) y dependencia**. Para ello, el método utiliza heurísticas y técnicas propuestas en trabajos anteriores.

### 4. Evaluación y Resultados

Los autores evaluaron su método (ICA-TS con FCA) comparándolo con otros algoritmos (Algoritmo Genético - GA, e ICA simple) y con un diseño realizado manualmente por un experto humano, utilizando tres casos de estudio de diferente tamaño.

- **Superioridad sobre el diseño manual:** En todos los casos, los métodos automáticos produjeron diseños con **mejores métricas de calidad** (menor costo) que el diseño del experto.
- **Eficacia del algoritmo híbrido:** El método ICA-TS con FCA demostró ser **el más eficiente**, superando a GA y a ICA, especialmente en el caso de estudio más grande y complejo.
- **Importancia de la inicialización con FCA:** Los resultados muestran que iniciar el proceso con FCA **mejora significativamente el rendimiento final** y ayuda a que los algoritmos converjan más rápido.

### Conclusión: 

Este paper podría ser **muy útil para tu tesis** si tu investigación se centra en alguno de los siguientes temas:

- **Ingeniería de Software Basada en Búsqueda (Search-Based Software Engineering - SBSE):** Es un ejemplo perfecto de cómo aplicar técnicas de optimización a un problema clásico de la ingeniería de software.
- **Automatización del Diseño de Software:** Aborda directamente el desafío de automatizar una tarea de diseño compleja y creativa.
- **Aplicación de Algoritmos Metaheurísticos:** Muestra cómo un algoritmo híbrido (ICA-TS) puede superar a otros más simples para resolver problemas de optimización combinatoria.
- **Métricas de Calidad de Software:** Utiliza y optimiza métricas de diseño orientadas a objetos (cohesión, acoplamiento, etc.) de una manera práctica y cuantitativa.
- **Modelado y Optimización:** El uso de FCA para la inicialización es una técnica interesante que combina modelado conceptual con optimización numérica.