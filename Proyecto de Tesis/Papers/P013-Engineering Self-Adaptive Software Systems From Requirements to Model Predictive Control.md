#CitaLatex 
@article{angelopoulosEngineeringSelfAdaptiveSoftware2018,
			title = {Engineering {{Self-Adaptive Software Systems}}: {{From Requirements}} to {{Model Predictive Control}}},
			author = {Angelopoulos, Konstantinos and Papadopoulos, Alessandro V. and Souza, Vitor E. Silva and Mylopoulos, John},
			date = {2018-05-01},
			journaltitle = {ACM TRANSACTIONS ON AUTONOMOUS AND ADAPTIVE SYSTEMS},
			shortjournal = {ACM TRANSACTIONS ON AUTONOMOUS AND ADAPTIVE SYSTEMS},
			volume = {13},
			number = {1},
			pages = {1},
			issn = {15564665},
			doi = {10.1145/3105748},
			url = {https://research.ebsco.com/linkprocessor/plink?id=31d0737e-3a57-3e67-9f4c-9740d89a1efc},
			langid = {english},
			keywords = {awareness requirements,model predictive control,Self-adaptive systems}
		}
Lectura basada en el paper: [[(Konstantinos A.) Engineering Self-Adaptive Software Systems From Requirements to Model Predictive Control.pdf]]


### Resumen del Paper: "Ingeniería de Sistemas de Software Autoadaptativos: Desde los Requisitos hasta el Control Predictivo Basado en Modelo"

El artículo propone un marco de trabajo para diseñar sistemas de software autoadaptativos, es decir, sistemas que monitorean su propio funcionamiento y se adaptan cuando sus requisitos no se cumplen debido a cambios inesperados en su entorno. La principal contribución es el uso de una técnica de la teoría de control llamada **Control Predictivo Basado en Modelo (MPC)** para gestionar estas adaptaciones de manera proactiva y óptima, especialmente cuando el sistema tiene múltiples objetivos que pueden entrar en conflicto.

---

### 1. El Problema: Adaptación en Entornos Dinámicos

Los sistemas de software autoadaptativos deben operar en entornos que cambian constantemente (por ejemplo, alta carga de trabajo, comportamiento inesperado del usuario) y cumplir con múltiples objetivos a la vez. El gran desafío es que una estrategia de adaptación que soluciona un problema puede empeorar otro.

- **Ejemplo:** En una tienda online (E-Shop), para mejorar el **tiempo de respuesta** (un objetivo) bajo alta carga, se podrían deshabilitar los videos de los productos. Sin embargo, esto podría reducir el **número de ventas** (otro objetivo), ya que los clientes prefieren ver contenido multimedia. Las adaptaciones reactivas, que actúan solo cuando el fallo ya ha ocurrido, no suelen anticipar estos conflictos ni planificar a futuro.

### 2. La Solución: Control Predictivo Basado en Modelo (MPC)

Para resolver este problema, los autores proponen un marco llamado **CobRA (COntrol-Based Requirements-oriented Adaptation)**, que integra la ingeniería de requisitos con el MPC.

El MPC funciona de la siguiente manera:

1. **Usa un modelo matemático** para predecir cómo se comportará el sistema en el futuro cercano (un "horizonte de predicción").
2. **Calcula un plan de adaptación óptimo**: Busca la mejor secuencia de acciones (ajustes en los "parámetros de control") para que el sistema alcance sus objetivos, minimizando una "función de costo". Esta función de costo considera tanto el error (qué tan lejos está el sistema de sus metas) como el "esfuerzo" de realizar la adaptación.
3. **Aplica solo el primer paso del plan**: Después, vuelve a medir el estado del sistema, recalcula un nuevo plan desde cero y repite el proceso. Esto se llama "principio de horizonte deslizante" y hace que el sistema sea robusto frente a predicciones imperfectas o cambios inesperados.

- **Ejemplo (Meeting Scheduler):** Un sistema para agendar reuniones debe mantener los **costos bajos** y asegurar una **alta participación**. Si el sistema predice que en los próximos días habrá muchas solicitudes de reuniones, el MPC puede crear un plan: "aumentar gradualmente el número de salas locales (más baratas) y enviar más recordatorios para asegurar la participación". Solo aplica la acción del primer día, y al día siguiente vuelve a evaluar la situación con datos actualizados para generar un nuevo plan.

### 3. Conceptos Clave del Marco CobRA

El marco se basa en modelar formalmente los requisitos y la dinámica del sistema.

#### **a. Ingeniería de Requisitos Orientada a Objetivos (GORE)**

- **Goals y Soft Goals (Objetivos y Objetivos Flexibles):** Se usan para capturar los requisitos funcionales (e.g., "Agendar Reunión") y no funcionales (e.g., "Bajo Costo").
- **Awareness Requirements (AwReqs - Requisitos de Conciencia):** Son la clave para el monitoreo. Definen una restricción que, si se viola, dispara la adaptación. Cada AwReq se asocia a una variable medible llamada **indicador**.
    - **Ejemplo (Meeting Scheduler):** Un AwReq podría ser "La participación en las reuniones debe ser al menos del 80%" (`AR4`). El indicador asociado (`I4`) mediría el porcentaje de participación real.
- **Optimization AwReqs (AwReqs de Optimización):** Una contribución importante del paper. Se usan para objetivos que no tienen un umbral fijo, como "maximizar las ventas" o "minimizar el tiempo de respuesta". El sistema intentará continuamente mejorar el indicador asociado, buscando el valor óptimo (e.g., costo cero).
- **Parámetros de Control y Ambientales:** El sistema puede modificar los **parámetros de control** (e.g., número de servidores, número de recordatorios enviados) para influir en los indicadores. No puede cambiar los **parámetros ambientales** (e.g., número de usuarios concurrentes, disponibilidad de los participantes).
- **Evolution Requirements (EvoReqs):** Permiten que los propios requisitos cambien bajo ciertas condiciones.
    - **Ejemplo:** El objetivo de costo para reservar salas de hotel puede ser más flexible (relajarse) durante la temporada alta de verano, cuando los precios son más altos, y volver a ser estricto cuando termina la temporada.

#### **b. Modelado Dinámico del Sistema**

El corazón del MPC es un **modelo matemático cuantitativo** que describe la relación dinámica entre los parámetros de control (entradas) y los indicadores (salidas). Este modelo se obtiene automáticamente usando técnicas de **identificación de sistemas**, analizando datos de una simulación o logs históricos del sistema.

- **Ventaja:** Este modelo puede capturar relaciones complejas e inesperadas que un experto humano podría no conocer. Por ejemplo, puede descubrir que aumentar el número de recordatorios (`NoR`) no solo mejora la participación (`I4`), sino que también aumenta ligeramente el costo (`I1`).

#### **c. El Controlador MPC y el Filtro de Kalman**

- **MPC Controller:** Utiliza el modelo dinámico para resolver un problema de optimización en cada paso, encontrando los ajustes óptimos para los parámetros de control. Las prioridades entre objetivos en conflicto se gestionan asignando **pesos** en la función de costo. Un objetivo más importante tendrá un peso mayor.
    - **Ejemplo (E-Shop):** Si minimizar el tiempo de respuesta (`AR7`) es más importante (tiene más peso) que minimizar el costo operativo (`AR6`), cuando el tráfico aumente, el controlador preferirá añadir más servidores (aumentando el costo) para mantener el rendimiento.
- **Filtro de Kalman:** Es un componente de aprendizaje que refina el modelo dinámico en tiempo de ejecución. Compara las predicciones del modelo con las mediciones reales y corrige el modelo para hacerlo más preciso, adaptándose a comportamientos no lineales o cambios en la dinámica del sistema.

### 4. Evaluación y Comparación con Zanshin

Los autores evalúan CobRA simulando dos sistemas (un agendador de reuniones y una tienda online) y lo comparan con **Zanshin**, otro marco de adaptación basado en requisitos que utiliza modelos **cualitativos** (basados en la experiencia humana, como "aumentar X mejora Y").

- **Resultados:** **CobRA superó a Zanshin en la mayoría de los casos**. Logró recuperarse más rápido de los fallos, mantuvo un mejor equilibrio entre requisitos en conflicto y minimizó de manera más efectiva la función de costo global. La razón es que el modelo cuantitativo y la planificación predictiva del MPC permiten adaptaciones más precisas y proactivas que las basadas únicamente en la heurística de un experto.

### Conclusión

Este paper es muy relevante porque aborda de manera robusta y formal el problema de la autoadaptación en sistemas con múltiples objetivos en conflicto.

- **Ideas clave:**
    - **Unión de Ingeniería de Requisitos y Teoría de Control:** Proporciona un método sistemático para traducir objetivos de alto nivel (requisitos) en un problema de control formal que puede ser resuelto óptimamente.
    - **Adaptación Proactiva y Óptima:** En lugar de reaccionar a fallos, el MPC se anticipa a ellos y planifica una secuencia de acciones para encontrar el mejor equilibrio (trade-off) entre objetivos.
    - **Modelo Cuantitativo y Aprendizaje Automático:** El uso de un modelo dinámico derivado de datos (y no de la intuición) y un filtro de Kalman para el aprendizaje continuo hace que el enfoque sea más preciso y robusto a las no linealidades y a los cambios en el entorno.
    - **Manejo de Objetivos de Optimización:** Extiende el enfoque para manejar no solo umbrales fijos sino también la optimización continua de métricas (e.g., maximizar ingresos).

Este enfoque representa un avance significativo sobre las técnicas de adaptación puramente reactivas o basadas en reglas heurísticas, ofreciendo un camino para construir sistemas autónomos con garantías formales sobre su comportamiento adaptativo.