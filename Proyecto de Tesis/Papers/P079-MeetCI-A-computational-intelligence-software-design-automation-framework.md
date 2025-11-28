#CitaLatex 
@INPROCEEDINGS{KhokhlovIgor2018MeetCI,
  author={Khokhlov, Igor and Jain, Chinmay and Miller-Jacobson, Ben and Heyman, Andrew and Reznik, Leonid and Jacques, Robert St.},
  booktitle={2018 IEEE International Conference on Fuzzy Systems (FUZZ-IEEE)}, 
  title={MeetCI: A Computational Intelligence Software Design Automation Framework}, 
  year={2018},
  volume={},
  number={},
  pages={1-8},
  abstract={Computational Intelligence (CI) algorithms/techniques are packaged in a variety of disparate frameworks/applications that all vary with respect to specific supported functionality and implementation decisions that drastically change performance. Developers looking to employ different CI techniques are faced with a series of trade-offs in selecting the appropriate library/framework. These include resource consumption, features, portability, interface complexity, ease of parallelization, etc. Considerations such as language compatibility and familiarity with a particular library make the choice of libraries even more difficult. The paper introduces MeetCI, an open source software framework for computational intelligence software design automation that facilitates the application design decisions and their software implementation process. MeetCI abstracts away specific framework details of CI techniques designed within a variety of libraries. This allows CI users to benefit from a variety of current frameworks without investigating the nuances of each library/framework. Using an XML file, developed in accordance with the specifications, the user can design a CI application generically, and utilize various CI software without having to redesign their entire technology stack. Switching between libraries in MeetCI is trivial and accessing the right library to satisfy a user's goals can be done easily and effectively. The paper discusses the framework's use in design of various applications. The design process is illustrated with four different examples from expert systems and machine learning domains, including the development of an expert system for security evaluation, two classification problems and a prediction problem with recurrent neural networks.},
  keywords={Libraries;XML;Software;Computational intelligence;Machine learning;Tools;Software algorithms;Software design automation;computational intelligence techniques;computational intelligence libraries},
  doi={10.1109/FUZZ-IEEE.2018.8491664},
  ISSN={},
  month={July},}

Referencia del archivo original: `(Igor Khokhlov) MeetCI A computational intelligence software design automation framework.pdf` [[(Igor Khokhlov) MeetCI A computational intelligence software design automation framework.pdf]]

El documento seleccionado es el artículo **"MeetCI: A Computational Intelligence Software Design Automation Framework"** (MeetCI: Un Marco de Automatización del Diseño de Software de Inteligencia Computacional), escrito por Igor Khokhlov, Chinnay Jain, Ben Miller-Jacobson, Andrew Heyman, Leonid Reznik y Robert St.Jacques.

El trabajo presenta **MeetCI**, un marco de _software_ de código abierto diseñado para **automatizar el diseño de soluciones de Inteligencia Computacional (CI)**, haciendo que las técnicas complejas de CI sean accesibles para usuarios sin necesidad de una experiencia profunda en la implementación de algoritmos.

A continuación, se presenta un resumen claro y completo del marco, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del _paper_.

### Resumen Completo del Documento

**1. El Problema de la Inteligencia Computacional (CI) en el Desarrollo de Software:** La CI es un campo de rápido desarrollo que incluye Redes Neuronales Artificiales, lógica difusa (_fuzzy logic_), algoritmos genéticos y sistemas expertos. A lo largo de las últimas décadas, la comunidad de CI ha desarrollado una gran cantidad de algoritmos y metodologías.

El desarrollo de _software_ que utiliza técnicas de CI presenta varios desafíos:

