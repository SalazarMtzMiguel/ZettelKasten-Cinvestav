#CitaLatex 
@INPROCEEDINGS{NikolaevaDimitrichka2018Approachtobuildaclass,
  author={Nikolaeva, Dimitrichka Zheleva and Bozhikova, Violeta Todorova},
  booktitle={2018 IEEE XXVII International Scientific Conference Electronics - ET}, 
  title={Approach to build a class of Software Systems through a Combination of Design Patterns}, 
  year={2018},
  volume={},
  number={},
  pages={1-4},
  abstract={Design Patterns (DPs) are recognized as a tool that could be useful in solving repetitive problems that have arisen in real programming practice. The paper summarizes the combined use of DPs and the benefits of using DPs in software building, makes as a summary of Compound Design Patterns (CDP) classifications and presents an Approach to build a class of Software Systems through a Combination of DPs. The paper also presents real results from the use of the approach, namely the realization of an Information System (IS) for the purposes of Maritime Transport.},
  keywords={Production facilities;Software systems;Marine vehicles;Postal services;Automation;Tools;Design Patterns;Combination of Design Patterns;Software Reuse;Software Engineering},
  doi={10.1109/ET.2018.8549607},
  ISSN={},
  month={Sep.},}

Referencia del archivo original: `(Dimitrichka Zheleva) Approach to build a class of Software Systems through a Combination of Design Patterns.pdf` [[(Dimitrichka Zheleva) Approach to build a class of Software Systems through a Combination of Design Patterns.pdf]]

El documento seleccionado es el artículo de conferencia **"Approach to build a class of Software Systems through a Combination of Design Patterns"**, escrito por Dimitrichka Zheleva Nikolaeva y Violeta Todorova Bozhikova.

Este trabajo propone y presenta un **enfoque para construir una clase de Sistemas de Software (IS) mediante la combinación de Patrones de Diseño (DPs)**. El objetivo es abordar la necesidad de velocidad y automatización en el proceso de desarrollo de aplicaciones para fines comerciales.

A continuación, se presenta un resumen completo, se identifican las ideas clave que sustentan las conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Ventajas de los Patrones de Diseño Combinados (CDP):** Los Patrones de Diseño (DPs) son soluciones reconocidas para problemas repetitivos que surgen en la práctica de la programación real. Su uso, ya sea de forma individual o en combinación (CDP), ayuda a **reutilizar el código del programa**, lo que incrementa la productividad de los desarrolladores de _software_.

Las ventajas del uso combinado de DPs incluyen:

- Reutilización de código y automatización aplicable al desarrollo o expansión de _software_.
- Diseño de aplicaciones **flexible, extensible y modular**.
- Aplicaciones construidas de forma rápida y sencilla debido a la posibilidad de reutilización.
- Facilidad de mantenimiento, reducción de costos y acortamiento del tiempo de comercialización (_time for marketing_).

**2. Análisis de la Literatura y Clasificación de CDP:** El _paper_ resume la práctica existente del uso combinado de DPs, incluyendo la clasificación de Patrones de Diseño Compuestos (CDP). Se presenta un análisis de combinaciones de DPs del grupo Gang of Four (GOF). Los criterios de clasificación de CDP incluyen:

- Según las relaciones entre DPs (ej., el Patrón X usa al Patrón Y en su decisión, o pueden combinarse).
- Según la similitud entre DPs (ej., _Factory Method_, _Abstract Factory_, _Builder_ son similares).
- Dependiendo de la superposición (_overlap_) entre DPs (conservadora vs. superposición).

**3. El Enfoque Propuesto (ABDP):** El enfoque propuesto está diseñado para construir una clase de Sistemas de Información (IS) con funcionalidades comunes específicas:

- Acceso a bases de datos relacionales (RDB).
- Cifrado y descifrado de datos.
- Entrega de correo electrónico (E-mail delivery).
- Trabajo con menús básicos y auxiliares.
- Entrada y modificación de datos en RDB.
- Generación de informes.

El enfoque sugerido (denominado ABCDP en la Tabla 1) es una combinación de cuatro DPs del grupo GOF: **Singleton, Abstract Factory, Façade y Command**.

Este conjunto de 4 DPs se utiliza para resolver 6 tipos de tareas:

1. **Abstract Factory:** Para trabajar con el Registro de Usuario (_User Registry_), el Cifrado y Descifrado de Datos, y para la entrada y modificación de datos en RDB.
2. **Singleton:** Para acceder a la RDB.
3. **Command:** Para usar los menús.
4. **Façade:** Para la entrada y cálculo de datos, y para enviar correos electrónicos.

