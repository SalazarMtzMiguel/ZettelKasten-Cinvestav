#CitaLatex 
@INPROCEEDINGS{ChaJung-Eun2016ArchitectureBasedApproaches,
  author={Cha, Jung-Eun and Kim, Jeong-Si and Jeong, Young-Joon},
  booktitle={2016 International Conference on Computational Science and Computational Intelligence (CSCI)}, 
  title={Architecture Based Approaches Supporting Flexible Design of Self-Adaptive Software}, 
  year={2016},
  volume={},
  number={},
  pages={1424-1425},
  abstract={It is difficult to solve an optimization problem in smart devices software due to a trade-off relation between quality conditions and performance properties. Furthermore, development cost of complicated software is on the increase by fragmentation of devices into the small size. In this paper, we propose the design processes and methods reflecting diverse of flexible elements including physical features such as low-power and high-performance, co-design of hardware and software, and restricted resources usage. Our methods can establish the optimized self-adaptive design by reflecting the quality properties and performance requirements for applications working on systems, monitoring system's states in real-time, and customizing with the most proper design properties.},
  keywords={Software;Metadata;Smart devices;Computer architecture;Hardware;Performance evaluation;Adaptive systems;Self-Adaptive Software;Flexible Design;Architecture Based Approaches},
  doi={10.1109/CSCI.2016.0280},
  ISSN={},
  month={Dec},}

Referencia del archivo original: `(Jung-Eun Cha) Architecture Based Approaches Supporting Flexible Design of Self-Adaptive Software.pdf` [[(Jung-Eun Cha) Architecture Based Approaches Supporting Flexible Design of Self-Adaptive Software.pdf]]

 El documento seleccionado es el artículo **"Architecture Based Approaches Supporting Flexible Design of Self-Adaptive Software"** (Enfoques Basados en Arquitectura que Soportan el Diseño Flexible de Software Autoadaptativo), escrito por Jung-Eun Cha, Jeong-Si Kim y Young-Joon Jeong.

Este trabajo propone procesos y métodos de diseño sistemáticos que reflejan diversos elementos de flexibilidad para establecer un diseño **autoadaptativo optimizado** en el _software_ de dispositivos inteligentes, abordando los desafíos de la complejidad, los _trade-offs_ de calidad y el alto costo de desarrollo.

### Resumen Completo del Documento

**1. Contexto y Problema del Software para Dispositivos Inteligentes:** El desarrollo de _software_ para dispositivos inteligentes es inherentemente complejo. Existe una dificultad considerable para resolver problemas de optimización debido a la **relación de _trade-off_** entre las condiciones de calidad (como bajo consumo de energía, _low-power_) y las propiedades de rendimiento (como alto rendimiento, _high-performance_). Además, el costo de desarrollo está en aumento debido a la fragmentación de los dispositivos en tamaños pequeños.

Tradicionalmente, la gestión de la variabilidad en el _software_ de dispositivos inteligentes ha dependido de las **decisiones basadas en la experiencia** de desarrolladores cualificados. Esta dependencia genera dificultades cuando se sustituyen desarrolladores, o cuando se añaden nuevas funcionalidades o interfaces de _hardware_. Para garantizar y mantener un nivel constante de calidad de _software_ en este contexto de alta dificultad y costo, se necesita un **proceso y técnicas sistemáticas** para el diseño y la construcción.

**2. Definición y Enfoque Autoadaptativo:** El _software_ autoadaptativo puede identificar, decidir y realizar las actividades requeridas apropiadamente en función del contexto del _software_, respondiendo a _hardware_ sofisticado y a la dificultad de predicción de diversas propiedades de cambio. Se espera que este _software_ refleje de manera sensible los objetivos de calidad al **auto-reconocer los requisitos cambiantes**. Es particularmente necesario para dispositivos inteligentes debido a sus frecuentes funciones de control de _hardware_ y los cambios constantes en el entorno externo e interno.

**3. El Proceso de Diseño Autoadaptativo Propuesto:** Los autores proponen métodos que pueden establecer un diseño autoadaptativo optimizado al reflejar las propiedades de calidad y los requisitos de rendimiento, **monitorear el estado del sistema en tiempo real**, y personalizar el sistema con las propiedades de diseño más adecuadas. La premisa central es que el uso, mantenimiento y flexibilidad en los pasos de evolución incremental se ven aliviados mediante la **personalización basada en modelos** de las propiedades autoadaptativas.

**a. El Rol de los Metadatos:** Los **metadatos** se definen como propiedades de _software_ modificadas por los requisitos del usuario y el entorno de operación. Los metadatos son cruciales porque es de suma importancia elegir las propiedades correctas entre las que mantienen una relación de _trade-off_. Los metadatos configuran y clasifican las propiedades variables, típicamente en dos categorías principales para dispositivos inteligentes: **gestión de red y recursos**.

**b. Pasos del Diseño Autoadaptativo (Self-Adaptive Design Steps):** El proceso se resume en tres pasos principales (Figura 2):

1. **Clasificación e Identificación:** Se ingresan los metadatos del _software_ objetivo, se adquieren los metadatos autoadaptativos para cumplir con los objetivos de calidad y se construye la arquitectura objetivo.
2. **Selección y Confirmación:** El usuario interactúa repetidamente con el sistema para seleccionar y confirmar las propiedades adaptativas recomendadas por el sistema. El sistema recomienda las mejores variables candidatas de un repositorio que almacena diversas propiedades. Si el usuario no está satisfecho, ingresa nuevos metadatos y el sistema recomienda propiedades reconfiguradas hasta que el usuario esté complacido.
3. **Alineación (Aligning):** Esta etapa finaliza el diseño completado mediante la **asignación y el reemplazo de patrones de diseño** (_design patterns_), los cuales son bloques de diseño probados para los objetivos de calidad, permitiendo que el _software_ evolucione hacia una versión autoadaptativa.

**c. Estructura de Diseño:** La arquitectura del _software_ autoadaptativo propuesta (Figura 4) incluye módulos para Interfaz, Control, Funciones y Gestión de Dispositivos (control de _hardware_). El módulo **Self_Adaptive_Controlling** (Control Autoadaptativo) es central, encargado de la entrega y recepción de metadatos que reflejan las propiedades autoadaptativas, y contribuye a controlar las propiedades de los paquetes Function y DevicesManaging que tienen relaciones de dependencia.

**4. Conclusiones y Beneficios:** La aplicación de los procesos de diseño propuestos puede **ahorrar tiempo y costo** de desarrollo, ya que los sistemas son optimizados mediante el diseño autoadaptativo. Este enfoque se espera que sea aplicable a diversos campos industriales que presentan relaciones de _trade-off_, como los productos de bajo precio y bajo consumo de energía.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de este enfoque sistemático y su capacidad para optimizar el diseño del _software_ se fundamentan en las siguientes ideas clave:

1. **Dependencia Excesiva de la Experiencia y el Problema de la Variabilidad:** La conclusión de que se necesita un nuevo método se basa en el problema de que lidiar con la variabilidad en el _software_ de dispositivos inteligentes ha dependido históricamente de la **toma de decisiones basada en la experiencia** de desarrolladores cualificados. Esto hace que la calidad del _software_ no sea constante y dificulta el mantenimiento ante cambios o intercambios de personal, aumentando el costo y la dificultad.
2. **El Manejo de _Trade-offs_ Requiere Metadatos Centralizados:** La conclusión de que el diseño se puede optimizar se fundamenta en la idea de que la solución a los problemas de optimización, que surgen de la **relación de _trade-off_** entre propiedades (ej., bajo consumo vs. alto rendimiento), requiere un mecanismo formal: la **configuración de metadatos**. Los metadatos (clasificados en red y recursos) son la abstracción clave utilizada para registrar, reflejar y reconfigurar estas decisiones de _trade-off_.
3. **La Personalización Basada en Modelos de Arquitectura Permite Flexibilidad y Evolución:** La conclusión de que la flexibilidad y el mantenimiento mejoran se basa en la premisa de que los sistemas son **personalizados a través de modelos**. El método garantiza el diseño completado al **asignar y reemplazar patrones de diseño** (bloques de diseño probados y validados) en la arquitectura, lo que facilita la evolución incremental y alivia las tareas de uso y mantenimiento del _software_ autoadaptativo.

---

### Valor del Paper

El valor del artículo **"Architecture Based Approaches Supporting Flexible Design of Self-Adaptive Software"** es significativo para la ingeniería de _software_ en el contexto de dispositivos inteligentes:

- **Enfoque Sistemático para SASS en Dispositivos Inteligentes:** El valor principal es que proporciona un **proceso de diseño sistemático y estructurado** para el _software_ autoadaptativo. Esto es especialmente relevante para el dominio de dispositivos inteligentes, donde los requisitos de _trade-off_ (como bajo consumo de energía y _hardware_ restringido) son críticos.
- **Centralidad de los Metadatos en la Decisión de Diseño:** Introduce un marco que utiliza la **configuración de metadatos** como la herramienta principal para gestionar la variabilidad y resolver la difícil elección entre propiedades en conflicto, un concepto fundamental para la optimización del diseño.
- **Reducción de Costos y Dependencia de la Experiencia:** El enfoque ofrece un camino para **reducir los costos de desarrollo** y disminuir la dependencia del desarrollador experto. Al formalizar la selección de propiedades adaptativas y su implementación mediante patrones de diseño probados, el proceso se vuelve más robusto y menos vulnerable a los cambios de personal o _hardware_.

Este enfoque es como reemplazar un artesano altamente experimentado (el desarrollador habilidoso) con una **fábrica modular y automatizada**. El artesano podía tomar decisiones intuitivas sobre el equilibrio de materiales (propiedades de _trade-off_), pero el nuevo sistema utiliza planos estandarizados (patrones de diseño) y una lista de verificación detallada (metadatos) para que cualquier equipo pueda replicar y optimizar el producto de manera consistente, incluso ante la constante miniaturización y cambio de componentes del producto final (dispositivos inteligentes).
