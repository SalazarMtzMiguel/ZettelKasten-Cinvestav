#CitaLatex 
@inproceedings{Brand2019GenericAdaptive,
  title = {Generic Adaptive Monitoring Based on Executed Architecture Runtime Model Queries and Events},
  url = {http://dx.doi.org/10.1109/SASO.2019.00012},
  DOI = {10.1109/saso.2019.00012},
  booktitle = {2019 IEEE 13th International Conference on Self-Adaptive and Self-Organizing Systems (SASO)},
  publisher = {IEEE},
  author = {Brand,  Thomas and Giese,  Holger},
  year = {2019},
  month = jun,
  pages = {17–22}
}

Referencia del archivo original: `(Thomas Brand) Generic Adaptive Monitoring Based on Executed Architecture Runtime Model Queries and Events.pdf` [[(Thomas Brand) Generic Adaptive Monitoring Based on Executed Architecture Runtime Model Queries and Events.pdf]]

El documento seleccionado es el artículo **"Generic Adaptive Monitoring Based on Executed Architecture Runtime Model Queries and Events"** (Monitoreo Adaptativo Genérico Basado en Consultas y Eventos del Modelo de Tiempo de Ejecución de la Arquitectura), escrito por Thomas Brand y Holger Giese.

Este estudio propone un enfoque de **monitoreo adaptativo genérico** diseñado para sistemas autoadaptativos (SASO), con el fin de resolver el dilema entre la necesidad de un monitoreo exhaustivo y el alto consumo de recursos (económicos y ecológicos) que esto conlleva.

### Resumen Completo del Documento

**1. Problema Central (Eficiencia vs. Efectividad):** Los sistemas autoadaptativos requieren información relevante y oportuna para la toma de decisiones. Sin embargo, los métodos de monitoreo tradicionales son exhaustivos, lo que genera un alto consumo de recursos. La complejidad aumenta porque la información relevante requerida (la "demanda de información") y el propio sistema monitoreado cambian con el tiempo. La adaptación de estos mecanismos debe ser automatizada y fina, pero las soluciones genéricas para el monitoreo adaptativo son escasas en la literatura.

**2. Solución Propuesta (Monitoreo Adaptativo Genérico):** Los autores proponen un enfoque de monitoreo adaptativo genérico que incrementa la **eficiencia** mientras mantiene la **efectividad** (detección de fenómenos relevantes a tiempo).

- **Mecanismo de Adaptación:** El enfoque observa las **ejecuciones de consultas** (_queries_) que se realizan contra el **modelo de tiempo de ejecución de la arquitectura** (_architecture runtime model_). Este modelo es una representación abstracta y conectada causalmente del sistema en ejecución, que actúa como una base de conocimiento para el sistema autoadaptativo.
- **Determinación de la Demanda de Información:** Al observar qué **propiedades monitoreables** (_monitorable properties_) son accedidas durante la ejecución de una consulta, el enfoque determina la demanda de información actual y **adapta la configuración de monitoreo en consecuencia**.
- **Adaptación sin Esfuerzo Adicional:** El sistema se adapta a los cambios en la demanda de información y en la estructura del sistema **sin necesidad de configuración o implementación de _software_ adicional**.

**3. Conceptos Clave del Monitoreo Adaptativo:** Cuando el monitoreo es adaptativo, las consultas activan el monitoreo para las propiedades monitoreables **bajo demanda**.

- **Manejo de Resultados Preliminares:** Si una consulta se ejecuta y requiere un resultado de monitoreo que aún no está disponible (ej., se usa un valor predefinido o _default_), el sistema proporciona un **resultado preliminar**. Esto permite que la ejecución de la consulta continúe, activando el monitoreo para otras propiedades monitoreables.
- **Reducción del Tiempo de Activación:** El uso de resultados preliminares reduce el número de ejecuciones sucesivas de consultas necesarias para producir un resultado válido, acortando así el **tiempo de activación del monitoreo** (_monitoring activation time_).

**4. Posibilidades de Uso y Equilibrio (Effort vs. Time):** El enfoque ofrece diferentes posibilidades de uso (regular vs. adaptativo, periódico vs. impulsado por eventos) que permiten equilibrar el **Esfuerzo de Monitoreo (ME)** y el **Tiempo de Detección de Fenómenos (PDT)**.

- **Monitoreo Regular:** El monitoreo se activa permanentemente e inmediatamente. Proporciona un PDT más corto, pero un ME más alto.
- **Monitoreo Adaptativo Genérico:** La activación ocurre bajo demanda. El ME es menor, pero el PDT puede ser más largo, ya que pueden requerirse múltiples ejecuciones de consultas para obtener un resultado válido.
- **Evaluación _Short-Circuit_:** El uso de la evaluación _short-circuit_ (donde solo se accede a las propiedades que pueden influir en el resultado) puede evitar la sobrecarga innecesaria de monitoreo, aunque podría prolongar el PDT debido a la activación iterativa.

**5. Evaluación Empírica:** Los experimentos controlados demuestran que el enfoque adaptativo genérico puede **reducir significativamente el esfuerzo de monitoreo (ME)**.

- El esfuerzo de monitoreo para las posibilidades de monitoreo adaptativo genérico (periódico y por eventos) es **claramente inferior** al esfuerzo requerido por el monitoreo regular, y esta diferencia se hace más evidente a medida que aumenta el tamaño del modelo en tiempo de ejecución o el período de consideración.
- El monitoreo impulsado por eventos (adaptativo o regular) puede ahorrar cantidades significativas de esfuerzo de ejecución de consultas (_query execution effort_), especialmente a largo plazo.

**6. Conclusión:** El monitoreo adaptativo genérico reduce significativamente el esfuerzo de monitoreo y es independiente del propósito de monitoreo. Permite a los sistemas autoadaptativos equilibrar el esfuerzo de monitoreo y el tiempo de detección de fenómenos, lo que lo convierte en una opción interesante ya que los fenómenos de muy corta duración generalmente no son relevantes para las adaptaciones del sistema.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez y la utilidad del monitoreo adaptativo genérico se fundamentan en las siguientes ideas clave:

1. **La Sostenibilidad del Sistema Autoadaptativo Requiere una Adaptación Fina y Automatizada de las Tareas de Monitoreo:** La conclusión de que el sistema reduce el esfuerzo de monitoreo se basa en que el **monitoreo exhaustivo consume excesivamente recursos** económicos y ecológicos. Además, dado que los requisitos de información y el sistema cambian dinámicamente, la adaptación manual no es factible. Por lo tanto, el monitoreo debe adaptarse automáticamente para mantener la efectividad.
2. **El Modelo de Tiempo de Ejecución de la Arquitectura (ARM) es el Punto de Anclaje Genérico para Derivar la Demanda de Información Actual:** La conclusión sobre la naturaleza genérica y sin configuración del enfoque se fundamenta en el uso del ARM. La **observación de las ejecuciones de consultas** que acceden a propiedades monitoreables en el ARM permite al sistema determinar qué información es relevante en un momento dado. Este enfoque **inherentemente se adapta a los cambios estructurales** del sistema debido a la conexión causal entre el modelo de tiempo de ejecución y el sistema en funcionamiento.
3. **La Adaptación Bajo Demanda (On-Demand) y la Generalización del Monitoreo Permiten el Equilibrio Estratégico entre el Esfuerzo y el Tiempo de Detección:** La conclusión sobre la capacidad de equilibrar la eficiencia y la efectividad se basa en la flexibilidad del enfoque. El monitoreo se activa **solo cuando lo requieren las consultas**. El estudio demuestra que la flexibilidad para elegir entre modos (periódico, por eventos) y técnicas de evaluación (_short-circuit_ o estándar) permite al diseñador elegir la configuración que mejor equilibre el **Esfuerzo de Monitoreo (ME)** (que se reduce significativamente) y el **Tiempo de Detección de Fenómenos (PDT)** para los fenómenos que no son de muy corta duración.

---

### Valor del Paper

El artículo **"Generic Adaptive Monitoring Based on Executed Architecture Runtime Model Queries and Events"** posee un valor significativo para la investigación en sistemas autoadaptativos y la ingeniería de _software_ de la siguiente manera:

- **Solución a una Brecha de Investigación:** Aborda directamente la falta de **soluciones genéricas** de monitoreo adaptativo, un área identificada como una oportunidad de investigación importante. El enfoque propuesto es **reutilizable en diferentes contextos** sin un esfuerzo significativo de desarrollo y configuración.
- **Integración Novedosa de Arquitectura y Monitoreo:** El trabajo es notable porque, a diferencia de otros enfoques, **utiliza el modelo de tiempo de ejecución de la arquitectura (ARM) para derivar la configuración de monitoreo** a partir de las consultas observadas. Esto permite que el sistema se adapte sin un motor de adaptación de nivel superior o configuración adicional, simplificando el diseño.
- **Validación Cuantitativa de la Eficiencia:** Mediante experimentos controlados, los autores validan empíricamente su afirmación, demostrando que el enfoque adaptativo genérico **reduce significativamente el esfuerzo de monitoreo** en comparación con el monitoreo regular, especialmente en escenarios de gran escala o larga duración.

El monitoreo adaptativo genérico es como un **vigilante en una fábrica que aprende a ignorar el ruido de fondo constante (monitoreo regular exhaustivo) y se enfoca solo en las alertas activadas por las preguntas de los gerentes (ejecuciones de consultas)**. Si un gerente pregunta si la línea de producción 3 tiene un problema (una consulta), el vigilante no monitorea todas las cámaras y sensores de la fábrica constantemente, sino que solo activa las cámaras y sensores relevantes para la línea 3 en ese momento. Esto reduce masivamente el consumo de energía y datos (esfuerzo de monitoreo) sin sacrificar la capacidad de detectar problemas importantes a tiempo.
