#CitaLatex 
@inproceedings{Gil2015AutomatedPlanning,
  title = {Automated Planning for Self-Adaptive Systems},
  url = {http://dx.doi.org/10.1109/ICSE.2015.273},
  DOI = {10.1109/icse.2015.273},
  booktitle = {2015 IEEE/ACM 37th IEEE International Conference on Software Engineering},
  publisher = {IEEE},
  author = {Gil,  Richard},
  year = {2015},
  month = may,
  pages = {839–842}
}

Referencia del archivo original: `(Richard Gil) Automated Planning for Self-Adaptive Systems.pdf` [[(Richard Gil) Automated Planning for Self-Adaptive Systems.pdf]]

El documento seleccionado para el análisis es el artículo de investigación **"Automated Planning for Self-Adaptive Systems"** (Planificación Automatizada para Sistemas Autoadaptativos), escrito por Richard Gil.

Este trabajo aborda el desafío de la **planificación de la adaptación** —el proceso de toma de decisiones para seleccionar un curso de acción apropiado— en sistemas de cómputo autoadaptativos. El objetivo principal es proponer mecanismos automatizados para **ensamblar planes de adaptación deliberados** que guíen el sistema hacia un estado deseado, mejorando así las capacidades adaptativas en escenarios de incertidumbre.

### Resumen Completo del Documento

**1. Contexto y Motivación (El Cuello de Botella de la Complejidad):** La complejidad de los sistemas de cómputo ha aumentado dramáticamente, lo que se ha convertido en un factor limitante para su desarrollo futuro. Las tareas complejas de gestión —como adaptarse a los requisitos del usuario, optimizar el rendimiento o reaccionar a fallas— ya no pueden depender únicamente del esfuerzo humano, que es costoso, lento y propenso a errores.

La **Computación Autónoma** (_Autonomic Computing_) busca reducir esta barrera integrando inteligencia en el proceso de gestión. Esto se logra mediante un bucle de control externo que implementa el modelo **MAPE-K** (_Monitoring, Analyzing, Planning, and Executing_ sobre un _Knowledge_ o Conocimiento compartido).

**2. El Problema Específico: La Planificación Automatizada:** Aunque la adaptación correctiva de bajo nivel está bien definida, la pregunta clave de **cómo elaborar automáticamente planes deliberados de alto nivel** capaces de considerar desviaciones ambientales y guiar un sistema bajo incertidumbre permanece sin respuesta. El trabajo de Gil se centra en abordar los desafíos de la **generación automática de planes operacionalizados** que tienen en cuenta la incertidumbre.

**3. El Enfoque Propuesto (Estrategia Jerárquica e Integración de Planificadores):** El autor se adhiere a un **enfoque arquitectónico** para la ingeniería de sistemas autoadaptativos. El razonamiento se basa en una perspectiva jerárquica, definiendo la adaptación en tres niveles de control:

- **Acciones Primitivas (Operadores):** Comandos de bajo nivel específicos de los componentes.
- **Acciones Vigiladas/Reactiva (Tácticas):** _Constructs_ de nivel medio que encapsulan un operador con sus precondiciones, postcondiciones y funciones de impacto. Sirven como unidad lógica para especificar el costo y beneficio de una acción.
- **Planes Deliberados (Estrategias):** Planes de alto nivel en forma de árbol, donde cada paso es la ejecución condicional de una táctica. Consisten en un conjunto de caminos y puntos de bifurcación para guiar el sistema desde un estado inicial hasta un estado final deseado.

**4. Proceso de Tres Etapas para el Ensamblaje y Refinamiento de Estrategias:** El enfoque propuesto procede en tres etapas clave:

- **A. Generación de Rutas de Adaptación (_Adaptation Path Generation_) (Offline):** El problema de planificación se enmarca como la tarea de encontrar una secuencia de acciones que lleven el sistema de un estado inicial ($s_0$) a un estado objetivo ($S_G$).
    - **Modelado PDDL:** Se describe la lógica de los operadores, precondiciones y postcondiciones en un lenguaje de planificación estándar como **PDDL** (_Planning Domain Definition Language_).
    - **Planificadores _Off-the-shelf_:** Se utiliza una variedad de planificadores (herramientas de la comunidad de IA) para generar un conjunto de rutas de adaptación candidatas.
    - **Agregación:** Los caminos finos se agrupan en **caminos más gruesos** (_coarser paths_) utilizando mecanismos de **_clustering_ para la segmentación de valores**, de modo que las rutas de adaptación seleccionadas sean válidas bajo un rango más amplio de condiciones iniciales, sacrificando opcionalmente la optimización a favor de la generalidad.
- **B. Ensamblaje de Estrategias (_Strategy Assembling_) (Offline):** Para incorporar la incertidumbre, las transiciones del sistema se modelan como **pasos probabilísticos**, donde la ejecución de una acción puede llevar a diferentes estados subsiguientes con ciertas probabilidades.
    - Se utilizan planificadores para generar **rutas de adaptación alternativas** para cada uno de estos posibles estados subsiguientes. Esto resulta en un **árbol de caminos candidatos** con probabilidades asociadas.
    - La estrategia seleccionada guía la ejecución del plan, y después de cada paso de adaptación, el sistema evalúa qué camino seguir.
- **C. Refinamiento de Estrategias (_Strategy Refinement_) (Online):** Se propone actualizar las estrategias generadas en tiempo de ejecución.
    - Se utilizan **mecanismos de aprendizaje** para refinar las funciones de impacto y los efectos probabilísticos estimados por el experto, basándose en los datos recopilados sobre el sistema y su entorno.
    - Se calcula la diferencia entre los valores de las métricas antes y después de cada acción, y se utiliza un estimador de funciones para definir la naturaleza matemática de los efectos.

**5. Valor y Contribución:** La propuesta es novedosa en su intento de **integrar políticas de adaptación jerárquicas** (primitivas, reactivas y deliberadas) con **herramientas de planificación automatizada** para generar estrategias de adaptación. A diferencia de trabajos previos, este enfoque no se limita a una ejecución ávida de acciones que solo podrían alcanzar óptimos locales, sino que las estrategias generadas pueden **guiar deliberadamente al sistema hacia un óptimo global**. Además, el refinamiento en línea asegura que las estrategias se mantengan válidas y actualizadas.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de Richard Gil sobre la necesidad y la viabilidad de su enfoque se fundamentan en las siguientes ideas clave:

1. **La Planificación Deliberada de Alto Nivel es Esencial para la Adaptación Óptima y Sostenible, y No Puede Limitarse a Reglas Reactivas (Estrategia vs. Táctica):** La conclusión de que el sistema puede ser guiado hacia un óptimo global se basa en la limitación de enfoques existentes que utilizan solo reglas reactivas o ejecuciones ávidas (_greedy execution_). La clave es utilizar la **Planificación Automatizada** para generar planes deliberados (_strategies_ o estrategias) que anticipen múltiples rutas y consideren el objetivo final, y que estén jerárquicamente construidos a partir de tácticas de adaptación.
2. **La Ingeniería de Sistemas Autoadaptativos Críticos Requiere Integrar Formalismos de la IA (PDDL) para Superar la Opacidad y la Falta de Generalidad:** La conclusión de utilizar PDDL y planificadores _off-the-shelf_ se basa en que la comunidad de **Planificación Automatizada** de la IA es rica en modelos y lenguajes (como PDDL) para abordar la planificación en sistemas dinámicos. Al describir las acciones y el dominio en un lenguaje estándar (PDDL), es posible **automatizar la generación de rutas** y evitar los inconvenientes de las propuestas que están limitadas a una técnica o herramienta única.
3. **La Incertidumbre es Intrínseca a los Sistemas Dinámicos y Debe Incorporarse en el Plan a Través de Probabilidades y Refinamiento en Tiempo de Ejecución:** La conclusión de que los planes deben ser "elásticos" se fundamenta en la **inevitable incertidumbre** al ejecutar acciones de adaptación. Esto se aborda modelando las transiciones del sistema como **pasos probabilísticos** (expert-defined impact and probabilities) en la etapa de ensamblaje. Además, el enfoque se cierra con el **refinamiento _online_** (aprendizaje) de estas probabilidades y funciones de impacto, asegurando que los planes se mantengan actualizados y válidos a medida que el sistema aprende de la experiencia.

---

### Valor del Paper

El artículo **"Automated Planning for Self-Adaptive Systems"** es de gran valor en la ingeniería de sistemas autoadaptativos (SA) y la computación autónoma:

- **Integración Novedosa de Disciplinas:** Su principal contribución, reconocida por el autor, es la **propuesta novedosa de integrar la planificación jerárquica con herramientas de planificación automatizada** de la comunidad de Inteligencia Artificial. Esto permite aprovechar los avances en modelos, lenguajes (PDDL) y planificadores que ya existen.
- **Superación de Limitaciones de la Adaptación Reactiva:** El trabajo ofrece una solución arquitectónica para superar las limitaciones de los sistemas basados en reglas o tácticas, permitiendo la generación de **estrategias deliberadas de alto nivel** que buscan activamente el óptimo global, no solo los óptimos locales.
- **Manejo de la Incertidumbre con Aprendizaje:** La metodología es robusta al integrar el modelado de la incertidumbre (probabilidades) con mecanismos de **aprendizaje en tiempo de ejecución** para refinar los modelos de impacto y las probabilidades de transición. Esto asegura la validez y la actualización continua de los planes en un entorno dinámico.

La propuesta de Gil es como pasar de tener un **piloto automático (el bucle MAPE-K) que solo reacciona a los problemas inmediatos**, a tener un **ingeniero de planificación inteligente a bordo**. Este ingeniero no solo conoce las acciones básicas, sino que utiliza una **gramática formal (PDDL)** para diseñar árboles de decisiones complejos (estrategias) que anticipan el mal tiempo (incertidumbre) y tienen rutas alternativas ya planificadas. Además, este ingeniero aprende continuamente de la experiencia de vuelo (refinamiento _online_), ajustando las probabilidades de que ciertas acciones tengan éxito, lo que hace que la navegación hacia el objetivo sea más segura y eficiente.
