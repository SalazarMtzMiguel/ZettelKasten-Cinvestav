#CitaLatex 
@INPROCEEDINGS{Savargiv2017Improvedself-management,
  author={Savargiv, Mohammad and Nazemi, Eslam and MehrMolaei, Soheila},
  booktitle={2017 Artificial Intelligence and Robotics (IRANOPEN)}, 
  title={Improved self-management architecture in self-adaptive system}, 
  year={2017},
  volume={},
  number={},
  pages={1-5},
  keywords={Computer architecture;Software systems;Optimization;Computers;Service-oriented architecture;Self-adaptive;Self-management;Dynamic architecture},
  doi={10.1109/RIOS.2017.7956435}}


Referencia del archivo original: `(Mohammad Savargiv) Improved self-management architecture in self-adaptive system.pdf` [[(Mohammad Savargiv) Improved self-management architecture in self-adaptive system.pdf]]

El documento seleccionado es el artículo **"Improved Self-Management Architecture in Self-Adaptive System"** (Arquitectura de Autogestión Mejorada en Sistemas Autoadaptativos), escrito por Mohammad Savargiv, Eslam Nazemi y Soheila MehrMolaei.

Este trabajo aborda la necesidad de una arquitectura de _software_ dinámica que pueda soportar la autogestión (_self-management_), el nivel más alto de autoadaptación (_self-adaptive_), y propone dos mejoras a la arquitectura de autogestión dinámica de tres niveles (_three-tier architecture_) existente.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del _paper_.

### Resumen Completo del Documento

**1. Contexto y Problema Central (Autogestión y Sistemas Autoadaptativos):** El desarrollo de sistemas de _software_ requiere la capacidad de **autoadaptación** al entorno operativo. Debido al gran tamaño y la complejidad de los sistemas modernos, el desarrollo y mantenimiento mediante métodos tradicionales se vuelven imposibles. El **rediseño de sistemas grandes y complejos** implica costos muy altos de tiempo y dinero, lo que hace que la **autogestión automática** y la **autoadaptabilidad con mínima intervención humana** sean inevitables.

La **autogestión (_Self-management_)** es el nivel más alto de autoadaptación, ubicado en la cima de la pirámide de autoadaptación, e incluye todos los detalles de la autoadaptación, como la autoconfiguración (_self-configuration_), la autorreparación (_self-healing_), la autoprotección (_self-protecting_) y la autooptimización (_self-optimization_).

Los desafíos principales de la autogestión son la **escalabilidad** y el **soporte de análisis dinámico** frente al cambio.

**2. La Solución Arquitectónica (Arquitectura Dinámica):** Debido a que la autogestión se relaciona con todos los aspectos de la autoadaptación, se requiere un tipo especial de arquitectura de _software_: la **Arquitectura Dinámica**. Una arquitectura dinámica se define como aquella con la capacidad de **cambiarse a sí misma durante el tiempo de ejecución (_run-time_)**.

Una arquitectura dinámica para la autogestión debe superar tres desafíos principales: **precisión, consistencia y eficiencia del cambio**.

**3. Arquitectura Dinámica de Autogestión de Tres Niveles (Modelo Existente):** La arquitectura SPA (_Sense-Plan-Act_), y posteriormente el modelo de tres niveles, es la arquitectura de autogestión dinámica más antigua, basada en un enfoque _top-down_ y centralizado. Esta arquitectura se compone de tres capas:

- **Capa de Control de Componentes (_Component Control Layer_):** El nivel más bajo, que contiene sensores, actuadores y bucles de control. Detecta el entorno, envía solicitudes de cambio a la capa superior y recibe nuevos planes. Aquí se realizan cambios de configuración (añadir/eliminar componentes o conexiones).
- **Capa de Gestión del Cambio (_Change Management Layer_):** La capa intermedia. Su tarea principal es ejecutar los planes de respuesta recibidos de la capa superior en la capa de control de componentes (ej., creación de nuevos componentes, reconstrucción, cambio de parámetros de control).
- **Capa de Gestión de Objetivos (_Goal Management Layer_):** La capa superior. Su tarea principal es encontrar **objetivos de alto nivel** y se toman las **decisiones importantes** (ej., balanceo de carga).

**4. Las Propuestas de Mejora del Marco:** El artículo propone dos mejoras a la arquitectura dinámica de autogestión de tres niveles:

**Propuesta 1: Mejora de la Capa de Gestión de Objetivos (Goal Management Layer):** Esta mejora se centra en hacer que la gestión de objetivos sea más sofisticada y adaptativa.

- Se introduce un **Repositorio de Objetivos Predefinidos (_Predefined Goal_)** que contiene los objetivos del sistema que pueden predefinirse antes de que se requieran.
- Se utilizan los componentes **Selección de Objetivos (_Goal Selection_)** y **Optimización de Objetivos (_Goal Optimization_)**. El componente de optimización ajusta los parámetros de los objetivos y utiliza un **algoritmo evolutivo** para determinar la utilidad de las soluciones, buscando superar los óptimos locales para lograr el **óptimo global** en el espacio de problemas.
- Si no se encuentra un objetivo adecuado, se aplican los componentes **Agregación de Características de Objetivos (_Goal Feature Aggregation_)** y **Creación y Reconstrucción de Objetivos (_Goal Creation & Reconstruction_)** para construir nuevas soluciones o reconstruir objetivos antiguos basados en nuevos requisitos.

