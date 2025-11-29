#CitaLatex 
@article{Yi2023Automatedalgorithm,
  title = {Automated algorithm design using proximal policy optimisation with identified features},
  volume = {216},
  ISSN = {0957-4174},
  url = {http://dx.doi.org/10.1016/j.eswa.2022.119461},
  DOI = {10.1016/j.eswa.2022.119461},
  journal = {Expert Systems with Applications},
  publisher = {Elsevier BV},
  author = {Yi,  Wenjie and Qu,  Rong and Jiao,  Licheng},
  year = {2023},
  month = apr,
  pages = {119461}
}


Referencia del archivo original: `(Wenjie Yi) Automated algorithm design using proximal policy optimisation with.pdf` [[(Wenjie Yi) Automated algorithm design using proximal policy optimisation with.pdf]]

El documento seleccionado es el artículo de investigación **"Automated algorithm design using proximal policy optimisation with identified features"** (Diseño automatizado de algoritmos de búsqueda utilizando optimización de política proximal con características identificadas), escrito por Wenjie Yi, Rong Qu y Licheng Jiao.

Este estudio aborda la necesidad de automatizar el diseño de metaheurísticas para resolver problemas complejos de optimización combinatoria (COPs), ya que los algoritmos diseñados manualmente a menudo son efectivos solo para casos específicos y no pueden extenderse fácilmente a otros problemas o instancias.

### Resumen Completo del Documento

**1. Contexto del Problema y Marco de Diseño:** La mayoría de las metaheurísticas en la literatura se diseñan manualmente para un modelo de problema o instancia específicos, lo que requiere un considerable esfuerzo humano. Los autores proponen utilizar la vasta cantidad de datos generados durante el proceso de búsqueda para extraer conocimiento útil y diseñar metaheurísticas más generales e inteligentes. El estudio se basa en un marco general (como el General Search Framework, GSF) para el diseño automatizado de algoritmos de búsqueda local y basados en población.

**2. Innovación Central: Identificación de Características Clave:** Para lograr un Aprendizaje por Refuerzo (RL) efectivo en la nueva tarea de diseño de algoritmos, el estudio identifica y categoriza dos grupos de características clave (o _features_) que representan el espacio de búsqueda:

- **Características Dependientes de la Búsqueda (_Search-dependent features_):** Describen el proceso de búsqueda en curso. Proporcionan información sobre la intensificación y diversificación de la búsqueda. Ejemplos incluyen el estado de la búsqueda ($f_1$), la mejora del _fitness_ ($f_2$), la desviación estándar del _fitness_ ($f_3$) y la asimetría y curtosis del _fitness_.
- **Características Dependientes de la Instancia (_Instance-dependent features_):** Contienen información fundamental sobre la definición del problema y son fijas una vez que se proporciona la instancia. Ejemplos para el Problema de Enrutamiento de Vehículos con Ventanas de Tiempo (CVRPTW) incluyen el número de vehículos, la capacidad del vehículo, la demanda promedio del cliente y el tamaño promedio de la ventana de tiempo.

**3. Metodología de Aprendizaje por Refuerzo (PPO):** Se emplea una técnica de Aprendizaje por Refuerzo de última generación, llamada **Optimización de Política Proximal (PPO)**. El RL modela el diseño automatizado de algoritmos como un Proceso de Decisión de Markov (MDP). PPO fue seleccionado porque los métodos RL basados en políticas tienden a ser más estables y menos propensos a fallar que los métodos basados en valores (como Q-learning o DQN).

- **Arquitectura:** Se utiliza una arquitectura Actor-Critic para acelerar el proceso de actualización.
- **Estado y Acción:** Las características identificadas (dependientes de la búsqueda y de la instancia) se utilizan para definir el espacio de estado. Las acciones son la selección y combinación de los operadores de evolución.
- **Recompensa:** El esquema de recompensa se basa en la mejora del _fitness_ de la población actual sobre la población inicial.

**4. Resultados Empíricos y Patrones de Búsqueda:** El método fue evaluado en el problema desafiante **CVRPTW** utilizando el conjunto de datos de Solomon, que incluye instancias con diferentes características (tipos C, R y RC).

- **Eficacia de las Características:** Los resultados demostraron que la inclusión de las **características dependientes de la instancia** es efectiva, ya que la adición de estas características ayudó al modelo de RL a lograr mejores valores de rendimiento (AVG, SD, BEST) en la mayoría de las instancias durante las pruebas. Esto verifica la efectividad de las características identificadas para asistir al diseño algorítmico.
- **Patrones de Búsqueda:** El análisis de los algoritmos diseñados automáticamente reveló patrones clave, en particular la **utilización y la transición de componentes algorítmicos**.
    - Los operadores $ins_bw$ (insertar entre rutas) y $2opt^*$ (intercambio de secciones finales de rutas) fueron los más frecuentemente seleccionados en los mejores algoritmos diseñados.
    - Los operadores son llamados frecuentemente de forma **intercambiable** durante el proceso de optimización, lo que indica la importancia de la **selección adaptativa de operadores** para un diseño de algoritmos eficaz.
    - La diversidad de operadores utilizados aumenta cuando las restricciones del problema se relajan (por ejemplo, una mayor capacidad del vehículo o una menor densidad de la ventana de tiempo).

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones principales del _paper_ se centran en la importancia de una representación precisa del estado del sistema para el éxito del RL en el diseño de algoritmos, y la revelación de patrones de búsqueda adaptativos:

1. **La Representación del Estado mediante la Integración de Características de Búsqueda y de Instancia es Esencial para el Éxito de RL:** La conclusión de que el modelo PPO es efectivo se fundamenta en la **identificación y el uso conjunto de las dos categorías de características**. El análisis empírico demostró que las características dependientes de la instancia proporcionan información útil al modelo de aprendizaje, permitiendo al agente determinar con mayor precisión el estado resultante y tomar mejores decisiones de acción.
2. **La Adaptación Dinámica de Operadores (Transición) es un Requisito Indispensable para Resolver COPs Complejos de Manera Eficaz:** La conclusión de la importancia de la selección adaptativa se basa en el **análisis de patrones de búsqueda**. El hallazgo de que los operadores son llamados **frecuentemente e intercambiablemente** demuestra que el espacio de búsqueda es **no estacionario** y que ningún operador único es suficiente. Por lo tanto, el agente de RL debe aprender a cambiar adaptativamente los operadores para obtener un rendimiento superior.
3. **El Enfoque de RL (PPO) es Capaz de Extraer Conocimiento Oculto sobre la Composición de Algoritmos que Supera los Diseños Manuales:** La conclusión de que el enfoque automatizado es viable se fundamenta en que PPO es capaz de **extraer conocimiento útil** oculto en los datos de búsqueda y de componer automáticamente los componentes algorítmicos. El objetivo del diseño automatizado de algoritmos no es solo superar a las metaheurísticas diseñadas manualmente, sino desarrollar un algoritmo eficaz **con poca intervención humana**.

### Valor del Paper

El artículo **"Automated algorithm design using proximal policy optimisation with identified features"** tiene un valor significativo para la investigación en Inteligencia Computacional y Diseño Algorítmico:

- **Contribución Metodológica Central (Feature Engineering):** Su valor principal radica en la identificación y categorización sistemática de un conjunto de características (dependientes de la búsqueda y dependientes de la instancia) para la representación del estado. Esto aborda un problema clave en la aplicación de RL al diseño de algoritmos y mejora la eficacia y la generalidad de la solución.
- **Aplicación de RL de Última Generación:** Demuestra la aplicación efectiva de **Proximal Policy Optimisation (PPO)**, un RL robusto, para automatizar la combinación de operadores de evolución.
- **Descubrimiento de Conocimiento Nuevo:** El análisis de patrones de búsqueda (utilización y transición) proporciona una **idea valiosa** sobre cómo los algoritmos de alto rendimiento deberían comportarse al resolver COPs, revelando la necesidad de una selección de operadores altamente adaptable e intercambiable.
- **Generalidad y Transferibilidad:** El enfoque está diseñado como una metodología general, y la prueba en el CVRPTW (con diferentes tipos de instancias C, R, RC) es suficiente para **justificar el rendimiento del método de aprendizaje** y su aplicabilidad a diferentes instancias.

El valor de este _paper_ es que proporciona un **mapa detallado y validado** sobre cómo la IA debe percibir el complejo paisaje de optimización. En lugar de que la IA simplemente "adivine" qué operador usar, las características identificadas le dan **ojos** (las características dependientes de la búsqueda) para entender dónde está el sistema en el proceso de optimización y **oídos** (las características dependientes de la instancia) para entender el tipo de terreno que está explorando, permitiéndole tomar decisiones óptimas y adaptables.