- **Diversidad de Bibliotecas:** Existen muchas bibliotecas de código abierto y propietario con diferentes interfaces de usuario, dependencias, complejidad, mantenibilidad y sintaxis.
- **Dificultad de Elección:** Para los nuevos usuarios, puede ser difícil, lento y tedioso decidir qué biblioteca o algoritmo es el más adecuado para su problema.
- **Superposición de Funcionalidades:** Múltiples bibliotecas a menudo ofrecen funcionalidades superpuestas, lo que complica la decisión de implementación.
- **Alto Costo de Cambio:** Elegir una biblioteca o _framework_ de CI significa un compromiso a largo plazo. Si la biblioteca necesita ser reemplazada, el código requiere ser reescrito, lo que genera grandes costos y retrasos.

**2. La Solución Propuesta: MeetCI Framework:** MeetCI es un marco que **unifica el acceso a una variedad de bibliotecas y algoritmos de CI**. Está diseñado como una aplicación de _software_ de diseño asistido para tareas de CI, permitiendo a los usuarios centrarse en la aplicación y no en la implementación del algoritmo.

**3. Características y Arquitectura de MeetCI (Uso de XML):** El marco MeetCI está diseñado para ser accesible, escalable y modular.

- **Abstracción y XML:** El marco utiliza **archivos XML** para describir los problemas de CI. Un archivo XML captura la esencia del problema de diseño y la validez de las tareas futuras. Un XML define el problema de CI (clasificación, _clustering_, etc.), restringiendo la elección de los algoritmos de CI en función del problema.
- **Proceso para el Usuario:** El usuario especifica su problema y el algoritmo de CI deseado en un archivo XML. MeetCI parsea este archivo.
    - Si el usuario no especifica un algoritmo, MeetCI intenta determinar uno.
    - MeetCI utiliza el archivo XML para recuperar información relevante, incluyendo si el problema es de clasificación o de sistemas expertos.
- **Arquitectura de Plugins:** MeetCI implementa una **arquitectura de _plugins_** que permite un acceso uniforme a bibliotecas escritas en diferentes lenguajes (ej., Java, Python, C++). El núcleo de MeetCI está escrito en Python.
- **Adaptadores (Wrappers):** Los Adaptadores de Validación (_Validation Adapters_) son clave para integrar funcionalidades de bibliotecas existentes directamente en MeetCI. Estos adaptadores permiten a MeetCI acceder a la funcionalidad de la biblioteca, mientras que la biblioteca sigue utilizando su propia interfaz.
- **Reutilización y Mantenibilidad:** Al utilizar un único archivo XML dentro de MeetCI, el usuario puede **cambiar de biblioteca sin problemas** (a menudo solo cambiando una única línea de código). Esto es esencial para la **mantenibilidad** a largo plazo y para el proceso de **comparación** entre bibliotecas y algoritmos.

**4. Tipos de Problemas de CI Soportados:** MeetCI se centra principalmente en el diseño de algoritmos de CI. El _framework_ soporta dos categorías principales de problemas en el XML:

- **Aprendizaje Automático (_Machine Learning_):** Se subdivide en tareas como **clasificación, _clustering_, etc.**. Para cada subcategoría, el XML define un conjunto único de elementos de algoritmo y un conjunto de ítems de datos.
- **Sistemas Expertos (_Expert Systems_):** Estos sistemas se representan como reglas y hechos. Un sistema experto se basa en una serie de **reglas** que tienen una condición (_predicado_) y una acción (_actuación_). MeetCI también soporta la **definición de una clase de acción de base** que es extendida por las subclases de acción de base (ej., `<equal>`, `<lessThan>`).

**5. Uso y Casos de Implementación:** MeetCI utiliza una vista de representación visual del proceso de un modelo entrenado. El _framework_ puede utilizarse para una variedad de aplicaciones de CI.