**Propuesta 2: Mejora de la Capa de Control de Componentes (Component Control Layer):** Esta mejora se centra en simplificar la operación de la capa de configuración de componentes.

- Se propone el uso de la **Arquitectura Orientada a Servicios (SOA)**.
- Se añaden componentes como **Repositorio de Servicios (_Service Repository_)**, **Composición de Servicios (_Service Composition_)**, **Control de Servicios (_Service Control_)** y **Bus de Servicios (_Service Bus_)**. Esto facilita la gestión de la configuración de componentes.

**5. Conclusiones:** El _paper_ concluye que la autogestión es un aspecto de los sistemas autoadaptativos que requiere arquitecturas dinámicas capaces de responder a los requisitos de cambio en tiempo de ejecución y ser capaces de operar frente a fallos. Las dos propuestas mejoran la arquitectura dinámica de autogestión, especialmente en la capa de gestión de objetivos y la capa de control de componentes.

Se identifican dos desafíos relacionados con la arquitectura mejorada: (1) el _trade-off_ al seleccionar entre la optimización de objetivos existentes y la creación de nuevos objetivos; y (2) los desafíos inherentes a la metodología SOA, como la composición de servicios y la prevención de intrusiones. Estos desafíos quedan como trabajo futuro.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de mejorar la arquitectura de autogestión se fundamentan en las siguientes ideas clave:

1. **La Autogestión, como Máximo Nivel de Autoadaptación, Impone Requisitos de Arquitectura Dinámica Estrictos:** La conclusión de que se necesita una arquitectura especial se basa en la premisa de que la autogestión debe abarcar todos los subniveles de la autoadaptación (configuración, curación, protección, optimización). Esto requiere que la arquitectura no solo sea **dinámica** (capaz de cambiarse en tiempo de ejecución), sino que también cumpla con los **criterios de precisión, consistencia y eficiencia del cambio**.
2. **La Optimización de Objetivos Requiere Capacidad Predictiva y Búsqueda del Óptimo Global, No Solo Local:** La conclusión sobre la mejora de la Capa de Gestión de Objetivos se fundamenta en la necesidad de que la autogestión logre un rendimiento óptimo. Esto se logra mediante la introducción de un **componente de Optimización de Objetivos** que utiliza **algoritmos evolutivos** para superar los óptimos locales y alcanzar el **óptimo global** en el espacio de soluciones, asegurando la utilidad de las adaptaciones.
3. **El Uso de SOA en la Capa de Componentes Simplifica la Gestión de la Configuración y Mejora la Modularidad:** La conclusión sobre la segunda mejora se fundamenta en el argumento de que la **Arquitectura Orientada a Servicios (SOA)** simplifica la gestión de la configuración de componentes. El uso de componentes como el **Repositorio de Servicios** y la **Composición de Servicios** en la capa de control facilita las operaciones complejas como añadir/eliminar componentes y conexiones.

---

### Valor del Paper

El valor del artículo **"Improved Self-Management Architecture in Self-Adaptive System"** reside en su enfoque arquitectónico para resolver las limitaciones del modelo tradicional de tres niveles:

- **Innovación Arquitectónica para la Autogestión:** El _paper_ contribuye al campo de los sistemas autoadaptativos al proponer **mejoras concretas y modulares** a la arquitectura dinámica de autogestión. Estas mejoras abordan directamente la complejidad de la gestión de objetivos y la dificultad de la autoconfiguración en sistemas a gran escala.
- **Enfoque en la Optimización Global:** La propuesta de incluir la **Optimización de Objetivos** mediante algoritmos evolutivos es crucial, ya que dota a la arquitectura de una capacidad para tomar **decisiones más inteligentes y estratégicas** (buscando el óptimo global) en la capa de más alto nivel.
- **Integración de Paradigmas de Ingeniería de Software:** Al proponer la integración de **SOA** en la capa de control de componentes, el _paper_ proporciona una solución práctica y probada para simplificar la gestión dinámica de la configuración.

La arquitectura de autogestión mejorada es como un **sistema de control de tráfico aéreo avanzado**. El modelo tradicional de tres niveles solo puede ejecutar planes básicos (Capa de Control de Componentes) basados en decisiones sencillas (Capa de Gestión de Objetivos). La arquitectura propuesta transforma el sistema de control en uno que no solo reacciona, sino que **planea estratégicamente (Optimización de Objetivos)** buscando la mejor solución a largo plazo (óptimo global). Además, al usar SOA en el nivel de componente, el sistema garantiza que los **componentes individuales (los "aviones") puedan ser intercambiados o reconfigurados de manera fluida** sin interrumpir todo el sistema, lo cual es esencial para la escalabilidad y la robustez.
