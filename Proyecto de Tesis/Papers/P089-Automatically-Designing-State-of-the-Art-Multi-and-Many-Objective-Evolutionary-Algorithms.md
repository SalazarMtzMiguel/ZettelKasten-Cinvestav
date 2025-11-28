#CitaLatex 
@ARTICLE{Leonardo2020Automatically,
  author={Bezerra, Leonardo C. T. and L??pez-Ib????ez, Manuel and St??tzle, Thomas},
  journal={Evolutionary Computation}, 
  title={Automatically Designing State-of-the-Art Multi- and Many-Objective Evolutionary Algorithms}, 
  year={2020},
  volume={28},
  number={2},
  pages={195-226},
  keywords={Multiobjective optimization;evolutionary algorithms;automatic algorithm design.},
  doi={10.1162/evco_a_00263}}


Referencia del archivo original: `(Leonardo C. T. Bezerra) Automatically Designing State-of-the-Art Multi-and Many-Objective Evolutionary Algorithms.pdf` [[(Leonardo C. T. Bezerra) Automatically Designing State-of-the-Art Multi-and Many-Objective Evolutionary Algorithms.pdf]]

El documento seleccionado es el artículo **"Automatically Designing State-of-the-Art Multi-and Many-Objective Evolutionary Algorithms"** (Diseño Automático de Algoritmos Evolutivos Multiobjetivo y de Muchos Objetivos de Última Generación), escrito por Leonardo C. T. Bezerra, Manuel López-Ibáñez y Thomas Stützle.

Este trabajo aborda la necesidad de diseñar Algoritmos Evolutivos Multiobjetivo (MOEAs) y de Muchos Objetivos (MaOEAs) altamente eficientes, aprovechando la **configuración automática de algoritmos** y un marco de trabajo (_framework_) modular extendido.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Problema (Limitaciones de los MOEAs Tradicionales):** Los Problemas de Optimización Multiobjetivo (MOPs) buscan las mejores soluciones de _trade-off_ entre varios objetivos, a menudo en el sentido de Pareto, y son más difíciles de resolver que sus contrapartes de objetivo único. Una de las principales alternativas para abordar los MOPs son los Algoritmos Evolutivos Multiobjetivo (MOEAs).

Investigaciones previas han mostrado que los MOEAs existentes (incluyendo los diseñados para MaOPs, que tienen un gran número de objetivos), a menudo presentan un rendimiento inferior al esperado cuando se adopta una configuración experimental rigurosa (por ejemplo, después de una correcta configuración de parámetros). Esto se debe, en parte, a que los MOEAs se proponen comúnmente como **bloques monolíticos**, lo que impide investigar cómo interactúan sus componentes algorítmicos o si componentes de MOEAs existentes podrían ser más beneficiosos.

Un desafío adicional, especialmente en la optimización de muchos objetivos (MaOPs), es el **desacuerdo** entre las métricas de rendimiento establecidas (como _relative hypervolume_, _additive $\epsilon$-indicator_ e _inverted generational distance_), lo que engaña a las metodologías de diseño automático para seleccionar diseños que son óptimos según una métrica, pero pobres según otras.

**2. La Solución Propuesta: AutoMOEA+ (Marco Extendido y Diseño Automático):** El trabajo se basa en dos consideraciones principales: (i) que los algoritmos de alto rendimiento pueden obtenerse de un marco algorítmico configurable de manera automática, y (ii) que se pueden requerir múltiples métricas de rendimiento para guiar este proceso de diseño automático.

Los autores extienden su marco modular anterior (AutoMOEA) para crear **AutoMOEA+**. Esta es una aproximación de **diseño de algoritmos _top-down_**, donde el conocimiento humano proporciona una estructura (una plantilla o gramática) que el proceso automático utiliza para encontrar el mejor algoritmo posible.

**Extensiones Clave de AutoMOEA+:**

- **Componibilidad Refinada (Separación MO/EA):** Se añade un nivel adicional de componibilidad que **separa los aspectos multiobjetivo** de la búsqueda de los **Algoritmos Evolutivos (EA) subyacentes**. Esto permite que cualquier MOEA existente se acople con los EA más relevantes de la literatura, como los **Algoritmos Genéticos (GA)** (la opción original) y la **Evolución Diferencial (DE)**.
- **Integración de Paradigmas de Diseño Híbrido:** Se extiende la plantilla para incluir algoritmos basados en **descomposición** (como MOEA/D y NSGA-III), además de los algoritmos basados en dominancia e indicadores ya cubiertos. Esto permite la **hibridación libre** entre los tres paradigmas de diseño.
- **Uso Unificado de Componentes de Archivo:** Se demuestra cómo métricas propuestas originalmente para las **técnicas de truncamiento de archivos** pueden ser reformuladas como **componentes de preferencia** generales (por ejemplo, el _adaptive grid archiver_ de PAES).

**3. Diseño Automático Multiobjetivo (Para MaOPs):** Para superar el problema del desacuerdo de las métricas en MaOPs, los autores proponen una **formulación multiobjetivo del diseño automático de MOEAs**. En lugar de optimizar una única métrica de rendimiento, el conjunto de métricas de rendimiento relevantes (_I rd_ _H_ , _Iε+_, _IIGD_) se optimiza conjuntamente, siguiendo un reciente enfoque en configuración multiobjetivo. Para esto, se utiliza el **hipervolumen (_IH_)** como métrica de agregación sobre el _espacio de métricas_.

**4. Resultados y Desempeño (Algoritmos AutoMOEA+):** La herramienta de configuración automática **irace** se utilizó para instanciar algoritmos AutoMOEA+ en 12 escenarios diferentes (variando el número de objetivos _M_ ∈ {2, 3, 5, 10} y el número máximo de evaluaciones de función _FEmax_).

