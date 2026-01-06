#CitaLatex 
@MISC{noauthor_2019-px,
  title      = "A Conceptual Architecture for Enabling Future Self-Adaptive Service Systems",
  publisher  = "Hawaii International Conference on System Sciences",
  month      =  jan,
  year       =  2019,
  conference = "Hawaii International Conference on System Sciences"
}


Referencia del archivo original: `(Fabian Burzlaff) A Conceptual Architecture for Enabling Future Self-Adaptive Service.pdf` [[(Fabian Burzlaff) A Conceptual Architecture for Enabling Future Self-Adaptive Service.pdf]]

Este documento es el artículo **"A Conceptual Architecture for Enabling Future Self-Adaptive Service Systems"** (Una Arquitectura Conceptual para Habilitar Futuros Sistemas de Servicios Auto-Adaptativos), escrito por Fabian Burzlaff y Christian Bartelt.

El artículo presenta una arquitectura conceptual novedosa para sistemas auto-adaptativos que permite la integración dinámica de fuentes de datos y servicios desconocidos, utilizando un método de integración incremental que se basa en bases de conocimiento formales.

### Resumen Completo del Documento

**1. Contexto y Problema Central:** La integración de servicios y fuentes de datos heterogéneos ofrecidos por dispositivos de Internet de las Cosas (IoT) es difícil de estandarizar. Los enfoques de integración actuales están impulsados principalmente por **estándares tecnológicos**, pero estos estándares son a menudo resultado de procesos lentos y quedan desactualizados rápidamente, ya que nuevos dispositivos y fuentes de datos ingresan al mercado de IoT diariamente y de forma descentralizada. Por lo tanto, los estándares nunca son completos como base para la automatización total.

Cuando la integración se realiza manualmente, el conocimiento de integración específico del caso de uso queda **"atrapado"** en estructuras de código imperativo (adaptadores) y no puede ser consultado de forma estructurada ni reutilizado automáticamente. Consecuentemente, si una interfaz similar debe integrarse, el trabajo debe repetirse.

**2. Limitaciones de los Sistemas Auto-Adaptativos Actuales:** Aunque los sistemas auto-adaptativos son idóneos para contextos dinámicos e indeterminados, a menudo confían en la suposición de que el diseñador del sistema puede anticipar todos los posibles estados del sistema IoT y formalizar **todas las reglas de adaptación por adelantado**. Esto requiere una base de conocimiento completa y compartida definida previamente, lo cual es irreal en el dominio IoT.

**3. El Enfoque Propuesto: KDAC (Knowledge-driven Architecture Composition):** La principal contribución es una **arquitectura conceptual** y un método de integración llamado **Knowledge-driven Architecture Composition (KDAC)**.

- **Naturaleza Evolutiva:** KDAC es un método de integración incremental que permite la **formalización semántica evolutiva** de las reglas de integración. Esto contrasta con los enfoques "revolucionarios" (_big-bang_) que requieren la definición completa por adelantado.
- **Manejo de Incompletitud:** KDAC aborda el problema de manera eficiente al **permitir explícitamente la incompletitud del conocimiento de integración**. Utiliza lenguajes declarativos basados en lógica de primer orden (ej., OWL-DL) y principios de razonamiento de ontologías.
- **Mecanismo de Inferencia:** El razonamiento sobre las bases de conocimiento de integración permite **inferir nuevo conocimiento** (como conversiones matemáticas) y calcular la información faltante basada en reglas matemáticas rigurosas, similar a jugar Sudoku.

**4. Arquitectura Conceptual y Herramientas:** Se propone una arquitectura de bus auto-adaptativa que incorpora elementos necesarios para soportar KDAC (Figura 3). Los elementos arquitectónicos centrales incluyen el **Integration Knowledge Repository** y el **Mapping-Runtime**.

