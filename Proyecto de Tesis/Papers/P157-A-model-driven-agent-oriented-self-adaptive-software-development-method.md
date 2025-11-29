#CitaLatex 
@INPROCEEDINGS{YiweiLei2015Amodeldriven,
  author={Yiwei Lei and Kerong Ben and Zhiyong He},
  booktitle={2015 12th International Conference on Fuzzy Systems and Knowledge Discovery (FSKD)}, 
  title={A model driven agent-oriented self-adaptive software development method}, 
  year={2015},
  volume={},
  number={},
  pages={2242-2246},
  keywords={Adaptation models;Fires;Software;Context;Unified modeling language;Object oriented modeling;Context modeling;model-driven development;self-adaptive software;BDI agent;model transformation},
  doi={10.1109/FSKD.2015.7382301}}


Referencia del archivo original: `(Yiwei Lei) A model driven agent-oriented self-adaptive software development method.pdf` [[(Yiwei Lei) A model driven agent-oriented self-adaptive software development method.pdf]]

El documento seleccionado para el análisis es el artículo **"A Model Driven Agent-Oriented Self-Adaptive Software Development Method"** (Un Método de Desarrollo de _Software_ Autoadaptativo Orientado a Agentes y Dirigido por Modelos), escrito por Yiwei Lei, Kerong Ben, y Zhiyong He.

Este trabajo presenta un **método de desarrollo de _software_ autoadaptativo dirigido por modelos y orientado a agentes**. El objetivo es abordar los desafíos que enfrentan los métodos tradicionales de desarrollo de _software_ cuando se ejecutan en entornos dinámicos y abiertos, donde el _software_ debe adaptarse autónomamente a contextos cambiantes.

### Resumen Completo del Documento

**1. Problema y Limitaciones de los Métodos Existentes:** Los sistemas autoadaptativos (SAS) deben adaptarse autónomamente a los entornos cambiantes sin intervención manual, lo que reduce el costo de mantenimiento y mejora la confiabilidad. El desarrollo de SAS requiere que los desarrolladores predigan las probables condiciones del contexto externo y las condiciones de eventos internos para especificar las variaciones de los requisitos.

- **Limitaciones del Modelado de Requisitos (GORM):** El modelado de requisitos orientado a objetivos (GORM), como el modelo Tropos, no es capaz de modelar completamente los requisitos de _software_ adaptativo debido a su incapacidad para especificar condiciones de contexto. Las extensiones existentes (GORM extendido por contexto) tampoco son capaces de modelar requisitos de tolerancia a fallas autoadaptativas debido a la falta de condiciones de eventos internos del _software_.
- **Limitaciones del Diseño (Control Centralizado):** Muchos métodos de diseño adoptan un patrón de control centralizado, que requiere conocer todos los estados del sistema. Debido a la creciente complejidad del sistema, a veces es difícil obtener un estado global.

**2. Solución Propuesta (Modelo Dirigido + Agentes BDI):** Los autores proponen un método integral de tres fases para el desarrollo de SAS:

**A. Fase de Análisis de Requisitos (Extensión del Modelo Tropos):** Para especificar los requisitos de _software_ adaptativo, se **extiende el modelo de objetivos Tropos original**. La extensión incorpora:

- **Condiciones de Contexto Externo:** Determinan cuándo se debe adoptar un objetivo.
- **Condiciones de Eventos Internos:** Incluyen condiciones de falla (_failure conditions_).
- **Tipos de Objetivos Extendidos:** Los objetivos se extienden a **Perform goal** (solo necesita realizar tareas adjuntas), **Achieve goal** (define estados objetivo que deben alcanzarse, pero no especifica tareas particulares) y **Maintain goal** (debe permanecer en el estado logrado hasta que la condición de mantenimiento sea inválida).
- **Condiciones de Objetivos Extendidas:** Se asocian condiciones de creación, abandono, falla, y objetivo (_create, drop, failure, target conditions_) con los diferentes tipos de objetivos, lo que permite al modelo extendido especificar los requisitos de _software_ adaptativo.

**B. Fase de Diseño de la Arquitectura (Transformación de Modelos):** El método dirigido por modelos (_model-driven development_) permite una transformación autonómica desde el modelo de requisitos al modelo de diseño, lo que **cierra la brecha** entre ambos. La tecnología orientada a agentes emplea **agentes autonómicos y cooperativos** para implementar un modo de **control descentralizado**.

- **Modelo de Agente BDI Extendido:** Para evitar la pérdida de información durante la transformación del modelo Tropos extendido, se **extiende el modelo de Agente BDI** (Creencias, Deseos e Intenciones).
    - **Creencias (_Belief_):** Representan la información del contexto y los estados internos.
    - **Objetivos (_Goal_):** Representan las intenciones del agente.
    - **Plan (_Plan_):** Representa las acciones para lograr un objetivo.
    - **Extensiones:** Se extiende el BDI refiriéndose al modelo Tropos (ej., añadiendo elementos para manejar descomposiciones, enlaces de dependencia y enlaces de contribución).
