#CitaLatex 
@ARTICLE{Lewis2015ArchitecturalAspects,
  author={Lewis, Peter R. and Chandra, Arjun and Faniyi, Funmilade and Glette, Kyrre and Chen, Tao and Bahsoon, Rami and Torresen, Jim and Yao, Xin},
  journal={Computer}, 
  title={Architectural Aspects of Self-Aware and Self-Expressive Computing Systems: From Psychology to Engineering}, 
  year={2015},
  volume={48},
  number={8},
  pages={62-70},
  keywords={Human factors;Behavioral science;Computer architecture;Emotion recognition;self-aware systems;meta-self-awareness;self-expressive systems;self-awareness},
  doi={10.1109/MC.2015.235}}


Referencia del archivo original: `(Peter R. Lewis) Architectural Aspects of Self-Aware and Self-Expressive Computing Systems From Psychology to Engineering.pdf` [[(Peter R. Lewis) Architectural Aspects of Self-Aware and Self-Expressive Computing Systems From Psychology to Engineering.pdf]]

El documento seleccionado es el artículo de investigación **"Architectural Aspects of Self-Aware and Self-Expressive Computing Systems: From Psychology to Engineering"** (Aspectos Arquitectónicos de Sistemas de Cómputo Autoconscientes y Autoexpresivos: De la Psicología a la Ingeniería), escrito por Peter R. Lewis y sus colaboradores.

Este trabajo aborda la necesidad de una metodología general para diseñar y comparar sistemas de cómputo autoconscientes (_self-aware systems_). Los autores proponen un **marco conceptual, una arquitectura de referencia y patrones arquitectónicos** derivados, inspirados directamente en la **psicología humana de la autoconciencia**. El objetivo es permitir que los sistemas de cómputo gestionen de manera robusta y autónoma las compensaciones (_tradeoffs_) complejas y dinámicas en tiempo de ejecución.

### Resumen Completo del Documento

**1. Contexto y Problema (Sistemas Complejos y Autoconciencia):** Los sistemas de cómputo avanzados son grandes, descentralizados, dinámicos, inciertos y heterogéneos, y contienen múltiples subsistemas que interactúan con objetivos locales y globales a menudo en conflicto. Para mantener el rendimiento, la confiabilidad y la seguridad ante dinámicas imprevistas (como fallas o cambios de objetivos), estos sistemas deben exhibir un comportamiento autónomo sofisticado, adaptándose en tiempo de ejecución y aprendiendo continuamente.

Sin embargo, a pesar del trabajo en sistemas auto-gestionados, auto-adaptativos y de _Autonomic Computing_, **no existe una metodología general para la arquitectura de sistemas autoconscientes** ni para comparar sus capacidades. El trabajo busca abordar esta necesidad traduciendo los principios de la autoconciencia humana a la ingeniería.

**2. Fundamentos Psicológicos de la Autoconciencia Computacional:** El marco propuesto se basa en tres principios psicológicos clave:

- **Autoconciencia Pública vs. Privada:**
    - **Autoconciencia Privada (Implícita/Subjetiva):** El sistema obtiene conocimiento basado en fenómenos internos (ej., temperatura, consumo de batería).
    - **Autoconciencia Pública (Explícita/Objetiva):** El sistema obtiene conocimiento basado en fenómenos externos, incluyendo su situación, contexto y su impacto o rol en el entorno físico y social.
    - La integración de ambos es esencial para modelos conceptuales completos.
- **Niveles de Autoconciencia:** El marco adopta y mapea los **cinco niveles de autoconciencia de Ulric Neisser** a cinco niveles de autoconciencia computacional:
    1. **Conciencia del Estímulo (_Stimulus awareness_):** Conoce los estímulos que actúan sobre él (privada, pública o ambas).
    2. **Conciencia de la Interacción (_Interaction awareness_):** Aprende que sus acciones y los estímulos constituyen interacciones con el entorno, permitiendo razonar sobre la causalidad y las estructuras sociales (típicamente pública).
    3. **Conciencia del Tiempo (_Time awareness_):** Obtiene conocimiento de fenómenos históricos y probables futuros (privada, pública o ambas).
    4. **Conciencia del Objetivo (_Goal awareness_):** Obtiene conocimiento de los objetivos, preferencias y restricciones actuales, pudiendo razonar sobre ellos (privada, pública o ambas).
    5. **Meta-Autoconciencia (_Meta-self-awareness_):** Obtiene conocimiento de sus propios niveles de conciencia y cómo se ejercen, permitiendo el **razonamiento metacognitivo** para adaptar sus algoritmos de autoconciencia. (Es una forma de autoconciencia privada).
- **Autoconciencia Colectiva y Emergente:** La autoconciencia puede surgir como una propiedad del sistema colectivo, incluso si ningún componente individual posee conocimiento global. En estos sistemas descentralizados, el conocimiento global se mantiene de forma estadística o distribuida, impulsando la adaptación de los componentes de nivel inferior.

**3. Arquitectura de Referencia y Mecanismos:** La arquitectura de referencia (Figura 1) captura los aspectos centrales de la autoconciencia computacional como un **proceso o conjunto de procesos** preocupados por la actualización continua del conocimiento (ej., mediante aprendizaje _online_).

- **Bloques de Construcción:** Incluye sensores internos y externos, actuadores internos y externos, y los mecanismos de autoconciencia y autoexpresión.
- **Mecanismos de Autoconciencia:** Analizan datos de sensores para producir modelos de fenómenos internos o externos.
- **Mecanismos de Autoexpresión:** Utilizan el conocimiento obtenido (incluidos los objetivos) para tomar decisiones y emitir comandos a los actuadores, lo que constituye el **comportamiento basado en la autoconciencia**. La separación entre autoconciencia (conocimiento) y autoexpresión (decisión) es clave para la evaluación.
- **Rol de la Meta-Autoconciencia:** Juega un papel clave en la gestión de objetivos y _tradeoffs_, permitiendo que el sistema cambie de enfoque de un objetivo a otro o seleccione dinámicamente el algoritmo de aprendizaje más apropiado.

