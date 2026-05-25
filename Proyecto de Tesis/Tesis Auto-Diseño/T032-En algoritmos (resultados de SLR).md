Varios de los documentos proporcionados se centran específicamente en el diseño automatizado de algoritmos (conocido como _Automated Algorithm Design_ o AutoAD) y proponen arquitecturas, marcos de trabajo (frameworks) o modelos para este propósito. A continuación se detallan los principales enfoques:

**1. Modelo GCOP y Framework AutoGCOP (Optimización Combinatoria)**

- El artículo **"(Rong Qu) The General Combinatorial Optimization Problem Towards Automated Algorithm Design"** propone el modelo **GCOP** (Problema General de Optimización Combinatoria), el cual define el diseño de algoritmos como un problema de optimización en sí mismo. Este modelo establece un estándar donde las variables de decisión son los componentes algorítmicos paramétricos básicos, permitiendo componer de forma flexible nuevos algoritmos genéricos de búsqueda.
- Basado en este modelo, el documento **"(Weiyao Meng) Automated design of search algorithms Learning on algorithmic components"** propone **AutoGCOP**, un framework general diseñado para automatizar la composición de estos componentes elementales y crear algoritmos de búsqueda local novedosos que difícilmente serían diseñados manualmente.

**2. Unified General Search Framework (GSF) mediante Aprendizaje por Refuerzo**

- Los trabajos **"(Wenjie Yi) Automated design of search algorithms based on reinforcement learning"** y **"(Wenjie Yi) Automated algorithm design using proximal policy optimisation"** exploran el diseño automatizado dentro de un marco de búsqueda general unificado (GSF). Ambos proponen arquitecturas basadas en técnicas de aprendizaje por refuerzo (como la optimización de políticas próximas) para seleccionar, combinar y aplicar automáticamente componentes básicos, como los operadores de evolución y las heurísticas de selección simultáneamente durante el proceso de optimización.

**3. Framework AutoMOEA para Algoritmos Evolutivos Multiobjetivo**

- Los artículos de Leonardo C. T. Bezerra, **"Automatic Component-Wise Design of Multiobjective Evolutionary Algorithms"** y **"Automatically Designing State-of-the-Art Multi-and Many-Objective Evolutionary Algorithms"**, proponen un framework y una plantilla algorítmica denominada **AutoMOEA / AutoMOEA+**. Esta arquitectura permite desglosar los algoritmos en componentes individuales y recombinarlos mediante un método de configuración automática para diseñar automáticamente algoritmos evolutivos multiobjetivo (MOEAs) que superan a los creados por humanos.

**4. Framework ALDes mediante Aprendizaje Autorregresivo**

- El documento **"(Qi Zhao) Automated Metaheuristic Algorithm Design With Autoregressive Learning"** introduce **ALDes**, un diseñador basado en aprendizaje autorregresivo. A diferencia de los métodos anteriores que utilizan plantillas con estructuras fijas, ALDes formula el diseño de algoritmos metaheurísticos como una "tarea de generación de secuencias". Esta arquitectura puede generar algoritmos con longitudes y estructuras diversas (incluyendo secuencias, ramificaciones y bucles lógicos) utilizando el conocimiento de diseño acumulado en problemas anteriores.

**5. Arquitecturas de Generación de Heurísticas de Dominio Cruzado**

- El libro/documento **"(Nelishia Pillay) Automated Design of Machine Learning"** ofrece una visión exhaustiva del campo y propone marcos teóricos y prácticos para la generación de algoritmos. Destaca un método que utiliza **evolución gramatical (GE)** para la generación automatizada de heurísticas constructivas y perturbativas (de bajo nivel) representadas mediante grafos. Este enfoque actúa por "debajo de la barrera del dominio", proporcionando un diseño genérico que puede aplicarse a múltiples problemas sin necesidad de que el humano defina reglas específicas para cada caso.