- **Ventaja Educativa:** MeetCI es útil en entornos educativos para demostrar el poder de los _frameworks_ de CI sin requerir que los estudiantes aprendan un nuevo lenguaje de programación o manipulación de código.
- **Ejemplos de Aplicación:** El documento presenta ejemplos de implementación para varios problemas clásicos de CI, incluyendo:
    - **Problema Iris (Clasificación):** Demuestra cómo se puede cambiar fácilmente la biblioteca de PyBrain a Neuroph (o viceversa) solo con modificar el archivo XML.
    - **Problema MNIST (Reconocimiento de Dígitos):** Muestra el uso de la biblioteca Theano y Multi-Layer Perceptron (MLP).
    - **Reconocimiento de Voz:** Demuestra el uso de una Red Neuronal Recurrente con la biblioteca PyBrain.
    - **Evaluación de Sistemas Expertos (ESSA):** Muestra cómo evaluar riesgos de seguridad utilizando reglas basadas en sistemas expertos.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que MeetCI es un marco valioso para la automatización, la comparación y la enseñanza de CI se fundamentan en las siguientes ideas clave:

1. **La Abstracción del Algoritmo de CI Permite la Comparación y Flexibilidad:** La conclusión de que MeetCI es una solución robusta se basa en el requisito de que el usuario no debería tener que preocuparse por los detalles de implementación específicos de la biblioteca. Al utilizar el formato **XML para describir el problema de CI**, MeetCI logra una **abstracción de alto nivel** de las implementaciones. Esta abstracción es lo que permite que el usuario **cambie de biblioteca y algoritmo** rápidamente, a menudo simplemente editando una línea en el archivo XML.
2. **La Arquitectura de Plugins Satisface la Necesidad de Heterogeneidad Lingüística y de Herramientas:** La conclusión sobre la capacidad de MeetCI para superar el problema del "choque de bibliotecas" se basa en su **arquitectura de _plugins_** y **adaptadores (wrappers)**. Esto permite integrar bibliotecas escritas en diferentes lenguajes (Java, Python, C/C++) en un marco unificado. Esta flexibilidad es esencial porque la comunidad de CI utiliza una amplia variedad de herramientas, y MeetCI asegura que la funcionalidad de estas herramientas sea accesible mediante una única interfaz.
3. **El Enfoque Basado en XML Proporciona Estandarización y Validación Rigurosa:** La conclusión sobre la fiabilidad del sistema se basa en que la descripción de los problemas y algoritmos en **XML** se valida mediante un **esquema XSD**, lo que asegura que el archivo XML es sintácticamente correcto y contiene todos los elementos necesarios. Esta estandarización no solo facilita la lectura y el procesamiento por parte de MeetCI, sino que también garantiza que las especificaciones sean claras y completas.

---

### Valor del Paper

El valor del artículo **"MeetCI: A Computational Intelligence Software Design Automation Framework"** es significativo para la Ingeniería de _Software_ y la Inteligencia Computacional:

- **Democratización de la CI:** MeetCI ofrece una **plataforma multiservicio** (_multisourced platform_) que hace que la Inteligencia Computacional sea **accesible a usuarios finales y desarrolladores sin experiencia**. Supera el obstáculo de la implementación compleja al permitir que los usuarios se concentren en la definición del problema y la aplicación.
- **Herramienta para la Comparación y el _Benchmarking_**: El marco es una herramienta poderosa para **comparar diferentes algoritmos e implementaciones de CI** bajo las mismas condiciones y medir su precisión, rendimiento, uso de recursos y tiempo de implementación. Esto es invaluable para fines de desarrollo profesional y educativo.
- **Plataforma Robusta y Mantenible:** La arquitectura basada en XML y _plugins_ garantiza la **mantenibilidad y extensibilidad** a largo plazo del sistema, permitiendo la fácil adición de nuevas bibliotecas y el intercambio de código sin reescritura significativa, lo cual aborda directamente uno de los mayores desafíos del desarrollo de _software_ de CI.

MeetCI es como un **adaptador universal para un conjunto de herramientas especializado**. En lugar de requerir que un desarrollador compre docenas de herramientas y aprenda los manuales individuales (bibliotecas de CI), MeetCI ofrece una única estación de trabajo (el marco) que puede alojar cualquiera de esas herramientas (a través de _plugins_) y permite al usuario cambiarlas con un simple interruptor (el archivo XML), facilitando la comparación y asegurando que siempre se use la herramienta correcta para el trabajo.
