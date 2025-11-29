#CitaLatex 
@article{Yi2023Automateddesign,
  title = {Automated design of search algorithms based on reinforcement learning},
  volume = {649},
  ISSN = {0020-0255},
  url = {http://dx.doi.org/10.1016/j.ins.2023.119639},
  DOI = {10.1016/j.ins.2023.119639},
  journal = {Information Sciences},
  publisher = {Elsevier BV},
  author = {Yi,  Wenjie and Qu,  Rong},
  year = {2023},
  month = nov,
  pages = {119639}
}

Referencia del archivo original: `(Wenjie Yi)  Automated design of search algorithms based on reinforcement learning.pdf` [[(Wenjie Yi)  Automated design of search algorithms based on reinforcement learning.pdf]]

El documento seleccionado es el artículo **"Automated design of search algorithms based on reinforcement learning"** (Diseño automatizado de algoritmos de búsqueda basado en aprendizaje por refuerzo), escrito por Wenjie Yi y Rong Qu.

Este estudio se centra en el **diseño automatizado de algoritmos de búsqueda** para problemas complejos de optimización combinatoria (COPs) mediante el uso de técnicas avanzadas de Aprendizaje por Refuerzo (RL). El objetivo principal es ir más allá de los métodos existentes, que típicamente se centran solo en los operadores de evolución, e investigar sistemáticamente el impacto y la **sinergia de múltiples componentes algorítmicos** (operadores de evolución y heurísticas de selección) simultáneamente dentro de un marco unificado.

### Resumen Completo del Documento

**1. El Problema del Diseño de Algoritmos:** El diseño de algoritmos de búsqueda altamente especializados para COPs complejos es un proceso que consume mucho tiempo y requiere una fuerte participación de expertos humanos. Este proceso manual limita el alcance de los algoritmos explorados. Además, la mayoría de los estudios existentes sobre diseño automatizado se han centrado extensivamente en la selección y adaptación de **operadores de evolución** (que modifican soluciones), descuidando otras decisiones cruciales como las **heurísticas de selección** (para evolución y para reemplazo), lo que limita el alcance y la generalidad de los algoritmos diseñados.

**2. Marco y Solución Propuesta (ACE-GSF):** Los autores trabajan dentro del **General Search Framework (GSF)**, que generaliza el diseño de algoritmos al componer nuevos algoritmos a partir de componentes algorítmicos básicos (como operadores de evolución y heurísticas de selección). Para navegar el gran espacio de diseño algorítmico, el estudio propone un método avanzado de Aprendizaje por Refuerzo (RL) denominado **Actor-Critic with Entropy (ACE-GSF)**.

- **Desafío del RL:** El problema de diseño de algoritmos se define como una tarea de RL con un **espacio de estado continuo** y un **espacio de acción discreto de alta dimensión**.
- **Mecanismo Clave (Máxima Entropía):** El ACE-GSF se mejora con un **mecanismo de máxima entropía**. Este mecanismo añade un término de entropía a la función objetivo de RL (Ecuación 1) para fomentar la **exploración** en las etapas tempranas del aprendizaje y la **explotación** (utilización de acciones con buen rendimiento histórico) en las etapas posteriores. El coeficiente de entropía ($\alpha$) puede ajustarse mediante esquemas fijos, lineales o no lineales adaptativos (FS, LAS, NLAS).
- **Arquitectura:** ACE utiliza una arquitectura actor-crítico con dos redes críticas para eliminar la sobreestimación y un _buffer_ de repetición de experiencias para romper las correlaciones.
- **Acciones (Variables de Decisión):** Las acciones del agente de RL son combinaciones de los componentes básicos de búsqueda, incluyendo las heurísticas de Selección para Evolución (Tabla 2), los Operadores de Evolución (Tabla 1) y las heurísticas de Selección para Reemplazo (Tabla 3).

**3. Evaluación y Resultados Clave:** El método fue evaluado en el **Problema de Enrutamiento de Vehículos con Ventanas de Tiempo (CVRPTW)**. La investigación se centró en el impacto de los componentes individuales frente a la sinergia de múltiples componentes:

- **Impacto Individual:** Los resultados mostraron que el aprendizaje únicamente de las heurísticas de selección (para evolución o reemplazo) **no tuvo un impacto significativo** en el rendimiento del algoritmo, lo que es consistente con la experiencia humana en el diseño de algoritmos.
- **Sinergia de Múltiples Componentes (Aprendizaje de "Ambos"):** Los métodos ACE aplicados al espacio de búsqueda de **ambos** (heurísticas de selección y operadores de evolución) **superaron** a aquellos que solo se enfocaron en operadores de evolución. Esto demuestra una **sinergia positiva** y que la colaboración adecuada entre los componentes mejora significativamente el rendimiento.
- **Esquema de Ajuste de Entropía:** El esquema **Lineal Adaptativo (ACE_LAS_both)** se identificó como el de mejor rendimiento en la mayoría de las instancias. Esto subraya la utilidad de un mecanismo adaptable simple para equilibrar eficazmente la exploración y la explotación en un gran espacio de diseño algorítmico.
- **Generalidad:** Las políticas aprendidas demostraron un **buen grado de generalidad**, pudiendo transferir el conocimiento descubierto para resolver nuevos tipos de instancias de problemas.

**4. Conclusiones:** La investigación demuestra que las técnicas de aprendizaje automático pueden **superar la experiencia humana** cuando se enfrentan a un espacio de diseño algorítmico extenso, ya que la máquina puede explotar la sinergia entre componentes que los humanos históricamente han descuidado. El RL avanzado con mecanismos de máxima entropía es eficaz para abordar la complejidad del diseño automatizado de algoritmos.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la capacidad de la IA para diseñar algoritmos superiores, especialmente en espacios complejos, se basan en las siguientes ideas clave:

1. **El Diseño de Algoritmos Debe Considerarse como un Problema de Optimización de Alta Dimensión donde la Sinergia es Clave:** La conclusión de que la IA puede superar la experiencia humana se basa en la demostración de que la **colaboración adecuada entre las heurísticas de selección y los operadores de evolución mejora significativamente el rendimiento del algoritmo**. El problema era que el enfoque tradicional (humano y ML anterior) se centraba únicamente en los operadores, mientras que la ampliación del espacio de diseño para incluir ambos componentes revela su sinergia positiva.
2. **El Marco GSF Proporciona la Generalidad Necesaria para la Composición de Algoritmos Novedosos y Reutilizables:** La conclusión sobre la capacidad del sistema para diseñar nuevos algoritmos se fundamenta en el uso del **General Search Framework (GSF)**, que soporta la composición de los **componentes algorítmicos más básicos** (operadores de evolución y heurísticas de selección). Esto permite que la IA genere algoritmos completamente nuevos, en lugar de solo variantes de algoritmos existentes diseñados por humanos.
3. **El Mecanismo de Máxima Entropía (ACE) es la Estrategia Metodológica Adecuada para Navegar Espacios de Decisión Algorítmica de Alta Complejidad:** La conclusión sobre la efectividad del método ACE se fundamenta en su diseño para manejar el **espacio de estado continuo y el espacio de acción discreto de alta dimensión** del problema de diseño algorítmico. La inclusión del término de entropía y su ajuste adaptativo (ACE_LAS) es esencial para **equilibrar la exploración y la explotación** a lo largo del proceso de aprendizaje, permitiendo al agente descubrir la composición óptima en este vasto espacio de diseño.

---

### Valor del Paper

El artículo **"Automated design of search algorithms based on reinforcement learning"** tiene un valor sustancial en la comunidad de Computación Evolutiva y Ciencias de la Información:

- **Avance Metodológico en Diseño Automatizado:** El _paper_ aborda una brecha fundamental en la literatura al investigar sistemáticamente la **sinergia de múltiples componentes algorítmicos** (operadores y heurísticas de selección) simultáneamente, lo cual había sido limitado previamente.
- **Validación de la Superioridad de ML en Gran Escala:** Proporciona evidencia empírica clara de que, si bien la experiencia humana es útil en espacios de diseño limitados, las técnicas avanzadas de ML **superan consistentemente la intuición humana** cuando se permite la exploración de un espacio de diseño algorítmico más grande y sin restricciones.
- **Propuesta de Técnica RL Avanzada Aplicada (ACE-GSF):** El desarrollo e implementación del método **ACE-GSF** (Actor-Critic con Entropía y ajuste lineal) es una contribución técnica significativa. Este método es específicamente adecuado para el problema de diseño algorítmico debido a su capacidad para manejar los desafíos de los espacios de estado continuos y los espacios de acción discretos de alta dimensión.
- **Descubrimiento de Conocimiento Transferible:** El trabajo contribuye al descubrimiento de **conocimiento transferible o reutilizable** en el diseño de algoritmos, ya que demuestra la generalidad de las políticas aprendidas en la resolución de nuevos tipos de instancias de problemas.

El valor de este trabajo es que funciona como un **buscador de oro automatizado** para la ingeniería de algoritmos. En lugar de que los humanos busquen manualmente pepitas (algoritmos) en una pequeña parcela conocida (operadores de evolución), el sistema ACE-GSF utiliza maquinaria avanzada (RL de Máxima Entropía) para buscar en todo el vasto territorio (la sinergia de todos los componentes). La investigación demuestra que el mayor rendimiento no se encuentra en las áreas que ya conocemos, sino en la **combinación óptima e inesperada** de herramientas básicas que solo la exploración sistemática de la IA puede revelar.