- **Rendimiento Superior:** Los algoritmos diseñados automáticamente (AutoMOEA+) **superaron de manera consistente** o al menos igualaron el rendimiento de los 9 MOEAs de última generación identificados en una investigación previa, incluso después de que los parámetros de estos últimos hubieran sido afinados adecuadamente.
- **Diseños Novedosos:** Los diseños AutoMOEA+ generados automáticamente a menudo combinan elementos de **diferentes paradigmas de diseño** (dominancia, indicador y descomposición), y utilizan componentes de maneras que difieren significativamente de lo que los diseñadores humanos suelen hacer. Por ejemplo, en escenarios con _M_ < 10, **Evolución Diferencial (DE)** fue siempre seleccionado como el EA subyacente, en contraste con la adopción tradicional de Algoritmos Genéticos (GA) por parte de los diseñadores humanos.
- **Éxito de la Formulación Multiobjetivo:** La formulación de diseño multiobjetivo probó ser **crítica para MaOPs**. El algoritmo diseñado con este enfoque (_AutoMOEA+〈10,40k,MO〉_) **clasificó primero** según las tres métricas consideradas (_I rd_ _H_ , _Iε+_, _IIGD_) y fue considerado **estadísticamente significativamente mejor** que los algoritmos de última generación para la mayoría de las métricas, incluso superando a IBEA (el MOEA de mejor rendimiento manual para ese escenario).

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre el éxito de los MOEAs diseñados automáticamente (AutoMOEA+) y la necesidad de un diseño multiobjetivo se basan en las siguientes ideas clave:

1. **La Vista Monolítica de los MOEAs Limita el Espacio de Diseño Óptimo:** La conclusión de que el diseño debe ser componente por componente se fundamenta en la observación de que, al proponer MOEAs como bloques monolíticos, los diseñadores humanos **asumen que los componentes deben usarse conjuntamente**. La evidencia empírica del _paper_ muestra que al aumentar la componibilidad del marco (AutoMOEA+), se genera un **espacio de diseño mucho más amplio**, y que la combinación automática de componentes de diferentes paradigmas (dominancia, indicador, descomposición) resulta en **algoritmos de rendimiento superior** a los diseñados por humanos.
2. **El Diseño Óptimo Depende Fuertemente del Contexto y Requiere Experimentación Automatizada:** La conclusión de que el diseño automático es superior se basa en que los diseños generados automáticamente **muestran un rendimiento robusto** a diversos factores experimentales, como los problemas _benchmark_ o los criterios de parada. La metodología de diseño automático (usando _irace_) fue capaz de encontrar configuraciones (por ejemplo, el uso de DE en lugar de GA) que optimizan el rendimiento para un escenario dado, algo que los diseñadores humanos tienden a pasar por alto.
3. **El Desacuerdo de Métricas en MaOPs Hace Imposible la Optimización de Objetivo Único:** La conclusión de que se necesita la formulación multiobjetivo se basa en el problema de la **fuerte discrepancia entre las métricas de rendimiento** cuando el número de objetivos es alto (_M_ = 10). El diseño automático tradicional, al optimizar una sola métrica, produce algoritmos que fallan catastróficamente en otras. El enfoque de optimizar conjuntamente múltiples métricas (diseño multiobjetivo de MOEAs) demostró ser la **solución más robusta**, produciendo un algoritmo (_AutoMOEA+〈10,40k,MO〉_) que es efectivo en todas las métricas simultáneamente.

### Valor del Paper

El valor del artículo **"Automatically Designing State-of-the-Art Multi-and Many-Objective Evolutionary Algorithms"** es extraordinario y tiene implicaciones profundas para la Ingeniería de Algoritmos Evolutivos:

- **Marco de Trabajo de Última Generación (AutoMOEA+):** El trabajo proporciona la **extensión más completa** de un marco algorítmico configurable (AutoMOEA+) que permite instanciar, combinar y evaluar de forma sistemática un amplio espectro de paradigmas de diseño de MOEA (dominancia, indicador y descomposición), así como diferentes EA subyacentes.
- **Prueba Empírica de la Superioridad del Diseño Automático:** El artículo demuestra empíricamente, con un análisis a gran escala, que es posible generar **MOEAs de última generación** (AutoMOEA+) que superan el rendimiento robusto de los algoritmos diseñados manualmente y afinados por expertos. Esto valida la metodología de diseño automático de algoritmos como un camino para encontrar soluciones algorítmicas óptimas.
- **Propuesta Revolucionaria para MaOPs (Diseño Multiobjetivo):** El _paper_ introduce y valida una **solución elegante y altamente efectiva** al problema crítico del desacuerdo de las métricas en MaOPs, al proponer y probar el concepto de **diseño multiobjetivo de algoritmos multiobjetivo**. Esta formulación asegura la robustez de los algoritmos resultantes a través de un conjunto de métricas relevantes, una contribución imperativa para el desarrollo de MOEAs confiables.

El marco AutoMOEA+ y la metodología de diseño automático son el equivalente a un **Ingeniero de Algoritmos Aumentado**. Este sistema no solo utiliza los planos probados y existentes (paradigmas de diseño), sino que también los combina de formas impensables para los diseñadores humanos, y luego prueba millones de prototipos bajo diversas condiciones (escenarios experimentales) para garantizar que el algoritmo resultante no solo sea de alto rendimiento, sino también el más robusto. En el caso de MaOPs, la metodología se eleva a la altura de un **"diseñador de _trade-offs_"** que garantiza que el algoritmo no sea excelente en una característica a expensas de otra, sino que mantenga un rendimiento óptimo en un equilibrio forzado por múltiples métricas.