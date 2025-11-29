#CitaLatex 
@INPROCEEDINGS{Valiev2016Pattern-design,
  author={Valiev, R. A. and Khuzyatov, Sh. Sh.},
  booktitle={2016 2nd International Conference on Industrial Engineering, Applications and Manufacturing (ICIEAM)}, 
  title={Pattern-design software of automated control systems}, 
  year={2016},
  volume={},
  number={},
  pages={1-4},
  keywords={Sensors;Software;Actuators;Process control;Automation;Arrays;automation;control system;software;pattern-design;supervisory control},
  doi={10.1109/ICIEAM.2016.7910942}}


Referencia del archivo original: `(Valiev R.A.) Pattern-design software of automated control systems.pdf` [[(Valiev R.A.) Pattern-design software of automated control systems.pdf]]

El documento seleccionado es el artículo **"Pattern-design Software of Automated Control Systems"** (Software de Diseño de Patrones para Sistemas de Control Automatizado), escrito por Valiev R.A. y Khuzyatov Sh.Sh.

Este trabajo describe un método de diseño de patrones (_pattern design_) para el desarrollo de _software_ de Sistemas de Control Industrial (ICS) con el objetivo de reducir el tiempo de desarrollo y la necesidad de alta calificación por parte de los programadores.

### Resumen Completo del Documento

**1. Problema y Motivación:** La automatización de procesos industriales a menudo involucra un **gran número de sensores y actuadores**. La complejidad de las relaciones entre las configuraciones y los datos de estos objetos complica el desarrollo del _software_ para los ICS. Aunque las herramientas modernas simplifican la creación de sistemas de control, manejar un gran número de sensores y actuadores requiere mucho tiempo. Dado que muchos sistemas de control solo difieren entre sí en la cantidad de estos elementos, se vuelve **oportuno utilizar proyectos de plantilla** (_template projects_) que puedan adaptarse fácilmente a los requisitos específicos.

**2. Solución Propuesta: Método de Diseño de Patrones (Pattern Design):** El método de diseño de patrones propuesto se basa en el principio de **dividir un problema complejo en problemas más pequeños**. El enfoque utiliza la clasificación y el análisis de objetos de manera que se puedan representar las complejas interacciones de los elementos del sistema.

**3. Componentes y Estructura del Patrón:** Los proyectos de plantilla se basan en _hardware_ y _software_ de Siemens. El _software_ del controlador lógico programable (PLC) se diseña en **Step 7**, y el _software_ de la Interfaz Humano-Máquina (HMI), para monitoreo y control supervisorio, se desarrolla en el sistema **WinCC SCADA**.

- **Objetos de Nivel Inferior:** Los elementos de automatización (sensores y actuadores) se seleccionan como los objetos del nivel jerárquico inferior.
- **Unificación:** Se definieron tipos de datos, almacenamiento de datos y funcionalidad unificados para estos objetos. Se aplican **algoritmos unificados** para el procesamiento de datos y el cálculo de acciones de control.
- **Tipos de Datos y Estructuras:**
    - En Step 7 (PLC), se crean tipos de datos definidos por el usuario (**UDTk**) para cada tipo de sensor o actuador, diseñados para almacenar datos de entrada/salida y configuraciones.
    - En WinCC (HMI), se crean tipos de estructura correspondientes (**STk**). Los tipos de elementos de datos se alinean entre Step 7 (REAL, INT, BOOL) y WinCC (FLOAT, WORD, BIT) para garantizar la correcta comunicación.
- **Almacenamiento de Datos:** El almacenamiento de datos de objetos del mismo tipo en el PLC se implementa como un **bloque de datos (DBk)**, el cual es un **array unidimensional** con elementos del tipo UDTk. En el HMI, se crean etiquetas de estructura (Tkm) que se agrupan en grupos de etiquetas (TGk).
- **Intercambio de Datos en Red:** El intercambio de datos entre el PLC y el HMI se simplifica enormemente debido a la capacidad de Step 7 y WinCC para intercambiar bloques de datos. La condición clave para el intercambio correcto es la **correspondencia de la etiqueta de estructura del HMI con el elemento del array en el DBk**, lo cual se logra al seleccionar el _offset_ del elemento del array en el DBk como la dirección de la etiqueta de estructura Tkm. El intercambio de datos es **independiente del número de sensores y actuadores**.
- **Funcionalidad:** El _software_ del controlador se implementa mediante el lenguaje **SCL** (_Structured Control Language_), ya que permite la implementación de algoritmos complejos y el manejo eficiente de grandes cantidades de datos estructurados mediante operadores de ciclo.