**4. Implementación del Sistema de Información (IS) para Transporte Marítimo:** El enfoque propuesto fue utilizado para desarrollar un IS para los propósitos del Transporte Marítimo.

- **Herramientas:** Se utilizó SQL Server para la base de datos relacional, Visual Studio y el lenguaje de programación C#.
- **Funcionalidad:** El IS tiene usuarios de tipo administrador y operador. La funcionalidad principal se basa en la aplicación del enfoque de combinación de DPs y cubre elementos como el formulario de registro, el registro de buques (_Ship register_), el diario de buques (_Ship diary_) para el cálculo de consumo de combustibles, y la referencia temporal (_Time reference_) para generar cinco tipos de informes automáticos (ej., NOON Report, _End/Commence of Sea Passage_) en formato .xmls. También incluye una función _Send Mail_ para enviar informes generados a la oficina.
- **Implementación de Patrones:** Se desarrollaron DPs especializados basados en los patrones GOF fundamentales para cubrir las 6 tareas (ej., _AbstractFactorySHA256_ basado en _Abstract Factory_ para el registro de usuario; _DPSingleton_ basado en _Singleton_ para el acceso a RDB).

**5. Conclusiones y Futuro:** Los DPs son herramientas útiles para resolver problemas repetitivos en la programación. El enfoque desarrollado permite construir una clase de sistemas de _software_ mediante la combinación de patrones GOF. Los resultados reales (el IS para Transporte Marítimo) se implementaron utilizando este enfoque. La investigación futura se centrará en evaluar el enfoque midiendo el mantenimiento del _software_ a través de indicadores como la Complejidad Ciclomática (_Cyclomatic Complexity_), Acoplamiento de Clases (_Class Coupling_), Índice de Mantenibilidad (_Maintainability Index_) y Líneas de Código (_Lines of Code_). El uso de DPs no tiene un impacto negativo en la productividad, e incluso si surgen problemas en códigos de alta complejidad, son más fáciles de eliminar en _software_ donde se aplican DPs.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez y utilidad del enfoque propuesto se basan en las siguientes ideas clave:

1. **La Reutilización de Código como Acelerador de Productividad:** La conclusión sobre la utilidad del enfoque se fundamenta en la premisa de que la combinación de DPs (CDP) facilita la **reutilización de código y la automatización**. Esto es la solución directa al problema empresarial de la **velocidad y la automatización** en el desarrollo de aplicaciones.
2. **La Abstracción de Tareas Comunes a Patrones GOF Específicos:** La viabilidad del enfoque se sustenta en la idea de que un conjunto limitado de tareas comunes a los IS (ej., acceso a RDB, gestión de menús, cifrado) puede ser mapeado de manera efectiva y exhaustiva a un **subconjunto de patrones GOF** (Singleton, Abstract Factory, Façade y Command).
3. **Verificación Práctica a Través de un Caso de Estudio Real:** La credibilidad del enfoque se establece mediante la **implementación exitosa de un Sistema de Información real** para el Transporte Marítimo. Este resultado práctico demuestra que la combinación de patrones propuesta funciona para construir sistemas complejos con funcionalidades comunes.

---

### Valor del Paper

El valor del _paper_ "Approach to build a class of Software Systems through a Combination of Design Patterns" reside en su **contribución práctica y su rigor metodológico aplicado** en el campo de la reutilización de _software_:

- **Guía Práctica para el Desarrollo de IS:** El trabajo proporciona una **solución arquitectónica específica y probada** (la combinación de Singleton, Abstract Factory, Façade y Command) para una clase común de Sistemas de Información, lo que representa una herramienta valiosa para los desarrolladores que buscan velocidad y modularidad.
- **Sistematización de CDP:** El artículo ofrece un valor de investigación al **resumir y clasificar** la práctica existente de los Patrones de Diseño Compuestos (CDP), incluyendo criterios basados en las relaciones y la superposición de patrones.
- **Énfasis en la Evaluación de la Mantenibilidad:** Al proyectar la evaluación futura del enfoque a través de métricas cuantitativas clave de calidad de código (ej., Complejidad Ciclomática, Índice de Mantenibilidad), el _paper_ subraya la importancia de los DPs no solo para la productividad inicial, sino también para la **mantenibilidad y longevidad** del _software_ resultante.

El valor de este enfoque es que funciona como una "plantilla arquitectónica" predefinida que, al ensamblar patrones robustos y probados (GOF) de una manera específica, permite a los desarrolladores construir rápidamente sistemas con funcionalidades estándar, aprovechando los beneficios de la reutilización y el diseño modular.