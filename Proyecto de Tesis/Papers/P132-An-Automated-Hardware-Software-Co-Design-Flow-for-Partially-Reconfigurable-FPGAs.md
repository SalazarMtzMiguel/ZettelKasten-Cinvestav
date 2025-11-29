@inproceedings{Yousuf2016AnAutomated,
  title = {An Automated Hardware/Software Co-Design Flow for Partially Reconfigurable FPGAs},
  url = {http://dx.doi.org/10.1109/ISVLSI.2016.73},
  DOI = {10.1109/isvlsi.2016.73},
  booktitle = {2016 IEEE Computer Society Annual Symposium on VLSI (ISVLSI)},
  publisher = {IEEE},
  author = {Yousuf,  Shaon and Gordon-Ross,  Ann},
  year = {2016},
  month = jul,
  pages = {30–35}
}

Referencia del archivo original: `(Shaon Yousuf) An Automated Hardware Software Co-Design Flow for Partially Reconfigurable FPGAs.pdf` [[(Shaon Yousuf) An Automated Hardware Software Co-Design Flow for Partially Reconfigurable FPGAs.pdf]]

El documento seleccionado es el artículo de investigación **"An Automated Hardware Software Co-Design Flow for Partially Reconfigurable FPGAs"** (Un Flujo Automatizado de Codiseño _Hardware-Software_ para FPGAs Parcialmente Reconfigurables), escrito por Shaon Yousuf y Ann Gordon-Ross.

Este trabajo presenta un flujo de diseño automatizado denominado **DAPR** (_Design Automation for Partial Reconfiguration_). El objetivo principal de DAPR es eliminar la necesidad de que los diseñadores estén familiarizados con las complejidades de bajo nivel de la reconfiguración parcial (PR) en FPGAs, automatizando dos pasos críticos en el codiseño _hardware-software_ (HW/SW): la **partición HW/SW PR** y la **planificación física PR (_PR floorplanning_)**.

### Resumen Completo del Documento

**1. Problema y Motivación (La Barrera de la Reconfiguración Parcial):** La Reconfiguración Parcial (PR) en FPGAs ofrece beneficios significativos como la reducción de recursos de _hardware_ (HW), de potencia y de requisitos de memoria, al permitir la recarga o descarga de tareas de la aplicación de forma aislada, manteniendo el resto del sistema operacional. Además, las FPGAs modernas a menudo incluyen procesadores de _software_ (SW), lo que permite sistemas de codiseño HW/SW, reduciendo aún más los requisitos de HW.

Sin embargo, el aprovechamiento completo de estos beneficios requiere un amplio conocimiento del flujo de diseño de PR y de los detalles arquitectónicos de bajo nivel de la FPGA objetivo, lo que ha limitado su uso generalizado. El proceso de diseño es **arduo**, ya que implica la exploración manual de un espacio de diseño extremadamente grande tanto para la partición HW/SW PR como para la planificación física PR. La investigación existente aborda estos pasos independientemente, sin proporcionar una solución integral y holística.

**2. El Flujo de Diseño DAPR Propuesto:** El DAPR es un flujo de diseño que automatiza las tareas críticas de rendimiento y recursos que tradicionalmente se realizaban manualmente.

- **Partición HW/SW PR:** Esta fase inicial tiene como objetivo optimizar los **requisitos de recursos de HW y el tiempo de reconfiguración**.
    - _Análisis Inicial (Input Parameters):_ DAPR comienza con un análisis de la aplicación modularizada para determinar tres parámetros clave para cada tarea $i$: requisitos de recursos de HW ($RR_i$), tiempo de reconfiguración de HW ($TR_i$), y tiempo de ejecución de HW o SW ($CI_i$).
    - _Algoritmo de Búsqueda Exhaustiva:_ DAPR utiliza un algoritmo de búsqueda exhaustiva que, apalancándose en la **recursión de Bell**, enumera **todas las posibles particiones HW/SW PR** para cada configuración de la aplicación.
    - _Resultados para el Diseñador:_ Al finalizar, el algoritmo genera una lista de todas las particiones posibles junto con sus requisitos de recursos asociados, tiempos de reconfiguración y tiempos de ejecución. Esto permite al diseñador elegir rápidamente una partición que se alinee con sus objetivos (ej. bajo uso de recursos y tiempo de reconfiguración).
- **Planificación Física PR (_PR Floorplanning_):** Esta fase tiene como objetivo optimizar la **frecuencia de reloj** de la partición elegida.
    - _Algoritmo SA-Basado:_ DAPR mejora la frecuencia de reloj utilizando un algoritmo basado en **Recocido Simulado (_Simulated Annealing_, SA)**.
    - _Perturbación:_ El algoritmo SA-basado itera, perturbando la planificación física de las regiones reconfigurables (PRRs) o la planificación física de los pines de partición (_partition pins_). Se prioriza la perturbación de los PRRs, ya que tienen un mayor impacto en la frecuencia de reloj general.
    - _Resultado:_ El proceso continúa hasta que se cumplen los objetivos de frecuencia de reloj del diseñador o se alcanza un número especificado de iteraciones. En el estudio, este método mejoró la frecuencia de reloj en aproximadamente un **10%** en un promedio de 12-20 iteraciones exitosas.

**3. Evaluación (Caso de Estudio JPEG CODEC):** DAPR fue evaluado utilizando una aplicación **JPEG CODEC** (Codificador y Decodificador).

- **Aplicación:** El JPEG CODEC se dividió en dos configuraciones funcionales equivalentes (codificador y decodificador), cada una con siete tareas.
- **Plataforma de Destino:** La evaluación se ejecutó en una arquitectura **VAPRES** con un procesador MicroBlaze en una FPGA Virtex-5 LX110T.
- **Resultados de la Partición:** El análisis exhaustivo de particiones demostró que hay una multitud de particiones funcionales equivalentes. La herramienta DAPR permitió a los diseñadores evaluar de manera integral los _trade-offs_ entre requisitos de recursos, tiempo de reconfiguración y tiempo de ejecución total del sistema.
- **Resultados de la Planificación Física:** Aplicando el algoritmo SA-basado a la partición elegida, el estudio mostró que las mayores mejoras en la frecuencia de reloj se lograron durante las primeras 12-20 iteraciones.

**4. Conclusiones y Contribuciones:** DAPR proporciona una solución holística e integrada que realiza tanto la partición HW/SW PR como la planificación física PR.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre el valor de DAPR y su capacidad para transformar el diseño de PR se fundamentan en las siguientes ideas clave:

1. **La Explosión del Espacio de Diseño en PR Hace que el Proceso Manual sea Inviable, Requeriendo Automatización Integral:** La conclusión de que los diseñadores necesitan asistencia automatizada se basa en que tanto la partición HW/SW PR como la planificación física PR involucran un **espacio de diseño extremadamente grande** de particiones y configuraciones funcionalmente equivalentes, lo que hace que la exploración manual sea difícil y engorrosa. La automatización total de **ambos pasos** (partición y planificación física) es necesaria para proporcionar una solución holística.
2. **El Diseño Óptimo Requiere la Evaluación Exhaustiva de _Trade-offs_ de Múltiples Parámetros:** La conclusión sobre la elección informada del diseñador se fundamenta en la capacidad de DAPR para modelar y calcular cuatro métricas críticas para **todas** las particiones posibles de forma rápida: **requisitos de recursos, tiempo de reconfiguración y tiempo de ejecución HW/SW**. Esto permite al diseñador elegir una partición que equilibre múltiples objetivos, mientras que el uso de la recursión de Bell garantiza la exhaustividad.
3. **La Optimización Secuencial (Partición para Recursos/Tiempo, Floorplanning para Frecuencia de Reloj) es Estratégica para el Rendimiento:** La conclusión de que DAPR es eficiente se fundamenta en la estrategia de optimización de dos pasos: la **partición** se enfoca en optimizar los **recursos y el tiempo de reconfiguración**, mientras que la **planificación física** se enfoca en optimizar la **frecuencia de reloj**. Además, el uso de un algoritmo SA-basado para la planificación física permite una mejora significativa (aprox. 10%) en la frecuencia de reloj, que es crucial para el rendimiento final.

---

### Valor del Paper

El artículo **"An Automated Hardware Software Co-Design Flow for Partially Reconfigurable FPGAs"** es altamente valioso para el campo de los sistemas embebidos y la ingeniería de FPGAs por las siguientes razones:

- **Solución Holística e Integrada:** Es el primer esfuerzo conocido que aborda y **automatiza completamente** tanto la partición HW/SW PR como la planificación física PR en un **flujo de diseño integrado**. Esto resuelve el problema de las soluciones parciales de trabajos anteriores.
- **Democratización de la Tecnología PR:** DAPR reduce significativamente el esfuerzo manual y elimina la necesidad de que los diseñadores conozcan los detalles complejos de bajo nivel de la FPGA. Esto hace que la Reconfiguración Parcial sea **más accesible** para una gama más amplia de diseñadores, facilitando el prototipado rápido y la creación de sistemas de alto rendimiento.
- **Validación de la Eficiencia:** La validación con el caso de estudio JPEG CODEC y los resultados numéricos (ej., mejora del 10% en la frecuencia de reloj en pocas iteraciones) demuestran empíricamente la **viabilidad y eficiencia** del enfoque SA-basado en la planificación física.
