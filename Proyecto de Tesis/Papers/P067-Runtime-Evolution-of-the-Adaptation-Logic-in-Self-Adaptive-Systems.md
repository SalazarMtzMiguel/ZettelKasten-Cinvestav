#CitaLatex 
@INPROCEEDINGS{FelixMaximilian2015RuntimeEvolutionoftheAdaptation,
  author={Roth, Felix Maximilian and Krupitzer, Christian and Becker, Christian},
  booktitle={2015 IEEE International Conference on Autonomic Computing}, 
  title={Runtime Evolution of the Adaptation Logic in Self-Adaptive Systems}, 
  year={2015},
  volume={},
  number={},
  pages={141-142},
  keywords={Adaptation models;Runtime;Computer architecture;Synthetic aperture sonar;Monitoring;Computational modeling;Software;Self-adaptive system;adaptation logic;runtime evolution},
  doi={10.1109/ICAC.2015.20}}

Referencia del archivo original: `(Felix Maximilian Roth) Runtime Evolution of the Adaptation Logic in Self-Adaptive Systems.pdf` [[(Felix Maximilian Roth) Runtime Evolution of the Adaptation Logic in Self-Adaptive Systems.pdf]]

El documento seleccionado es el artículo **"Runtime Evolution of the Adaptation Logic in Self-Adaptive Systems"** (Evolución en Tiempo de Ejecución de la Lógica de Adaptación en Sistemas Auto-Adaptativos), escrito por Felix Maximilian Roth, Christian Krupitzer y Christian Becker.

El artículo aborda la creciente complejidad de los sistemas de información, lo que justifica la necesidad de los Sistemas Auto-Adaptativos (SASs). Aunque gran parte de la investigación se ha centrado en adaptar los recursos gestionados (Managed Resources - MRs), este trabajo se enfoca en la adaptación de la Lógica de Adaptación (Adaptation Logic - AL) misma.

### Resumen Completo del Documento

**1. Contexto y Motivación:** Los Sistemas Auto-Adaptativos (SASs), estrechamente relacionados con la Computación Autonómica (_Autonomic Computing_), son una respuesta al aumento de la complejidad y el tamaño de los sistemas de información. Un SAS puede adaptar su comportamiento a cambios en su contexto o en los recursos del sistema. Estos sistemas consisten en:

- **Recursos Gestionados (MRs):** El _hardware_ o _software_ que realiza la funcionalidad del sistema.
- **Lógica de Adaptación (AL):** El gestor autonómico que controla las adaptaciones e implementa los cambios en los MRs.

Hasta ahora, la mayoría de los investigadores se han centrado en la adaptación de los MRs (ej., para optimizar el rendimiento o recuperarse de defectos). Sin embargo, la adaptación de la AL puede ser necesaria, por ejemplo, si la arquitectura de los MRs cambia o si hay cambios en los objetivos del sistema o el entorno. Pocos trabajos abordan la adaptación de la AL, y el soporte para la co-evolución de los MRs y la AL sigue siendo un desafío.

**2. Estado Actual (_Status Quo_):** Se han realizado pocos enfoques para adaptar la AL en tiempo de ejecución. Los enfoques existentes se centran solo en una razón para la adaptación de la AL:

- **ActivFORMS:** Permite cambiar objetivos del SAS en tiempo de ejecución a través de un módulo de gestión de objetivos.
- **FUSION:** Sintoniza automáticamente la AL ante cambios imprevistos en el entorno, introduciendo un ciclo de aprendizaje para inducir y actualizar el modelo del sistema.
- **KAMI:** Aplica un estimador Bayesiano para la adaptación proactiva, actualizando las probabilidades de transición en tiempo de ejecución.

Estos enfoques se limitan a un solo motivo para la adaptación de la AL, y **no existe un enfoque que combine múltiples razones para la adaptación de la AL y ofrezca una herramienta genérica**.

**3. Metas y Desafíos:** Las metas de la adaptación de la AL pueden ser, por ejemplo, **satisfacer un cierto nivel de calidad** (como calidad de servicio), **reducir el _overhead_ de comunicación** mediante la adaptación estructural de la AL en respuesta a cambios en la estructura de los MRs, o **aumentar el rendimiento**.

Para lograr estos objetivos, se introduce un nuevo componente: el **Adaptation Logic Manager (ALM)**. Los desafíos para implementar el ALM incluyen:

- **Razón de Adaptación:** El ALM debe identificar si la necesidad de adaptación es **explícita** (ej., cambios causados por el usuario, defectos en la AL, o cambios de contexto) o **implícita** (resultante de una adaptación de los MRs).
- **Técnicas de Adaptación:** El ALM debe decidir si se requiere una **adaptación de parámetros** o una **adaptación composicional** (modificación o intercambio de componentes algorítmicos o estructurales).
- **Control de Adaptación:** Se debe elegir entre un ALM **interno** o **externo**. El enfoque externo ofrece mayor independencia y mantenibilidad. También se debe decidir el grado de **(des)centralización** (descentralizado, centralizado o híbrido).

**4. El Enfoque Propuesto (ALM):** Los autores proponen un enfoque para el ALM utilizando una arquitectura específica:

- **Arquitectura Externa y Centralizada:** Se utiliza un **enfoque externo** para el ALM, ya que ofrece mayor mantenibilidad y menor dependencia. Inicialmente se utiliza un enfoque centralizado para simplificar.
- **Bucle MAPE en la Parte Superior:** El ALM se coloca **por encima de la ALs** y consiste en un bucle de retroalimentación **MAPE** (Monitor, Analyze, Plan, Execute). Para este bucle, **la AL representa el elemento gestionado**.
- **Componente de Predicción:** Se introduce un componente de **predicción** responsable de buscar continuamente estados no descubiertos utilizando modelos de la AL. Esto permite calcular configuraciones adecuadas _antes de tiempo_ para estados desconocidos pero predichos.
- **Proxies (Proxy ALM):** Para recopilar información e implementar cambios en la AL, se utilizan **proxies (Proxy ALM)**. Un Proxy ALM está conectado a los componentes MAPE de la AL y a los componentes Monitor (M) y Execute (E) del ALM. Esto permite al Proxy ALM notificar al ALM sobre adaptaciones de nivel inferior (adaptaciones de los MRs).

**5. Actividades Actuales y Futuras:** Actualmente, los autores están derivando requisitos basados en escenarios y planean diseñar e implementar el ALM para evaluar su factibilidad. El trabajo futuro incluye:

- Diseñar elementos y procedimientos de AL **reutilizables**.
- Implementar un prototipo de la infraestructura del sistema y especificar interfaces para una fácil integración del ALM en marcos existentes (ej., FESAS ).
- Abordar la cuestión abierta de qué **criterios de decisión** son adecuados (basados en políticas, modelos, objetivos o utilidad), ya que el método adecuado depende del caso de uso específico.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad y viabilidad de adaptar la Lógica de Adaptación (AL) se fundamentan en las siguientes ideas clave:

1. **La Lógica de Adaptación (AL) No es Estática y Debe Co-Evolucionar con los Recursos Gestionados (MRs):** La conclusión de que la AL necesita adaptación se basa en la motivación de que los **cambios en la estructura de los MRs** (ej., replicación de un componente en un entorno _cloud_) o en los objetivos del sistema requieren una **modificación en la forma en que la AL toma decisiones** sobre la gestión de esos MRs.
2. **El Bucle MAPE Jerárquico Resuelve el Problema de la Meta-Adaptación:** La conclusión de que la adaptación de la AL es factible se fundamenta en la propuesta de **aplicar un segundo bucle MAPE (el ALM) por encima de la ALs**, tratando a la AL como un elemento gestionado. Este enfoque permite **reutilizar la estructura** de los componentes de la AL, solo ajustando los algoritmos.
3. **La Centralización y el Enfoque Externo Aumentan la Mantenibilidad:** La elección arquitectónica para el ALM (centralizado y externo) se fundamenta en los beneficios de diseño. El enfoque **externo** reduce la dependencia y ofrece **mayor mantenibilidad**, y aunque un enfoque centralizado podría generar un cuello de botella, evita el **alto _overhead_ de coordinación** de los enfoques descentralizados.
4. **La Predicción Proactiva es Crucial para Manejar Estados No Descubiertos:** La conclusión de que el sistema debe ser proactivo se basa en la idea de que la **introducción de un componente de predicción** puede identificar estados del sistema desconocidos _antes de que ocurran_, permitiendo que el componente de planificación solicite configuraciones precalculadas _adelantadas_ a ese momento.

---

### Valor del Paper

El valor del artículo "Runtime Evolution of the Adaptation Logic in Self-Adaptive Systems" es significativo por abordar una limitación fundamental en la investigación de sistemas auto-adaptativos:

- **Definición de un Desafío Crítico:** El _paper_ aporta valor al formalizar y priorizar la necesidad de la **co-evolución de la Lógica de Adaptación (AL) y los Recursos Gestionados (MRs)**, destacando que los enfoques existentes son limitados y que el campo carece de una herramienta genérica que combine múltiples razones para la adaptación.
- **Marco Arquitectónico para la Meta-Adaptación:** El valor principal es la propuesta de la arquitectura conceptual del **Adaptation Logic Manager (ALM)**, que implementa un **bucle MAPE jerárquico**. Este marco proporciona una solución concreta para el problema de la adaptación de la AL, permitiendo que la "lógica que controla la adaptación se adapte a sí misma".
- **Abordaje Explícito de la Proactividad:** Al integrar un **componente de predicción** y la necesidad de **proxies** para la monitorización de la AL, el trabajo ofrece una hoja de ruta para construir sistemas de adaptación que no solo reaccionan a los cambios, sino que se preparan para ellos.

El valor de este trabajo es que funciona como un **"metacontrolador"** que supervisa la eficiencia del controlador primario (la AL). Si el controlador primario falla o si el entorno o los objetivos cambian (como cuando un robot maestro falla y hay que elegir uno nuevo), el ALM puede **reprogramar o reestructurar dinámicamente** el controlador primario para asegurar que el sistema siga funcionando de manera óptima.
