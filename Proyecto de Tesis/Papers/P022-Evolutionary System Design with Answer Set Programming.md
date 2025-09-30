#CompletarCita 
Lectura basada en [[(Christian Haubelt) Evolutionary System Design with Answer Set Programming.pdf]]


### Resumen del Paper: Diseño Evolutivo de Sistemas con Programación de Conjuntos de Respuestas (ASP)

El artículo aborda el problema del **Diseño Evolutivo de Sistemas (ESD)**, que consiste en sintetizar nuevas variantes o generaciones de un producto a partir de una versión existente. En lugar de diseñar sistemas complejos desde cero, este enfoque aprovecha el conocimiento de un diseño previo de alta calidad (el "padre") para encontrar más rápidamente una solución óptima para un nuevo sistema con especificaciones ligeramente modificadas (el "hijo"). El método utiliza una técnica de programación declarativa llamada **Programación de Conjuntos de Respuestas módulo Restricciones de Diferencia (AMT)** para automatizar este proceso.

---

### 1. El Problema Central: Diseño Evolutivo de Sistemas (ESD)

El diseño de sistemas embebidos es una tarea de optimización combinatoria multi-objetivo muy compleja, conocida como **Exploración del Espacio de Diseño (DSE)**. El objetivo es encontrar las mejores implementaciones posibles que equilibren atributos de calidad en conflicto, como **costo, consumo de energía y latencia**.

La idea clave del paper es que los sistemas rara vez se diseñan desde cero; casi siempre son extensiones o modificaciones de versiones anteriores. El desafío es cómo usar formalmente el conocimiento de una implementación "padre" de alta calidad para guiar la búsqueda de una implementación "hijo" óptima, especialmente cuando las especificaciones han cambiado. Para ello, es fundamental definir una medida de **similitud** entre dos diseños.

### 2. La Solución Propuesta: Un Marco Basado en AMT

El enfoque propuesto modela el problema de síntesis de sistemas usando **Answer Set Programming (ASP)**, una forma de programación lógica declarativa, combinada con **Restricciones de Diferencia** (un tipo de restricciones lineales sobre variables enteras). Esta combinación, llamada AMT, es especialmente adecuada para este problema híbrido:

- **ASP simple** se utiliza para las partes combinatorias del problema, como la detección de conflictos, la asignación de tareas a recursos (_binding_) y el enrutamiento de comunicaciones (_routing_).
- Las **Restricciones de Diferencia** se usan para la parte de planificación (_scheduling_), que implica manejar tiempos de ejecución y plazos de manera eficiente.

El objetivo del proceso es encontrar el **Frente de Pareto**, es decir, el conjunto de soluciones no dominadas que representan los mejores compromisos (_trade-offs_) entre costo, energía y latencia.

### 3. Ideas y Conceptos Clave

#### **a. Formalización de la Similitud (Distancia) entre Diseños**

Una contribución central es la nueva definición formal de la distancia entre dos implementaciones (la del padre y la del hijo). Esta distancia no es un valor único, sino que se descompone en:

- **Distancia de Binding:** Compara las decisiones sobre qué tarea se ejecuta en qué recurso de hardware.
- **Distancia de Routing:** Compara las rutas que toman las comunicaciones a través de la red de interconexión.
- **Distancia de Scheduling:** También se consideró, pero los experimentos mostraron que era demasiado granular y no funcionaba bien.

La distancia se calcula contando el número de decisiones diferentes entre la implementación del padre y la del hijo, teniendo en cuenta los cambios en las especificaciones (ej. tareas o recursos eliminados o añadidos).

#### **b. Tres Formas de Usar la Similitud para Guiar la Búsqueda**

El paper propone y evalúa tres técnicas distintas para incorporar esta medida de similitud en el proceso de búsqueda de soluciones:

1. **Estrategias:** Es el método más restrictivo. Utiliza restricciones de integridad en ASP para **prohibir soluciones que no sean suficientemente similares** al diseño padre. Esto reduce drásticamente el espacio de búsqueda.
2. **Preferencias (como un Objetivo Adicional):** Trata la distancia al diseño padre como un **cuarto objetivo de optimización**, junto con el costo, la energía y la latencia. El sistema busca entonces el Frente de Pareto en este espacio de cuatro dimensiones, encontrando los mejores equilibrios entre calidad y similitud.
3. **Heurísticas de Dominio Específico:** Es el enfoque más flexible. No restringe el espacio de búsqueda ni añade objetivos. En su lugar, **modifica las heurísticas internas del solver de ASP** para que priorice las decisiones que conducen a diseños más similares al padre. El objetivo es encontrar soluciones de alta calidad y similares de forma más rápida.

### 4. Evaluación y Resultados

Los autores realizaron una evaluación empírica exhaustiva comparando las tres técnicas con diferentes configuraciones contra un enfoque base que realiza la DSE desde cero.

- **Las Heurísticas fueron la técnica más exitosa:** Superaron ampliamente al enfoque base, encontrando soluciones de alta calidad y muy similares al diseño padre en menos tiempo. Demostraron ser la mejor manera de guiar la búsqueda sin restringirla excesivamente.
- **Las Estrategias resultaron ser demasiado restrictivas:** En muchos casos, los cambios entre las especificaciones del padre y el hijo hacían que la similitud estricta fuera imposible, llevando a la conclusión de que no existía ninguna solución (_insatisfiability_). Sin embargo, en los casos en que funcionaron, ofrecieron garantías de similitud.
- **Las Preferencias no tuvieron un buen rendimiento:** Añadir la similitud como un cuarto objetivo de optimización aumentó significativamente la complejidad del problema, lo que resultó en que se encontraron menos soluciones en el tiempo asignado.

### Conclusión:

Este paper podría ser **muy útil para tu tesis**, especialmente si tu investigación se centra en:

- **Ingeniería de Software Basada en Búsqueda (SBSE):** Es un ejemplo excelente de cómo aplicar técnicas de optimización y búsqueda a un problema de diseño de sistemas del mundo real.
- **Diseño y Optimización de Arquitecturas de Software/Hardware:** Aborda la co-optimización de múltiples objetivos de calidad (costo, energía, rendimiento) en sistemas complejos.
- **Sistemas Autoadaptativos o Evolutivos:** El concepto de ESD es directamente aplicable al diseño de sistemas que evolucionan o se adaptan a lo largo del tiempo.
- **Aplicación de Programación Declarativa (ASP, SMT):** Muestra un uso avanzado y práctico de ASP y la resolución de teorías módulo (AMT) para resolver un problema híbrido (combinatorio y numérico).
- **Modelado y Explotación de Conocimiento de Dominio:** El paper ofrece un método formal para capturar y utilizar conocimiento previo (el diseño "padre") para acelerar y mejorar un proceso de optimización, comparando diferentes formas de hacerlo (restricciones, objetivos, heurísticas).