**4. Patrones Arquitectónicos y Caso de Estudio:** El trabajo deriva **ocho patrones arquitectónicos** a partir de la arquitectura de referencia. Se presentan tres ejemplos de patrones, desde el más simple hasta el más complejo:

- **Patrón Básico (Figura 2):** Contiene solo la **Conciencia del Estímulo**, permitiendo acciones basadas en el estímulo detectado.
- **Patrón de Toma de Decisiones Coordinada (Figura 3):** Añade la **Conciencia de la Interacción**, permitiendo a nodos múltiples coordinar decisiones al compartir conocimiento sobre sus interacciones y causalidad.
- **Patrón Totalmente Autoconsciente (Figura 4):** Añade Conciencia del Tiempo, Conciencia del Objetivo y Meta-Autoconciencia. Permite el pronóstico, la representación de objetivos cambiantes en tiempo de ejecución y la gestión de _tradeoffs_ mediante metarrazonamiento.

**Caso de Estudio (Cloud Computing):** Para evaluar los beneficios, se aplicó el patrón **"Goal sharing with time awareness"** (Conciencia del objetivo con conciencia del tiempo) al problema de **selección de servicios en la nube**.

- **Resultados de la Evaluación (ATAM):** Comparado con una arquitectura de tres capas preexistente, el sistema diseñado con el patrón propuesto manejó más eficazmente el **dinamismo y la incertidumbre** en los objetivos, la carga de trabajo y la disponibilidad del servicio.
- **Tradeoffs Explícitos:** El marco permitió la identificación explícita de puntos de compensación (_tradeoff points_) relacionados con la adaptabilidad (carga de comunicación, costo de escalabilidad y precisión de la selección).
- **Reducción de Riesgos:** El considerar explícitamente la interacción entre las preocupaciones de conocimiento (autoconciencia) **redujo los riesgos** que, en la arquitectura de tres capas, simplemente se identificaban como consecuencias.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de adoptar la autoconciencia y la utilidad del marco propuesto se fundamentan en las siguientes ideas clave:

1. **Los Principios de la Autoconciencia Humana son una Base Esencial y No Explotada para la Ingeniería de Sistemas Computacionales Sofisticados:** La conclusión de que la autoconciencia es crítica se basa en la necesidad de que los sistemas complejos manejen compensaciones dinámicas. El marco propone que la traducción sistemática de conceptos psicológicos (como los **cinco niveles de Neisser** y la distinción **Público/Privado**) proporciona un conjunto completo de capacidades para diseñar sistemas que pueden ir más allá de los bucles MAPE-K tradicionales.
2. **La Autoconciencia Computacional Debe Ser Estructurada y Descompuesta Explícitamente en Niveles y Procesos de Conocimiento:** La conclusión de la validez del marco se fundamenta en la **descomposición arquitectónica** del sistema en Autoconciencia (obtención de conocimiento), Autoexpresión (toma de decisiones) y Meta-Autoconciencia (gestión de la conciencia). Esta separación y el uso de patrones derivados simplifican la implementación, **reducen la posibilidad de introducir fallas** y facilitan la detección de las mismas.
3. **La Verificación y Adaptabilidad Mejoran cuando el Conocimiento y las Interacciones son Considerados Explícitamente como Ciudadanos de Primera Clase:** La conclusión sobre el mejor rendimiento del sistema de estudio de caso se fundamenta en el análisis ATAM. El considerar explícitamente la **interacción entre las preocupaciones de conocimiento** y la **representación explícita de objetivos** permitió al sistema manejar mejor el dinamismo y la incertidumbre en comparación con arquitecturas que simplemente agrupan el conocimiento.

---

### Valor del Paper

El artículo **"Architectural Aspects of Self-Aware and Self-Expressive Computing Systems: From Psychology to Engineering"** es un trabajo fundamental en el área de sistemas autónomos por su valor metodológico y conceptual:

- **Marco Fundacional General:** Proporciona un **marco general y sistemático** para describir y comparar las propiedades de autoconciencia en cualquier sistema de cómputo. Este marco, basado en la psicología, permite a los diseñadores considerar todo el espectro de capacidades de autoconciencia, no solo la IA más avanzada.
- **Arquitectura y Patrones Prácticos:** El _paper_ va más allá de la teoría al ofrecer una **arquitectura de referencia** y un **conjunto de patrones arquitectónicos** para la implementación. Estos patrones sirven como guías para construir sistemas con capacidades específicas de autoconciencia.
- **Validación de Metodología:** La evaluación cualitativa mediante ATAM en el caso de estudio de _cloud computing_ valida que el enfoque orientado a patrones **reduce los riesgos** y permite una **gestión más efectiva de los _tradeoffs_** y la adaptabilidad que las arquitecturas existentes.

El marco de autoconciencia es como darle a un vehículo autónomo la capacidad de **razonar sobre su propio proceso de pensamiento y su lugar en el mundo**. No solo le permite monitorear su consumo de combustible (conciencia privada de estímulo) y saber que frenar afecta al tráfico trasero (conciencia pública de interacción), sino que la **Meta-Autoconciencia** le permite preguntarse: "¿Estoy usando el mejor algoritmo de aprendizaje para la nieve actual?" y ajustarlo. Esta capacidad de reflexión interna y externa en múltiples niveles es lo que garantiza un comportamiento autónomo superior y robusto ante condiciones complejas.
