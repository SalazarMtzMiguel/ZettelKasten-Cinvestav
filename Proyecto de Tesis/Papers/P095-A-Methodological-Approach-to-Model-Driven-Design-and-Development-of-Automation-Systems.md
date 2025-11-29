#CitaLatex 
@article{Alvarez2018MethodologicalApproach,
  title = {A Methodological Approach to Model-Driven Design and Development of Automation Systems},
  volume = {15},
  ISSN = {1558-3783},
  url = {http://dx.doi.org/10.1109/TASE.2016.2574644},
  DOI = {10.1109/tase.2016.2574644},
  number = {1},
  journal = {IEEE Transactions on Automation Science and Engineering},
  publisher = {Institute of Electrical and Electronics Engineers (IEEE)},
  author = {Alvarez,  Maria Luz and Sarachaga,  Isabel and Burgos,  Arantzazu and Estevez,  Elisabet and Marcos,  Marga},
  year = {2018},
  month = jan,
  pages = {67–79}
}

Referencia del archivo original: `(María Luz Alvarez) A Methodological Approach to Model-Driven Design and Development of Automation Systems.pdf` [[(María Luz Alvarez) A Methodological Approach to Model-Driven Design and Development of Automation Systems.pdf]]

El documento seleccionado es el artículo **"A Methodological Approach to Model-Driven Design and Development of Automation Systems"** (Un Enfoque Metodológico para el Diseño y Desarrollo Dirigido por Modelos de Sistemas de Automatización), escrito por María Luz Alvarez, Isabel Sarachaga, Arantzazu Burgos, Elisabet Estévez y Marga Marcos.

Este trabajo aborda la creciente complejidad de la automatización industrial, que exige la adopción de principios de ingeniería de _software_ (SE) para mejorar el proceso de desarrollo de sistemas de control. El desarrollo de _software_ de control se considera uno de los desafíos clave para lograr el liderazgo en el futuro mercado económico.

### Resumen Completo del Documento

**1. Problema y Solución Central (MDE):** La automatización y los sistemas de control requieren características como reusabilidad, flexibilidad, modularidad, y confiabilidad. Aunque se ha reconocido la necesidad de metodologías y herramientas de SE en el dominio de la automatización, la adaptación de metodologías generales (como UML o SysML) ha tenido una pobre aceptación industrial debido a la necesidad de experiencia en prácticas de SE.

Para resolver estas deficiencias, el artículo presenta un enfoque metodológico que se basa en la **Ingeniería Dirigida por Modelos (MDE)**. MDE permite definir la estructura, el comportamiento y los requisitos de la aplicación mediante abstracciones de modelado específicas del dominio (metamodelos) y motores de transformación que sintetizan artefactos.

**2. El Marco MeiA (Metodología y Arquitectura):** El marco implementa la **Metodología para Sistemas de Automatización Industrial (MeiA•)**. MeiA• guía a los desarrolladores a través de seis fases de desarrollo que se relacionan con diferentes modos de operación del sistema de automatización:

- **Fase 1:** Secuencia Principal (arranque, parada segura, señales de coordinación).
- **Fase 2:** Operación Manual (verificación de movimientos individuales).
- **Fase 3:** Operación de Prueba (verificación paso a paso o continua del ciclo).
- **Fase 4:** Fallos (diagnóstico y recuperación de fallos).
- **Fase 5:** Emergencia (acciones para llevar el proceso a un estado seguro).
- **Fase 6:** Producción Normal (acciones del proceso para definir el ciclo de producción).

**3. MDE y Componentes Clave:** El marco MeiA se adhiere a los principios de MDE y utiliza la terminología del campo de la automatización. La arquitectura del marco se basa en cuatro modelos de dominio principales:

- _**MeiA Model (MeiA_M):**_ El modelo central generado por el Módulo de Análisis que implementa la metodología MeiA•.
- _**GEMMA Model (GEMMA_M):**_ Contiene la información para generar la documentación de análisis relacionada con la guía GEMMA (Guía de Modos de Estudio y Paradas/Arranques), que describe los estados de arranque/parada y las transiciones de un proceso automatizado. GEMMA es una extensión natural de GRAFCET para definir modos de operación.
- _**UseCase Model (UseCase_M):**_ Contiene información para generar documentación sobre casos de uso (requisitos funcionales y no funcionales).
- _**Design Model (Design_M):**_ Contiene las **Unidades Mínimas de Diseño (DOUs)**, que son GRAFCETs. El modelo adopta el _Intermediate Modeling Layer_ (IML) de AutomationML para la representación de los elementos GRAFCET.

**4. Generación Automática de Artefactos:** El sistema utiliza transformaciones M2M (Modelo a Modelo) y M2T (Modelo a Texto) para automatizar la generación de artefactos de desarrollo:

- **Documentación de Análisis:** Generación automática de diagramas GEMMA y de Casos de Uso (UML-like).
- **Documentación de Diseño:** Generación automática de las DOUs (como GRAFCETs).
- **Generación de Código:** Generación del esqueleto de las Unidades de Organización de Programa (**POUs**) a partir de las DOUs, en formato **PLCopen XML**, utilizando un generador de código SFC (Sequential Function Chart) compatible con IEC 61131-3. Existe una correspondencia uno a uno entre DOUs y POUs.

**5. Evaluación del Rendimiento:** Un prototipo del _framework_, desarrollado con Eclipse IDE y tecnologías XML/Java, se probó en 45 proyectos de complejidad media. La evaluación del rendimiento, utilizando criterios de calidad específicos para el trabajo del desarrollador, mostró tendencias informativas:

- El uso del _framework_ MeiA mostró los **mejores indicadores** en comparación con el desarrollo basado solo en la experiencia o solo en la metodología MeiA•.
- Se observó una **mejora significativa en la documentación** debido a la generación automática.
- Se observó una **reducción de errores de diseño** y un aumento en el **diseño estructurado**, ya que los modos de operación del sistema se analizan de forma independiente.
- Se espera una **reducción del tiempo de desarrollo** y del tiempo de comercialización (_time to market_) debido a la reducción de errores y la mejor calidad del diseño y la documentación.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la superioridad del enfoque MDE asistido por MeiA• y su potencial para mejorar la productividad se fundamentan en las siguientes ideas clave:

1. **La Ingeniería de Software debe Adaptarse a la Terminología y los Métodos del Dominio de la Automatización:** La conclusión de que el enfoque es efectivo se basa en la idea de que los desarrolladores de automatización no adoptan fácilmente las metodologías de SE genéricas (como UML). El éxito reside en la **sinergia** de utilizar **MDE** (que ofrece la abstracción y la automatización) con **métodos y estándares familiares** en el campo, como **GEMMA** y **GRAFCET**, lo que facilita la aceptación industrial y la comprensión del modelo.
2. **La Metodología MeiA• Guía Sistemáticamente la Estructuración del Diseño Basada en Modos de Operación:** La conclusión sobre la reducción de errores y el diseño estructurado se fundamenta en el marco MeiA•, que obliga a los desarrolladores a analizar el sistema en **seis perspectivas distintas** (modos de operación). Este proceso procedimental garantiza la **identificación completa de los modos de operación** y el análisis de sus requisitos, reduciendo los errores de diseño y facilitando los procedimientos de verificación.
3. **La Automatización Basada en MDE Genera Artefactos de Alta Calidad y Trazabilidad:** La conclusión sobre la mejora de la productividad y la documentación se fundamenta en la capacidad de las **transformaciones M2M y M2T** para generar automáticamente **documentación gráfica y textual** precisa utilizando terminología de dominio. Esto asegura un **diseño estructurado** (DOUs), una **mejor documentación** y la **trazabilidad** entre los módulos de requisitos y diseño, lo que a su vez **reduce significativamente el tiempo de desarrollo**.

---

### Valor del Paper

El artículo **"A Methodological Approach to Model-Driven Design and Development of Automation Systems"** es de gran valor para el campo de la automatización industrial y la Ingeniería de _Software_ aplicada:

- **Integración Metodológica Validada:** El principal valor es la propuesta y validación de una **metodología de desarrollo completa (MeiA•)**, implementada en un _framework_ MDE, que cubre sistemáticamente todas las fases del ciclo de vida del _software_ de automatización (análisis, diseño, implementación y operación).
- **Promoción de la Adopción de MDE:** El _paper_ demuestra cómo el MDE puede ser exitosamente introducido en la automatización industrial al utilizar un **lenguaje específico del dominio** (GEMMA, GRAFCET) en lugar de las complejas notaciones de SE general (UML/SysML).
- **Impacto Cuantificable en la Calidad:** El trabajo proporciona **evidencia empírica** de que el _framework_ MeiA **mejora la productividad**, la **calidad del diseño** y la **documentación**, y reduce los errores en proyectos de complejidad media. Esto se logra mediante el diseño estructurado, el uso de modelos con semántica bien definida y la portabilidad del proyecto a través de PLCopen XML.

El marco MeiA es comparable a un **kit de herramientas de fábrica inteligente** que sistematiza y automatiza el proceso de diseño. En lugar de que los ingenieros construyan el _software_ de control de forma artesanal o con manuales genéricos, el marco proporciona **planos y guías específicas** (la metodología MeiA• basada en GEMMA/GRAFCET) y, además, actúa como una **impresora 3D** (las transformaciones MDE) que convierte automáticamente esos planos en la documentación formal y el código base necesario (PLCopen XML), asegurando que el producto final sea estructurado, verificable y consistente.
