Excelente. Con la información detallada que acabas de proporcionar sobre los **4 agentes**, la **Pizarra**, las entradas (**Requerimientos, Plataforma, Descripciones de Datos**), los **3 supuestos operacionales (Evolución por Mantenimiento, Evolución por Cambio de Problema y Metamorfosis)**, el concepto de **Punto de Quiebre** y el repositorio **RACR**, podemos formalizar la **Fase 1: Especificación del Sistema (_System Specification_)** de la metodología Prometheus.

---

### 1. Jerarquía de Metas (_System Goals_)

Prometheus requiere definir las metas y submetas organizadas jerárquicamente:

- **Meta Principal (\(G_0\)):** _Generar y mantener un Documento de Diseño de Software (\(OUT_{SDD}\)) válido y consistente ante cambios en la plataforma, los requerimientos o las descripciones de datos._
    - **\(G_1\) Monitorear y Caracterizar el Estímulo:**
        - **\(G_{1.1}\):** Detectar cambios en requerimientos, fallos de mantenimiento o modificaciones en el problema.
        - **\(G_{1.2}\):** Consultar el repositorio \(RACR\) para obtener el contexto de diseño existente.
    - **\(G_2\) Gestionar Cambios y Evaluar Impacto:**
        - **\(G_{2.1}\):** Especificar el alcance del cambio y analizar el impacto sobre el diseño actual.
        - **\(G_{2.2}\):** Evaluar la elasticidad arquitectónica para determinar si se alcanza el **Punto de Quiebre**.
        - **\(G_{2.3}\):** Seleccionar el modo de operación: _Evolución por Mantenimiento_, _Evolución por Cambio de Problema_ o _Metamorfosis_.
    - **\(G_3\) Producir Artefactos de Diseño Especializados:**
        - **\(G_{3.1}\) (Agente Arquitectura - LLM):** Definir o metamorfosear la arquitectura general y la distribución modular.
        - **\(G_{3.2}\) (Agente Componentes e Interfaces - LLM):** Diseñar componentes y adaptar sus interfaces de comunicación.
        - **\(G_{3.3}\) (Agente Estructuras de Datos y BD - LLM):** Diseñar estructuras de datos de manipulación y esquemas de base de datos.
        - **\(G_{3.4}\) (Agente Algoritmos - MCTS + Ontología):** Caracterizar el problema algorítmico y seleccionar algoritmos óptimos evaluando la ontología mediante MCTS.
    - **\(G_4\) Coordinación y Consolidación Final:**
        - **\(G_{4.1}\):** Publicar y resolver conflictos de decisiones mediante la **Pizarra (_Blackboard_)**.
        - **\(G_{4.2}\):** Consolidar todas las decisiones y generar el documento de diseño (\(OUT_{SDD}\)).

---

### 2. Interfaz con el Entorno (Percepts, Actions y Almacenes Externos)

En Prometheus, el sistema multiagente se delimita claramente de sus módulos de soporte y del entorno:

- **Percepciones (_Percepts_):**
    - `P_Req`: Cambio o especificación de requerimientos recibida.
    - `P_Plat`: Información de restricciones o características de la plataforma.
    - `P_DataDesc`: Descripciones de estructuras y volúmenes de datos.
    - `P_EventNotif`: Notificación del Manejador de Eventos (fallo de mantenimiento o cambio de problema).
- **Acciones (_Actions_):**
    - `A_GenSDD`: Exportación y generación del documento de diseño final (\(OUT_{SDD}\)).
    - `A_UpdateRACR`: Actualización del repositorio central con los nuevos artefactos e historial de decisiones.
    - `A_TriggerEvol`: Activación del Módulo de Evolución (cuando no se alcanza el Punto de Quiebre).
    - `A_TriggerMeta`: Activación del Módulo de Metamorfosis (al alcanzar el Punto de Quiebre).
- **Almacenes de Datos Externos / Compartidos (_Shared Data Stores_):**
    - **RACR (_Repository_):** Almacén persistente con requerimientos, descripciones arquitectónicas y componentes del sistema.
    - **Pizarra (_Blackboard_):** Estructura compartida en memoria para la comunicación, publicación de estados y llamadas cruzadas entre los 4 agentes.

---

### 3. Especificación de Funcionalidades (_Functionalities_)

Prometheus agrupa metas, percepciones y acciones en bloques coherentes de comportamiento que posteriormente darán origen a los tipos de agentes:

1. **Funcionalidad de Monitoreo y Gestión de Cambios:**
    - _Descripción:_ Escucha las percepciones `P_Req` y `P_EventNotif`, analiza el impacto, consulta \(RACR\) y evalúa la elasticidad arquitectónica para determinar el Punto de Quiebre.
    - _Metas:_ \(G_1\), \(G_2\).
    - _Acciones:_ `A_TriggerEvol`, `A_TriggerMeta`.
