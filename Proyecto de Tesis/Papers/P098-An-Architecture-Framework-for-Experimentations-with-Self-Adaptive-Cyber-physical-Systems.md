#CitaLatex 
@inproceedings{Kit2015AnArchitectureFramework,
  title = {An Architecture Framework for Experimentations with Self-Adaptive Cyber-physical Systems},
  url = {http://dx.doi.org/10.1109/SEAMS.2015.28},
  DOI = {10.1109/seams.2015.28},
  booktitle = {2015 IEEE/ACM 10th International Symposium on Software Engineering for Adaptive and Self-Managing Systems},
  publisher = {IEEE},
  author = {Kit,  Michal and Gerostathopoulos,  Ilias and Bures,  Tomas and Hnetynka,  Petr and Plasil,  Frantisek},
  year = {2015},
  month = may,
  pages = {93–96}
}


Referencia del archivo original: `(Michal Kit) An Architecture Framework for Experimentations with Self-Adaptive Cyber-physical Systems.pdf` [[(Michal Kit) An Architecture Framework for Experimentations with Self-Adaptive Cyber-physical Systems.pdf]]

El documento seleccionado es el artículo **"An Architecture Framework for Experimentations with Self-Adaptive Cyber-physical Systems"** (Un Marco de Arquitectura para la Experimentación con Sistemas Ciberfísicos Autoadaptativos), escrito por Michal Kit.

Este trabajo presenta **AutoMOA** (_Adaptable Component Manager Ensembles of Components_), un marco de modelado y una arquitectura destinados a facilitar el desarrollo y la simulación de Sistemas Ciberfísicos Inteligentes Autoadaptativos (Smart CPS) complejos.

A continuación, se presenta un resumen claro y completo del marco, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del _paper_.

### Resumen Completo del Documento

**1. Contexto y Problema (Complejidad de los Smart CPS):** Los Sistemas Ciberfísicos Inteligentes (Smart CPS) son sistemas que se extienden al mundo físico y operan en entornos cambiantes e impredecibles. Estos sistemas deben ser capaces de actuar de manera proactiva, adaptarse rápidamente a los cambios y operar con recursos limitados.

El diseño correcto de Smart CPS autoadaptativos es una tarea desafiante porque requiere una **visión holística** que tome en cuenta múltiples aspectos: los objetivos generales del sistema, los modelos operacionales del sistema y su entorno (incluida la incertidumbre), y los modelos de comunicación (incluyendo la latencia y la inestabilidad). Los modelos de ingeniería de _software_ existentes solo abordan parcialmente este desafío.

**2. La Solución Propuesta: Marco AutoMOA:** AutoMOA se propone como un marco de modelado y arquitectura para desarrollar Smart CPS autoadaptativos complejos. Su enfoque es holístico y combina los objetivos del sistema, el modelo operacional (incluyendo restricciones en tiempo real) y un modelo de comunicación realista (incluyendo latencia limitada).

AutoMOA proporciona abstracciones arquitectónicas de componentes autónomos y conjuntos de componentes (_component ensembles_) basados en los conceptos de componentes autónomos y conjuntos.

**Características Clave del Modelo AutoMOA:**

- **Modelo de Componentes Dinámicos Basado en Conjuntos (_Ensembles_):** Un componente es una unidad de computación y despliegue independiente. Un conjunto es un grupo de componentes que cooperan para lograr un objetivo particular. Los conjuntos se **establecen o disuelven dinámicamente en tiempo de ejecución**, dependiendo del estado del entorno y de los componentes.
    - Este concepto permite formar arquitecturas de componentes dinámicas y proporciona una reflexión directa de los objetivos operacionales en la arquitectura de la aplicación.
    - Un componente puede tener múltiples roles y perseguir múltiples objetivos simultáneamente.
- **Componentes Autónomos y Procesos:** Los vehículos, en el caso de estudio, se representan como componentes autónomos, cada uno compuesto por una **'creencia' (_knowledge_)** y **'procesos' (_run-time processes_)**. Los procesos son periódicos (activados por tiempo) o activados por eventos (_event-triggered_).
- **Comunicación Indirecta (Intercambio de Conocimiento):** La comunicación entre componentes no es directa, sino que ocurre a través del **intercambio de conocimiento** dentro de un conjunto.
    - Un conjunto está definido por su **condición de membresía** y su **regla de intercambio de conocimiento**. El conocimiento es transferido entre el **coordinador del conjunto** y los **miembros del conjunto**.
- **Apertura y Extensibilidad para Estrategias de Adaptación:** AutoMOA es abierto a la implementación de diferentes algoritmos o estrategias de adaptación. Estas estrategias pueden cambiar dinámicamente en respuesta a variables sensibles (como el entorno) o a las creencias de otros componentes.

**3. Simulación y Evaluación (AutoMOA Runtime):** AutoMOA proporciona dos _frameworks_ de tiempo de ejecución: uno en JADE y otro en Java. La implementación en Java (llamada JDEECo) sirve principalmente para la **experimentación** con componentes autónomos y autoadaptación.

- **Integración de Simulación de Red (INET/OMNeT++):** Para simular despliegues en entornos de red mixtos (redes IP y redes móviles Ad Hoc, como V2V), AutoMOA está **integrado** con el simulador de red **OMNeT++/INET**. Esto permite que la evaluación tenga en cuenta los efectos realistas de la latencia de red, las colisiones y las caídas de paquetes.

**4. Metodología de Diseño (IRM):** AutoMOA utiliza el **Método de Refinamiento de Invariantes (IRM)** para razonar sobre la autoadaptación durante la fase de diseño. IRM es un método de diseño descendente (_top-down_) basado en el modelado de **objetivos/invariantes**.

- **Invariantes:** Representan el **estado deseado** del sistema a lo largo del tiempo, correspondiendo a la normalidad operacional del sistema.
- **Refinamiento:** Los invariantes de alto nivel (objetivos generales) se descomponen en invariantes más específicos (granulares) que se mapean eventualmente a los procesos concretos de los componentes y conjuntos.
- **Adaptación:** IRM captura y explota la **variabilidad arquitectónica** (configuraciones de componentes que corresponden a situaciones distintas) a través de la descomposición basada en J-descomposiciones.

**5. Caso de Estudio (Estacionamiento Inteligente):** El marco se ilustra con un escenario de **estacionamiento inteligente** donde los vehículos se comunican (V2V) para determinar las capacidades de estacionamiento disponibles.

- **Mecanismo de Adaptación:** Un vehículo tiene dos alternativas para obtener información sobre el estacionamiento disponible: (i) usar su propio sensor de estacionamiento, o (ii) usar la información intercambiada con otros vehículos en un conjunto (CapacityExchangeEnsemble).
- **Adaptación:** El vehículo adapta su comportamiento (utiliza un método u otro, o ambos) dependiendo de si se cumplen las suposiciones de operación, como la operatividad del sensor o la disponibilidad de la red.

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez, la superioridad y el potencial del marco AutoMOA se fundamentan en las siguientes ideas clave:

1. **La Complejidad de los Smart CPS Exige una Arquitectura Dinámica Basada en la Cooperación entre Componentes:** La conclusión de que AutoMOA es necesario se basa en el reconocimiento de que los Smart CPS autoadaptativos son inherentemente complejos y requieren una visión holística. La solución es la **arquitectura dinámica basada en conjuntos (_ensembles_)**, donde la cooperación entre componentes se establece y disuelve en tiempo de ejecución. Esto permite al sistema reaccionar a los cambios en el entorno.
2. **La Simulación de la Latencia y la Conectividad de la Red es Crucial para Evaluar el Comportamiento Adaptativo en Entornos Realistas:** La conclusión de que AutoMOA es más realista se fundamenta en la **integración con el simulador de red OMNeT++/INET**. Los enfoques existentes a menudo ignoran o simplifican los modelos de comunicación. Al simular la **latencia de red** y la **conectividad limitada** entre componentes, AutoMOA ofrece _insights_ precisos sobre los efectos de las estrategias de adaptación en sistemas Smart CPS descentralizados.
3. **El Diseño de Sistemas Adaptativos debe ser Guiado por Invariantes y Modelado de Objetivos (IRM):** La conclusión sobre la solidez metodológica se basa en la adopción del **Método de Refinamiento de Invariantes (IRM)**. Este método _top-down_ asegura que el diseño de autoadaptación (la elección de alternativas) se base en un razonamiento riguroso sobre los **objetivos de alto nivel (invariantes)**, garantizando que las adaptaciones en tiempo de ejecución persigan el estado deseado del sistema.

### Valor del Paper

El valor del artículo **"An Architecture Framework for Experimentations with Self-Adaptive Cyber-physical Systems"** es significativo para la investigación en Arquitectura de _Software_ y Sistemas Ciberfísicos:

- **Marco Arquitectónico Holístico y Dinámico:** AutoMOA proporciona un marco arquitectónico innovador que modela de manera explícita la **autonomía, el conocimiento, los procesos y la dinámica de la cooperación (ensembles)** de los componentes. Supera las limitaciones de otros _frameworks_ al ser **abierto, fácilmente extensible** y ofrecer una abstracción que refleja de manera directa los objetivos operacionales.
- **Plataforma de Experimentación Realista:** La integración de AutoMOA con el simulador de red OMNeT++/INET lo convierte en una **herramienta poderosa y realista** para la experimentación con Smart CPS descentralizados. Permite a los desarrolladores y arquitectos evaluar el comportamiento del sistema bajo **condiciones de red inciertas y latencia limitada**, cruciales en entornos móviles/V2V.
- **Soporte Metodológico para el Diseño:** El uso del **Método de Refinamiento de Invariantes (IRM)** en la fase de diseño asegura que las estrategias de autoadaptación sean diseñadas de manera sistemática y rigurosa, vinculando los objetivos de alto nivel del sistema con los procesos de adaptación a nivel de componente.

El marco AutoMOA es comparable a un **simulador de estrategia militar en tiempo real** para sistemas ciberfísicos. No solo permite a los componentes (los "vehículos") tomar decisiones de forma autónoma con conocimiento limitado, sino que, además, proporciona un **mapa de batalla simulado y preciso** (la simulación de red) que incluye niebla de guerra (latencia y conectividad limitada). Esto es vital porque la toma de decisiones no se basa en la suposición de comunicación instantánea, sino en las duras realidades de una red de campo, lo que hace que los algoritmos de adaptación probados en AutoMOA sean inherentemente más robustos.