- **Caso de Estudio:** Un estudio de caso con un taladro (dispositivo IoT) y un Sistema de Ejecución de Manufactura (MES) ilustra cómo se formaliza el conocimiento incrementalmente, centrándose en el **Nivel de Integración Técnica**.
- **Herramientas:** Se introducen dos herramientas: el **Mapping Assistant** (para que los integradores definan nuevas relaciones semánticas) y una **aplicación web progresiva** (PWA, Figura 6) que permite a los expertos del dominio añadir individuos (instancias de datos) a la ontología de forma incremental y _in situ_ (_Shopfloor_) sin cambiar la estructura o el código.

**5. Impacto en los Bucles de Control (MAPE-K):** La formalización incremental de conocimiento básico (ej., pares <condición, evento> atómicos) durante la integración del dispositivo enriquece las bases de conocimiento compartidas utilizadas por los **bucles de control MAPE-K**. Esto significa que los planes de adaptación complejos no tienen que ser inventados desde cero por los diseñadores en el tiempo de diseño.

**6. Conclusión:** El _paper_ demuestra la **viabilidad técnica** de formalizar el conocimiento de integración de forma evolutiva y con incompletitud explícita en sistemas auto-adaptativos. La integración del método KDAC influye en la arquitectura de los sistemas auto-adaptativos, lo que los convierte en candidatos prometedores para futuras investigaciones.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de una arquitectura auto-adaptativa basada en conocimiento evolutivo se fundamentan en las siguientes ideas clave:

1. **La Inevitable Incompletitud del Conocimiento en el Dominio IoT:** La conclusión se basa en la premisa de que es imposible para los diseñadores anticipar y formalizar **todos los posibles estados y reglas de adaptación** en el dinámico y descentralizado mercado IoT. Por lo tanto, el sistema debe arquitecturarse para manejar la **incompletitud** desde el diseño.
2. **La Reutilización Semántica (KDAC) es Superior a la Integración Imperativa (Adaptadores):** La conclusión de adoptar KDAC se basa en la evidencia de que el conocimiento de integración **actualmente está atrapado en código imperativo** que no es reutilizable. La formalización de este conocimiento en una **base de conocimiento lógica** y en un proceso _bottom-up_ (por caso de uso) permite la **reutilización automática** y reduce significativamente el esfuerzo de formalización.
3. **El Razonamiento Ontológico Permite la Automatización a Largo Plazo:** El valor de la arquitectura se fundamenta en que el uso de **lenguajes declarativos y razonadores** (como HermiT para OWL-DL) permite que el sistema **infiera automáticamente** el conocimiento de acoplamiento. Esto facilita la composición automatizada de componentes (_plug-and-play_) y enriquece las bases de conocimiento para los bucles de control MAPE-K.

---

### Valor del Paper

El valor del artículo reside en su capacidad para cerrar la brecha entre la gestión de la complejidad del IoT y la teoría de los sistemas auto-adaptativos:

- **Marco Arquitectónico Revolucionario (Evolutivo):** El _paper_ es valioso porque presenta una **arquitectura conceptual específica** que se opone al modelo de adaptación "revolucionario" tradicional (basado en estándares completos). Proporciona los elementos necesarios para crear sistemas auto-adaptativos que evolucionan en su conocimiento.
- **Solución Práctica y Demostrada para la Reutilización:** El trabajo introduce el método **KDAC** y, a través de la presentación de prototipos de herramientas (Mapping Assistant y PWA) y un caso de estudio, demuestra la **factibilidad técnica** de capturar conocimiento de integración _bottom-up_ y reutilizarlo. Trabajos anteriores han demostrado que esto puede **reducir significativamente el tiempo de integración**.
- **Mejora de la Inteligencia del Sistema Auto-Adaptativo:** Al proporcionar un mecanismo para **enriquecer las bases de conocimiento** utilizadas por los bucles de control MAPE-K con conocimiento de integración atómico y formalizado, el _paper_ ofrece una base sólida y robusta para la definición de **planes de adaptación más abstractos** y complejos.

El artículo funciona como un catalizador que transforma la integración de dispositivos IoT—una tarea que actualmente es un "cuello de botella" manual y redundante—en un proceso asistido por máquina que aprende y evoluciona su conocimiento semántico de manera continua.
