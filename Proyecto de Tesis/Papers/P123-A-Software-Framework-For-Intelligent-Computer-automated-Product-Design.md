#CitaLatex 
@inproceedings{Bye2016SoftwareFramework,
  title = {A Software Framework For Intelligent Computer-Automated Product Design},
  url = {http://dx.doi.org/10.7148/2016-0534},
  DOI = {10.7148/2016-0534},
  booktitle = {ECMS 2016 Proceedings edited by Thorsten Claus,  Frank Herrmann,  Michael Manitz,  Oliver Rose},
  publisher = {ECMS},
  author = {Bye,  Robin T. and Osen,  Ottar L. and Pedersen,  Birger Skogeng and Hameed,  Ibrahim A. and Schaathun,  Hans Georg},
  year = {2016},
  month = jun,
  pages = {534–543}
}

Referencia del archivo original: `(Robin T. Bye) A Software Framework For Intelligent Computer-automated Product Design.pdf` [[(Robin T. Bye) A Software Framework For Intelligent Computer-automated Product Design.pdf]]

El documento seleccionado para el análisis es el artículo **"A Software Framework For Intelligent Computer-automated Product Design"** (Un Marco de _Software_ para el Diseño de Productos Inteligente Asistido por Computadora), escrito por Robin T. Bye, Ottar L. Osen, Birger Skogeng Pedersen, Ibrahim A. Hameed y Hans Georg Schaathun.

Este trabajo describe la primera versión completa de un **marco de _software_ genérico y modular para el diseño de productos inteligente y asistido por computadora (CautoD)**. El objetivo es automatizar y optimizar la fase de diseño de productos complejos, como las grúas _knuckleboom_ _offshore_ y los cabrestantes (winches), utilizando técnicas de **Inteligencia Artificial (IA)**, específicamente **Algoritmos Genéticos (GA)**.

### Resumen Completo del Documento

**1. Contexto y Motivación (La Necesidad de Automatización del Diseño):** El diseño de productos complejos, como las grúas _offshore_, involucra un gran número de componentes (ganchos, cabrestantes, cilindros, plumas, etc.) y la elección de sus propiedades físicas y relaciones determina indicadores clave de rendimiento (KPI) como el espacio de trabajo deseado, la carga máxima de trabajo segura (SWL) y el peso total.

Tradicionalmente, el diseño se realiza manualmente mediante un enfoque de prueba y error, a menudo basado en la experiencia, utilizando cálculos con lápiz y papel o hojas de cálculo. Este enfoque es **lento, ineficiente y susceptible de llevar a diseños subóptimos**, especialmente dado el gran número de parámetros de diseño (más de 120 parámetros considerados los más importantes) que especifican una grúa. El trabajo se enfoca en resolver el **problema inverso** del diseño: elegir los parámetros de diseño apropiados, a menudo en conflicto, para satisfacer los criterios deseados.

**2. Arquitectura de _Software_ (Modelo Servidor-Cliente):** El marco está diseñado para ser **genérico y modular**, lo que permite extender o reemplazar fácilmente los módulos. Se adopta una arquitectura de _software_ **servidor-cliente** (Figura 3 en la fuente):

- **Lado del Servidor (Crane Prototyping Tool, CPT):** Implementado en Java, el CPT actúa como un servidor central. Contiene el **calculador de grúas (_crane calculator_)** que, basado en un conjunto de aproximadamente 120 parámetros de entrada, calcula un diseño de grúa completamente especificado y sus KPIs asociados. La precisión de este calculador fue verificada con otros calculadores usados en la industria. El CPT define interfaces de comunicación (HTTP y WebSocket) utilizando **JSON** como formato de datos.
- **Lado del Cliente:** Incluye módulos que se conectan al CPT para interactuar con él.
    - **GUI Web:** Implementada en JavaScript, permite a los diseñadores humanos ajustar manualmente los 120 parámetros mediante prueba y error e investigar visualmente el efecto de estos parámetros en el diseño resultante y en el gráfico de carga SWL 2D.
    - **Módulo de Inteligencia Artificial para la Optimización de Productos (AIPO):** Implementado en Haskell, este módulo reemplaza al operador humano en el proceso de diseño y se utiliza para el CautoD de grúas _offshore_.
    - **Librería de Algoritmos Genéticos (GA):** Utilizada por el módulo AIPO, el GA se elige por su idoneidad para problemas de optimización difíciles donde las soluciones exactas son difíciles de obtener y porque maneja fácilmente las restricciones.

**3. Automatización y Optimización con Algoritmos Genéticos:** El AIPO interroga al CPT utilizando una o varias **funciones objetivo** configuradas por el diseñador. El GA busca a través del vasto espacio de búsqueda de parámetros hasta que se encuentra un diseño optimizado. Cuando hay objetivos múltiples y potencialmente conflictivos (Optimización Multiobjetivo, MOO), el GA devuelve un conjunto de soluciones **Pareto óptimas**.

**4. Estudio de Caso (Prueba de Concepto):** Para demostrar la **viabilidad (_feasibility_)** del sistema completo y en funcionamiento, se utilizó un caso de estudio: la optimización del diseño de una grúa _knuckleboom_ real de 50 toneladas y 2.9 millones de euros que ya había sido entregada.

- **Objetivos Elegidos:** Maximizar la carga máxima de trabajo segura ($SWL_{max}$) y minimizar el peso total ($W$). La función objetivo era $f_1 = SWL_{max} / W$.
- **Variables de Optimización:** Cuatro parámetros de diseño críticos fueron seleccionados y restringidos: la longitud de la pluma, la longitud del _jib_ (extensión de la pluma), la presión máxima del cilindro de la pluma y la presión máxima del cilindro del _jib_.
- **Resultados:** El GA evaluó 5,000 diseños en 98.4 minutos. El diseño optimizado **mejoró la $SWL_{max}$ en un 42.2%** (de 100.0 a 142.1 toneladas) y **redujo el peso en un 13.5%** (de 50.8 a 44.0 toneladas), mejorando la función objetivo general en un 64.3%.
- **Limitación Discutida:** Los autores señalan que, si bien el resultado fue suficiente para la prueba de concepto, el diseño optimizado tuvo un **espacio de trabajo mucho más pequeño** que la grúa nominal, lo que subraya la necesidad de funciones objetivo más sofisticadas para el diseño real.

**5. Direcciones Futuras:** El marco es fácilmente extensible. El equipo está desarrollando actualmente una herramienta de prototipado de cabrestantes (_winch prototyping tool_) a la que el AIPO existente se podrá conectar con solo pequeños cambios de configuración. También se planea desarrollar una **GUI para el módulo AIPO** para permitir a los expertos en el dominio (diseñadores de productos que carecen de conocimientos de IA o programación) configurar fácilmente funciones objetivo y elegir algoritmos de IA, al tiempo que se protege la propiedad intelectual del código. Además, se considera el uso de **computación paralela** (GPGPUs) para manejar el crecimiento exponencial del espacio de búsqueda a medida que aumenta el número de parámetros de diseño optimizados.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de los autores sobre la viabilidad y el valor de su marco CautoD se fundamentan en las siguientes ideas clave:

1. **El Diseño de Productos Complejos es un Problema de Optimización Multiobjetivo (MOO) Inabordable Manualmente, que Requiere Soluciones de IA (GA):** La conclusión de que la automatización es necesaria se basa en que el proceso manual de prueba y error es **demasiado costoso y lento** debido al gran número de parámetros (más de 120). El marco se fundamenta en el uso de **Algoritmos Genéticos (GA)**, una herramienta de IA, que es particularmente adecuada para manejar la **optimización multiobjetivo** (MOO) y las restricciones, produciendo soluciones **Pareto óptimas**.
2. **La Modularidad y la Arquitectura Servidor-Cliente son Esenciales para la Extensibilidad y la Protección de la Propiedad Intelectual:** La conclusión de que el marco es **genérico y modular** se basa en la adopción de una arquitectura de **servidor-cliente** con interfaces de comunicación estandarizadas (HTTP/WS con JSON). Esto permite que el CPT (servidor, con la lógica de cálculo sensible) actúe como una **"caja negra"** para el cliente, protegiendo la propiedad intelectual (IP) de los socios industriales, y permite que el módulo de optimización (AIPO) se conecte para diseñar otros productos (como cabrestantes) con modificaciones mínimas.
3. **La Planificación del Diseño debe Formularse como la Optimización de Funciones Objetivo para KPI, no solo como una Consecuencia Indirecta de la Elección de Parámetros:** La conclusión de que el sistema puede mejorar los diseños existentes se fundamenta en la capacidad de la IA para trabajar con **funciones objetivo** explícitas basadas en los KPI deseados (ej., SWL máximo y peso). Esto supera el enfoque tradicional donde las características importantes, como el gráfico de carga, se realizaban indirectamente como una consecuencia de elecciones de diseño _a priori_.

---

### Valor del Paper

El artículo **"A Software Framework For Intelligent Computer-automated Product Design"** tiene un valor significativo, especialmente para la Ingeniería de _Software_ en el dominio marítimo e industrial:

- **Validación de Concepto en un Contexto Industrial Real:** El _paper_ ofrece una **prueba de concepto completa** utilizando datos de una grúa _offshore_ real vendida por un socio industrial (Seaonics AS). Los resultados (mejora del 64.3% en la función objetivo elegida) demuestran de manera convincente la viabilidad y la potencia de CautoD basado en GA para **superar los diseños creados por humanos**.
- **Marco de _Software_ Abierto y Modular para CautoD:** El marco proporciona una arquitectura de referencia **genérica** que desacopla la herramienta de prototipado (CPT) de la herramienta de optimización (AIPO) mediante interfaces HTTP/WS y JSON. Esto permite su reutilización para el diseño optimizado de otros productos (ej. cabrestantes) y la integración de diferentes algoritmos o GUIs desarrollados por terceros (como el cliente Matlab desarrollado en el artículo acompañante).
- **Abordaje de la IP y la Usabilidad:** El diseño de arquitectura aborda preocupaciones críticas de la industria, como la **protección de la propiedad intelectual** al mantener el código del calculador de grúas en un servidor "caja negra". Además, el plan de desarrollar una GUI para el AIPO demuestra una conciencia de la necesidad de hacer que las técnicas de IA sean **accesibles** para los expertos en el dominio que no son programadores.

El marco es comparable a un **ingeniero de diseño _offshore_ sobrealimentado por un superordenador**. En lugar de pasar semanas haciendo cálculos manuales y optimizando a ojo (el proceso de prueba y error humano), el CPT actúa como un **simulador preciso y veloz**, y el AIPO/GA es el **motor de optimización** que explora miles de posibles diseños de manera inteligente en minutos, identificando diseños superiores que un humano probablemente no encontraría.