- **Transformación de Modelos:** Se proporciona una solución para mapear el modelo de requisitos (Tropos extendido) al modelo de diseño (BDI extendido).
    - Las descomposiciones **AND/OR** en Tropos se transforman en **agentes de delegación** (ANDDelegationAgent/ORDelegationAgent) para modelar la relación de organización entre agentes.
    - El **means-end** de Tropos se transforma en la relación de logro entre objetivos y planes, y el **enlace de contribución** se transforma en la **utilidad** en el modelo BDI, que sirve como criterio de selección de planes.
    - Las dependencias de Tropos se transforman en una **relación cooperativa** entre agentes.

**C. Fase de Implementación (Plataforma Integrada):** Se propone un entorno de desarrollo integrado que combina la plataforma **Jadex** (una máquina de razonamiento BDI) con el _middleware_ **JADE**.

- **Arquitectura:** Los agentes Jadex están encapsulados dentro de agentes JADE, lo que les permite acceder a servicios básicos (directorio, comunicación, gestión) y interactuar entre sí.
- **Implementación:** Los planes del agente se implementan como **clases Java** derivadas de clases Plan fundamentales, y otros componentes (creencias, objetivos) se implementan mediante **ADF (Agent Definition Files) basados en XML**.
- **Beneficios:** El uso de Jadex con clases Java permite compilar una sola vez, y el uso de ADF basado en XML mejora la portabilidad y la interoperabilidad de los agentes.

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la capacidad del método para desarrollar sistemas autoadaptativos complejos y la mejora de la eficiencia se fundamentan en las siguientes ideas clave:

1. **La Captura Exhaustiva de la Adaptación Requiere Especificar Variaciones de Requisitos a Través de Condiciones de Contexto Externo y Eventos Internos:** La conclusión de que el modelo de requisitos es adecuado para SAS se basa en la extensión del modelo Tropos para incluir **condiciones de contexto** (para modelar el entorno) y, crucialmente, **condiciones de eventos internos/falla** (para modelar requisitos de tolerancia a fallas autoadaptativas), que faltaban en los modelos GORM y GORM extendido existentes.
2. **El Uso de Agentes BDI y el Control Descentralizado es Esencial para la Escalabilidad y la Robustez en Sistemas Complejos:** La conclusión de que el diseño de la arquitectura es robusto se fundamenta en la adopción de la tecnología **orientada a agentes** y el modelo **BDI**. Los agentes BDI permiten un modo de **control descentralizado** que es superior al control centralizado tradicional, ya que este último lucha por obtener el estado global en sistemas de creciente complejidad.
3. **El Desarrollo Dirigido por Modelos (MDD) y la Extensión del Modelo BDI Evitan la Pérdida de Información y Mejoran la Eficiencia del Desarrollo:** La conclusión sobre la mejora de la eficiencia y la fidelidad del diseño se basa en el principio de **MDD** (cerrar la brecha entre requisitos y diseño). Específicamente, la necesidad de **extender el modelo BDI** (añadiendo elementos como la delegación de objetivos) al referirse al modelo Tropos es clave para garantizar que no se pierda información útil durante la transformación automática.

### Valor del Paper

El artículo **"A Model Driven Agent-Oriented Self-Adaptive Software Development Method"** tiene un valor significativo para la Ingeniería de _Software_ y los Sistemas Autonómicos:

- **Método Integral y Unificado:** Proporciona un método de desarrollo **integral de extremo a extremo** (Requisitos $\to$ Diseño $\to$ Implementación) para SAS, utilizando el enfoque de modelos dirigidos.
- **Innovación en el Modelado de Requisitos:** La **extensión formal del modelo Tropos** para incorporar tanto el contexto externo como los eventos internos (fallas) es una contribución metodológica clave que supera las limitaciones de los GORM anteriores.
- **Puente Sólido entre Requisitos y Diseño:** El trabajo propone una **solución de mapeo detallada y formal** entre el modelo de requisitos (Tropos extendido) y el modelo de diseño (BDI extendido).
- **Marco de Implementación Práctico:** La propuesta de la **plataforma integrada Jadex/JADE** y la descripción detallada de la implementación (planos, creencias, objetivos) ofrecen una solución práctica para llevar el diseño BDI a la ejecución real.

El valor de este método es que transforma el desarrollo de sistemas autoadaptativos de un proceso manual y propenso a errores a un **proceso semiautomático y basado en planos**. Es como si la IA no solo dibujara la arquitectura (modelo Tropos extendido), sino que también generara automáticamente las **instrucciones de construcción** para los trabajadores (la transformación al modelo BDI) y les proporcionara las **herramientas y el sitio de construcción** optimizados (la integración Jadex/JADE) para garantizar que el sistema se construya de forma autónoma y fiable.