**4. Procedimiento de Uso y Aplicación Práctica:** El desarrollo para un objeto de automatización específico comienza con el análisis para determinar el número de elementos en el array DBk. La configuración del HMI se realiza copiando el proyecto de plantilla y duplicando las pantallas de proceso y _scripts_. La separación de objetos por tipo facilita la **configuración automatizada** del proyecto HMI, que puede implementarse como una aplicación VBA.

El método se implementó y demostró su efectividad en el desarrollo de sistemas de control automatizado para **instalaciones de producción de petróleo**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ sobre la simplificación, la adaptabilidad y la universalidad del método de diseño de patrones se fundamentan en las siguientes ideas clave:

1. **La Complejidad del ICS es Manejable Mediante la Unificación de Elementos de Bajo Nivel:** La conclusión de que el método simplifica el desarrollo de _software_ y requiere menos habilidades de programación se basa en la idea de que los elementos de automatización (sensores y actuadores) pueden tratarse como **objetos de patrón** a los que se les aplican **algoritmos de procesamiento de datos y cálculo de acciones de control unificados**. Esto permite predeterminar la estructura y funcionalidad del _software_.
2. **El Uso de Arrays Unidimensionales de Estructuras Correlacionadas es la Clave para el Intercambio de Datos Escalable y Fiable:** La conclusión de la robustez y adaptabilidad del sistema se fundamenta en la implementación del almacenamiento de datos como un **array unidimensional (DBk)** en el PLC, cuyos elementos corresponden a **etiquetas de estructura (Tkm)** en el HMI mediante la dirección de _offset_. Este enfoque garantiza un **intercambio de datos correcto en la red** y lo hace **independiente del número de sensores y actuadores**.
3. **La Separación de Objetos por Tipo Permite la Adaptación Simple de la Cantidad de Elementos, Asegurando la Universalidad del Enfoque:** La conclusión de que el método tiene una aplicabilidad universal a varios procesos industriales se basa en la idea de que la estructura de los proyectos de plantilla hace que la adaptación a un nuevo sistema de control sea tan simple como determinar el **número de elementos en el array del bloque de datos (DBk)**. Esto se demostró en la automatización de varias instalaciones de producción de petróleo que comparten algoritmos comunes.

---

### Valor del Paper

El artículo **"Pattern-design Software of Automated Control Systems"** tiene un valor eminentemente práctico y de ingeniería, ofreciendo una solución concreta y validada para la industria:

- **Ahorro de Tiempo y Reducción de Costos:** El valor más directo es la capacidad de los proyectos de plantilla para **reducir considerablemente el tiempo necesario** para el desarrollo de _software_ de ICS. Esto también reduce la necesidad de programadores altamente calificados para tareas repetitivas.
- **Solución Estandarizada e Integrada:** El trabajo proporciona una metodología rigurosa para integrar los componentes de _software_ (Step 7) y la interfaz de usuario (WinCC) utilizando **estándares de datos estructurados y direcciones de _offset_**, lo que garantiza la fiabilidad y coherencia del sistema de control.
- **Enfoque Escalable y Automatizable:** La estructura basada en arrays y la separación de objetos por tipo no solo facilita la adaptación simple a diferentes cantidades de equipos, sino que también permite la **configuración automatizada** de objetos del proyecto HMI (por ejemplo, mediante una aplicación VBA).
- **Universalidad Demostrada:** La validación exitosa del método en la automatización de diversas instalaciones de producción de petróleo subraya su **carácter universal** para la automatización de diversos procesos industriales.

El método de diseño de patrones es como crear un **kit de construcción modular** para sistemas de control industrial. En lugar de diseñar manualmente cada sensor y su comunicación individualmente (un proceso largo y propenso a errores), el método predefine las "piezas" (tipos de datos UDTk y STk) y establece la "tubería de comunicación" estandarizada (el array DBk y el _offset_ de dirección). Esto permite ensamblar rápidamente un sistema de control a gran escala simplemente especificando **cuántas piezas** de cada tipo se necesitan.