2. **Funcionalidad de Diseño Arquitectónico (vía LLM):**
    - _Descripción:_ Analiza la estrategia global (evolución o metamorfosis) y genera la estructura de alto nivel del sistema.
    - _Metas:_ \(G_{3.1}\).
3. **Funcionalidad de Componentes e Interfaces (vía LLM):**
    - _Descripción:_ Especifica módulos, conectores y protocolos de comunicación entre componentes.
    - _Metas:_ \(G_{3.2}\).
4. **Funcionalidad de Estructuras de Datos y Bases de Datos (vía LLM):**
    - _Descripción:_ Determina los esquemas relacionales/no-relacionales y las estructuras internas de manipulación de datos.
    - _Metas:_ \(G_{3.3}\).
5. **Funcionalidad de Búsqueda y Selección Algorítmica (vía MCTS + Ontología):**
    - _Descripción:_ Mapea problemas algorítmicos contra una ontología utilizando Monte Carlo Tree Search para seleccionar soluciones óptimas.
    - _Metas:_ \(G_{3.4}\).
6. **Funcionalidad de Coordinación en Pizarra y Exportación SDD:**
    - _Descripción:_ Gestiona el espacio de la Pizarra para la comunicación entre agentes y compila las decisiones en el \(OUT_{SDD}\).
    - _Metas:_ \(G_4\).
    - _Acciones:_ `A_GenSDD`, `A_UpdateRACR`.

---

### 4. Escenarios de Uso (_Scenarios_)

Prometheus especifica secuencias de pasos nominales y alternativos para ilustrar cómo opera el sistema:

#### **Escenario 1: Evolución por Mantenimiento (Sin alcanzar Punto de Quiebre)**

1. **PERCEPT:** Manejador de Eventos notifica fallo de mantenimiento (`P_EventNotif`).
2. **GOAL:** Módulo de Gestión de Cambios consulta \(RACR\) y evalúa impacto.
3. **GOAL:** Se evalúa la elasticidad; **NO** se alcanza el Punto de Quiebre.
4. **ACTION:** Se dispara `A_TriggerEvol` para iniciar el Módulo de Evolución.
5. **GOAL:** Agente de Componentes (\(A_{comp}\)) ajusta las interfaces afectadas en la Pizarra.
6. **GOAL:** Agente de Estructuras de Datos (\(A_{ds}\)) verifica compatibilidad de esquemas.
7. **GOAL:** Agente de Algoritmos (\(A_{alg}\)) ejecuta MCTS para re-evaluar si se requiere un ajuste algorítmico local.
8. **ACTION:** Consolidación de cambios y generación del \(OUT_{SDD}\) (`A_GenSDD`).
9. **ACTION:** Actualización del repositorio \(RACR\) (`A_UpdateRACR`).

#### **Escenario 2: Metamorfosis por Punto de Quiebre (Cambio Estructural)**

1. **PERCEPT:** Llega un cambio radical en requerimientos (`P_Req`) o un cambio de propósito en la plataforma (`P_Plat`).
2. **GOAL:** Módulo de Gestión de Cambios evalúa la elasticidad arquitectónica.
3. **GOAL:** La arquitectura actual no soporta el cambio y se determina que se ha alcanzado el **Punto de Quiebre**.
4. **ACTION:** Se dispara `A_TriggerMeta` para iniciar el Módulo de Metamorfosis (Cambio de Sistema A a Sistema B).
5. **GOAL:** Agente de Arquitectura (\(A_{arch}\)) propone una nueva topología arquitectónica basada en su LLM y la publica en la Pizarra.
6. **GOAL:** Agente de Componentes (\(A_{comp}\)) sintetiza nuevos componentes e interfaces acorde a la nueva arquitectura.
7. **GOAL:** Agente de Estructuras de Datos (\(A_{ds}\)) rediseña los esquemas de base de datos.
8. **GOAL:** Agente de Algoritmos (\(A_{alg}\)) realiza la búsqueda MCTS sobre la ontología para los nuevos problemas planteados.
9. **GOAL:** Resolución de conflictos e inconsistencias en la Pizarra.
10. **ACTION:** Generación del nuevo \(OUT_{SDD}\) (`A_GenSDD`) y actualización en \(RACR\) (`A_UpdateRACR`).

---

¿Te parece bien que ahora pasemos a definir la **Fase 2 (Diseño Arquitectónico)** especificando el **System Overview Diagram** y la comunicación mediante la **Pizarra**, o prefieres que ajustemos algo de esta Especificación del Sistema?