#CitaLatex 
@INPROCEEDINGS{6803251,
	author={Andrade, Sandro Santos and de Araújo Macêdo, Raimundo José},
	booktitle={2013 IEEE 7th International Conference on Self-Adaptation and Self-Organizing Systems Workshops}, 
	title={Toward Systematic Conveying of Architecture Design Knowledge for Self-Adaptive Systems}, 
	year={2013},
	volume={},
	number={},
	pages={23-24},
	keywords={Computer architecture;Unified modeling language;Aerospace electronics;Optimization;Systematics;Measurement;Conferences;Self-Adaptive Systems;Feedback Control;Software Architecture Design;Search-Based Software Engineering},
	doi={10.1109/SASOW.2013.13}}
	
Lectura basada en: [[(Sandro S.) Toward Systematic Conveying of Architecture Design Knowledge for Self-Adaptive Systems.pdf]]


### Resumen del Paper: "Hacia la Transmisión Sistemática del Conocimiento de Diseño de Arquitecturas para Sistemas Autoadaptativos"

El artículo presenta **DuSE-MT, una herramienta de software que implementa el enfoque DuSE para automatizar el diseño y análisis de arquitecturas de sistemas autoadaptativos**. El objetivo principal es ayudar a los arquitectos a explorar un espacio de diseño muy grande y complejo, permitiéndoles tomar decisiones informadas sobre los compromisos (_trade-offs_) entre diferentes atributos de calidad.

---

### 1. El Problema Central: La Dificultad de Diseñar Sistemas Autoadaptativos

Diseñar arquitecturas para sistemas autoadaptativos es una tarea muy desafiante, incluso para arquitectos experimentados, debido a varios problemas clave:

- **C1) Espacio de diseño enorme y especializado:** Existen muchísimas alternativas para modelar el sistema, elegir un mecanismo de control o configurar los bucles de retroalimentación. Esta variedad genera un gigantesco espacio de posibles arquitecturas, lo que hace muy probable que un arquitecto, especialmente si es novato, elija soluciones inferiores o desconozca otras mejores.
- **C2) Falta de soporte para evaluar la calidad en etapas tempranas:** Las decisiones de arquitectura impactan directamente en los atributos de calidad del sistema final (como escalabilidad o mantenibilidad). Es crucial poder evaluar o estimar estas propiedades desde el inicio del desarrollo para tomar decisiones bien fundamentadas sobre los _trade-offs_.
- **C3) Ausencia de soluciones genéricas y reutilizables:** Muchas de las soluciones de autoadaptación propuestas en la investigación son muy específicas para un escenario particular, lo que dificulta su reutilización en otras aplicaciones. Se necesitan enfoques genéricos centrados en la arquitectura para fomentar una mayor adopción en la industria.

### 2. La Solución Propuesta: El Enfoque DuSE y la Herramienta DuSE-MT

Para enfrentar estos desafíos, los autores proponen **DuSE (Domain-independent representation of Design Spaces)**, un enfoque basado en búsqueda para representar sistemáticamente los espacios de diseño y automatizar el análisis y la creación de arquitecturas. La herramienta **DuSE-MT** es la implementación de este enfoque.

El método funciona de la siguiente manera:

1. **Modela el espacio de diseño:** Captura de forma estructurada las diferentes alternativas y decisiones de diseño para sistemas autoadaptativos.
2. **Define métricas de calidad:** Establece un conjunto de métricas para evaluar cuantitativamente cada posible arquitectura candidata.
3. **Aplica optimización multi-objetivo:** Utiliza un algoritmo evolutivo para explorar automáticamente el enorme espacio de diseño y encontrar un conjunto de las mejores arquitecturas posibles.

### 3. Conceptos Clave del Enfoque

#### **a. Representación Sistemática del Espacio de Diseño (SA:DuSE)**

- El enfoque no es solo para sistemas autoadaptativos, sino que es genérico (`DuSE`). Para este dominio específico, crearon una instancia llamada **SA:DuSE (Self-Adaptive systems: DuSE)**.
- **SA:DuSE captura las "dimensiones de diseño" o "puntos de variación"** más importantes, como diferentes mecanismos de control, sensores, actuadores, etc..
- Para la modelación, se apoya en estándares como **UML y MOF**, utilizando un perfil UML específico para representar explícitamente los componentes de los bucles de retroalimentación.

#### **b. Optimización Multi-Objetivo para Encontrar las Mejores Arquitecturas**

- En lugar de que un arquitecto explore manualmente el espacio de soluciones, el proceso se automatiza mediante un enfoque de **optimización multi-objetivo**.
- La herramienta `DuSE-MT` utiliza el conocido algoritmo evolutivo **NSGA-II** para esta tarea.
- El resultado no es una única "mejor" arquitectura, sino un conjunto de **arquitecturas Pareto-óptimas**. Esto es crucial: un conjunto Pareto-óptimo presenta al arquitecto varias soluciones de alta calidad que representan diferentes equilibrios (_trade-offs_). Por ejemplo, una arquitectura podría tener un tiempo de respuesta excelente pero un mayor costo, mientras que otra podría ser más económica pero ligeramente más lenta. Le corresponde al arquitecto elegir la solución final de este conjunto.

#### **c. Evaluación Temprana a través de Métricas de Calidad**

- La búsqueda automática de las mejores arquitecturas se guía por **cuatro métricas de calidad** específicas para la autoadaptación:
    1. **Overhead de control:** El costo computacional de ejecutar la lógica de adaptación.
    2. **Tiempo de estabilización:** Cuánto tarda el sistema en volver a un estado estable después de una perturbación.
    3. **Sobreimpulso máximo:** El grado en que el sistema excede su objetivo durante la adaptación.
    4. **Adaptación del control:** Una métrica relacionada con el ajuste del propio control.

### Conclusión:

Este paper podría ser **muy útil para tu tesis**, especialmente si tu investigación se centra en:

- **Ingeniería de Software Basada en Búsqueda (Search-Based Software Engineering - SBSE):** Es un ejemplo claro de cómo aplicar algoritmos de optimización para resolver un problema de diseño de software.
- **Automatización del Diseño de Arquitecturas:** El trabajo aborda directamente la automatización de decisiones de diseño complejas que tradicionalmente son manuales.
- **Diseño de Sistemas Autoadaptativos:** Ofrece un método sistemático y basado en herramientas para abordar la complejidad inherente al diseño de estos sistemas.
- **Análisis de "Trade-offs" y Toma de Decisiones Arquitectónicas:** El uso de la optimización Pareto para encontrar un conjunto de soluciones óptimas es una contribución clave para hacer explícitos los compromisos entre diferentes atributos de calidad.