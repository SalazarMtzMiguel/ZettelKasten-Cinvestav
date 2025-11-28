#CitaLatex 
@article{GALVANLOPEZ2015270,
title = {Design of an autonomous intelligent Demand-Side Management system using stochastic optimisation evolutionary algorithms},
journal = {Neurocomputing},
volume = {170},
pages = {270-285},
year = {2015},
note = {Advances on Biological Rhythmic Pattern Generation: Experiments, Algorithms and Applications Selected Papers from the 2013 International Conference on Intelligence Science and Big Data Engineering (IScIDE 2013) Computational Energy Management in Smart Grids},
issn = {0925-2312},
doi = {https://doi.org/10.1016/j.neucom.2015.03.093},
url = {https://www.sciencedirect.com/science/article/pii/S0925231215009303},
author = {Edgar Galván-López and Tom Curran and James McDermott and Paula Carroll},
keywords = {Demand-Side Management systems, Evolutionary algorithms, Electric vehicles, Peak-to-average ratio, Electricity costs, Smart grid time-of-use pricing},
abstract = {Demand-Side Management systems aim to modulate energy consumption at the customer side of the meter using price incentives. Current incentive schemes allow consumers to reduce their costs, and from the point of view of the supplier play a role in load balancing, but do not lead to optimal demand patterns. In the context of charging fleets of electric vehicles, we propose a centralised method for setting overnight charging schedules. This method uses evolutionary algorithms to automatically search for optimal plans, representing both the charging schedule and the energy drawn from the grid at each time-step. In successive experiments, we optimise for increased state of charge, reduced peak demand, and reduced consumer costs. In simulations, the centralised method achieves improvements in performance relative to simple models of non-centralised consumer behaviour.}
}

Referencia del archivo original: `(Edgar Galván-López) Design of an autonomous intelligent Demand-Side Management.pdf` [[(Edgar Galván-López) Design of an autonomous intelligent Demand-Side Management.pdf]]

El documento seleccionado es el artículo **"Design of an autonomous intelligent Demand-Side Management system using stochastic optimisation evolutionary algorithms"** (Diseño de un sistema de Gestión de la Demanda inteligente y autónomo utilizando algoritmos evolutivos de optimización estocástica).

Este artículo propone un método centralizado para la **Gestión de la Demanda (DSM)**, enfocándose en la **programación de la carga nocturna de flotas de vehículos eléctricos (EVs)**, utilizando Algoritmos Evolutivos (EAs) para buscar automáticamente planes óptimos.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Problema de la Red Inteligente (Smart Grid):** La política de la UE busca reducir las emisiones de gases de efecto invernadero y la dependencia de combustibles fósiles, promoviendo el uso de **fuentes de energía renovable (RESs)**. Los **Vehículos Eléctricos (EVs)** son clave para reducir las emisiones en el transporte, pero su uso incrementa la demanda de electricidad. La operación eficiente de la red eléctrica se ve comprometida por el aumento de la demanda y por los problemas causados por las RESs (como el aumento del ciclo de encendido y apagado de las plantas de energía). El principal enfoque para mejorar la eficiencia es la **Red Inteligente (SG)**.

**2. Gestión de la Demanda (DSM):** DSM es un conjunto de medidas para mejorar el sistema energético en el lado del consumidor. Los programas de DSM basados en precios inteligentes, como la **tarifa por tiempo de uso (ToU)**, son populares. Estos esquemas permiten a los consumidores reducir costos y, al mismo tiempo, ayudan a la compañía eléctrica a reducir el **ratio pico-a-promedio (PAR)** de la demanda. Sin embargo, los esquemas de incentivos actuales no conducen a patrones de demanda óptimos.

**3. El Enfoque Propuesto (EA Centralizado):** El trabajo propone un **método centralizado** para establecer programas de carga nocturna de flotas de EVs.

- **Contraste con Métodos Típicos:** A diferencia de los enfoques típicos de DSM, como la fijación dinámica de precios, que se basan en la interacción entre la empresa de servicios públicos y el usuario, este es un **enfoque centralizado** en el que el programa de consumo se establece basándose en la información completa de todos los EVs. Este control centralizado sería responsabilidad de un **Agregador de Demanda (_Demand Aggregator_)**.
- **Uso de EA:** Se utilizan **Algoritmos Evolutivos (EAs)** (también conocidos como sistemas de Computación Evolutiva) para **generar automáticamente planes óptimos** de carga. Los EAs son adecuados porque no requieren conocimiento específico de la función de aptitud (_fitness function_).

**4. Representación y Objetivos:** La solución se representa mediante una **matriz de _bits_** de longitud fija, donde cada _bit_ indica si un EV debe cargarse o no durante un período de tiempo de 30 minutos. Se definen tres objetivos (metas) a optimizar, cada uno con su propia función de aptitud independiente:

1. **Función de Carga ($f_c$):** Maximizar el **Estado Final de Carga (SoC)** de las baterías de los EVs.
2. **Función de Carga Constante ($f_s$):** Busca un alto SoC y, adicionalmente, una **baja fluctuación en la carga del transformador** (bajo PAR). Esta función trabaja en dos etapas: primero alcanzar un SoC mínimo (80% en este estudio) y luego buscar la constancia de la carga.
3. **Función de Carga Basada en Precios ($f_p$):** Busca un alto SoC, luego intenta **reducir los costos de electricidad** (aprovechando precios más baratos) y finalmente busca un equilibrio de la carga del transformador (baja varianza).

**5. Configuración Experimental y Comparación:**

- **Escenario:** Se simuló un escenario dinámico de 28 días, con un período de carga de 18:00 a 07:30, dividido en 28 intervalos de 30 minutos. El estudio consideró flotas pequeñas a medianas de **10, 30, 60 y 90 EVs**. Se utilizó la tarifa ToU de "Standard Electricity NightSaver" con picos de 18:00 a 23:30 (costo alto) y fuera de pico de 00:00 a 07:30 (costo bajo).
- **Algoritmos:** Se compararon dos variantes de EA: un **Algoritmo Genético (EA)** poblacional y una **Estrategia de Evolución 1+1 (1+1-ES)**.
- **Líneas Base (Baselines):** Los resultados se compararon con tres modelos de comportamiento de consumidor no inteligentes (simulando usuarios individuales no centralizados):
    - **Greedy:** El cliente comienza a cargar inmediatamente al llegar a casa (18:00), ignorando el costo.
    - **Midnight:** El cliente espera hasta la medianoche para aprovechar el precio más bajo.
    - **Random:** El cliente comienza y termina la carga en momentos aleatorios.

**6. Resultados Clave:**

- **Rendimiento General:** Ambos EAs, el 1+1-ES y el EA, **superaron consistentemente a los métodos no inteligentes** (Greedy, Midnight y Random).
- **Carga del Transformador (PAR):** Los enfoques no inteligentes resultan en cargas pico altas (Greedy en la tarde, Midnight después de medianoche). La función **Steady Charging** arrojó el **PAR más bajo** (más cerca del valor óptimo) para los casos de 10, 30 y 60 EVs. La función Price-Based Charging mostró un PAR alto debido al drástico salto de carga en el momento de la caída del precio (medianoche).
- **Estado de Carga (SoC):** El enfoque **Greedy** logró el **SoC final más alto**, aunque con un costo de carga de transformador muy alto. Los enfoques basados en EA lograron un alto SoC, siendo la función Charging la que más se acercó a este valor, ya que su objetivo principal es el SoC.
- **Costo de Electricidad (Costo Ecualizado):** La función **Price-Based Charging** logró los **costos ecualizados más bajos** entre los métodos inteligentes. El enfoque Midnight tuvo el costo más bajo de todos (ya que solo usa electricidad fuera de pico), pero con el inconveniente de una carga pico alta a medianoche. La tendencia general fue una disminución clara del costo al pasar de Greedy a Steady Charging a Price-Based Charging.

**7. Conclusión:** Los EAs son eficaces para buscar programas de carga eficientes que **reducen la demanda pico** y **reducen los costos del consumidor**, al tiempo que mantienen un alto estado de carga en los EVs. El **1+1-ES superó ligeramente al EA poblacional**. La implementación centralizada es importante porque los clientes tienden a comportamientos no óptimos (como Greedy), lo que aumenta la demanda pico.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que el sistema centralizado de DSM basado en EA ofrece mejoras significativas se fundamentan en las siguientes ideas clave:

1. **La Insuficiencia de la Fijación de Precios Actual y el Comportamiento Individual del Consumidor:** La conclusión de que se necesita un sistema centralizado se basa en el hecho de que los esquemas de incentivos actuales (como ToU) **no conducen a patrones de demanda óptimos**, y que el comportamiento más probable de los consumidores (modelado por el enfoque Greedy) resulta en un **alto PAR y altos costos**, lo que es perjudicial para la eficiencia de la red.
2. **La Optimización Estocástica (EAs) es Esencial para el Diseño Automático de Soluciones Óptimas Complejas:** La conclusión metodológica se fundamenta en que las funciones de aptitud propuestas (especialmente Steady Charging y Price-Based Charging) **no son susceptibles de solución analítica simple o de optimización simple basada en gradiente**. Por lo tanto, se requieren Algoritmos Evolutivos (EAs) para buscar y **generar automáticamente horarios (casi) óptimos** que equilibren múltiples objetivos simultáneos (SoC, PAR, Costo).
3. **La Centralización Permite la Coordinación Global y el Logro de Múltiples Objetivos:** La conclusión de que el enfoque propuesto funciona mejor se basa en que el método utiliza un **enfoque centralizado** que opera con **información completa de todos los EVs**. Esto permite coordinar la carga de la flota para lograr objetivos globales (reducir el PAR en el transformador) y objetivos individuales (reducir el costo del consumidor) de manera eficiente, lo que no es posible con la programación individualizada.

---

### Valor del Paper

El valor del artículo "Design of an autonomous intelligent Demand-Side Management system using stochastic optimisation evolutionary algorithms" es muy alto dentro del ámbito de las Redes Inteligentes (Smart Grid) y la Computación Evolutiva:

- **Solución al Problema Crítico de la Carga de EVs:** El _paper_ aborda uno de los desafíos más significativos para la modernización de la red: cómo integrar la carga creciente de EVs sin comprometer la eficiencia o la infraestructura (PAR).
- **Demostración de la Eficacia Superior de AI Centralizada:** El valor más importante es la **demostración empírica rigurosa** de que los enfoques inteligentes basados en EA **superan significativamente el comportamiento por defecto y los modelos no inteligentes** del consumidor. Específicamente, muestra que las funciones de aptitud diseñadas para objetivos duales (Steady Charging y Price-Based Charging) pueden lograr el equilibrio entre los objetivos del consumidor (SoC, Costo) y los objetivos de la utilidad (bajo PAR).
- **Base para la Adopción Industrial:** El uso de un **simulador de red de última generación (GridLab-D)** para validar los resultados en escenarios dinámicos, junto con la comparación de diferentes algoritmos de EA, ofrece una base técnica sólida y realista. Los autores esperan que estos resultados atraigan la atención de las compañías para adaptar esta forma de técnica de aprendizaje automático.
- **Identificación de Dirección Futura:** El artículo establece claramente la necesidad de investigar cómo eliminar la suposición de control centralizado, sugiriendo la optimización en un **entorno coevolutivo** donde los consumidores actúan como agentes independientes y el precio se modula dinámicamente.
