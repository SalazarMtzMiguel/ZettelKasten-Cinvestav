#CitaLatex 
@INPROCEEDINGS{Joachim2015ATestingScheme,
  author={Hänsel, Joachim and Vogel, Thomas and Giese, Holger},
  booktitle={2015 IEEE International Conference on Self-Adaptive and Self-Organizing Systems Workshops}, 
  title={A Testing Scheme for Self-Adaptive Software Systems with Architectural Runtime Models}, 
  year={2015},
  volume={},
  number={},
  pages={134-139},
  abstract={Self-adaptive software systems (SASS) are equipped with feedback loops to adapt autonomously to changes of the software or environment. In established fields, such as embedded software, sophisticated approaches have been developed to systematically study feedback loops early during the development. In order to cover the particularities of feedback, techniques like one-way and in-the-loop simulation and testing have been included. However, a related approach to systematically test SASS is currently lacking. In this paper we therefore propose a systematic testing scheme for SASS that allows engineers to test the feedback loops early in the development by exploiting architectural runtime models. These models that are available early in the development are commonly used by the activities of a feedback loop at runtime and they provide a suitable high-level abstraction to describe test inputs as well as expected test results. We further outline our ideas with some initial evaluation results by means of a small case study.},
  keywords={Adaptation models;Testing;Software;Runtime;Feedback loop;Monitoring;Analytical models},
  doi={10.1109/SASOW.2015.27},
  ISSN={},
  month={Sep.},}

Referencia del archivo original: `(Joachim Hänsel) A Testing Scheme for Self-Adaptive Software Systems with Architectural Runtime Models.pdf` [[(Joachim Hänsel) A Testing Scheme for Self-Adaptive Software Systems with Architectural Runtime Models.pdf]]

El documento seleccionado es el artículo de investigación **"A Testing Scheme for Self-Adaptive Software Systems with Architectural Runtime Models"** (Un Esquema de Prueba para Sistemas de Software Autoadaptativos con Modelos Arquitectónicos en Tiempo de Ejecución), escrito por Joachim Hänsel, Thomas Vogel y Holger Giese.

Este artículo aborda la necesidad de un proceso de prueba sistemático y temprano para los Sistemas de Software Autoadaptativos (SASS).

### Resumen Completo del Documento

**1. El Problema de las Pruebas en SASS:** Los sistemas de _software_ autoadaptativos (SASS) se distinguen de los sistemas tradicionales de "bucle abierto" porque están equipados con **bucles de retroalimentación (_feedback loops_)** que les permiten adaptarse de forma autónoma a los cambios en el _software_ o en el entorno. Aunque las pruebas son una técnica establecida para garantizar la calidad en sistemas tradicionales y críticos para la seguridad, actualmente **no existe un proceso sistemático de prueba** similar que proporcione garantías continuas y tempranas para los SASS.

En los SASS, el sistema suele estar dividido en dos partes: el **Motor de Adaptación (_Adaptation Engine_)**, que realiza el bucle de retroalimentación, y el **Software Adaptable (_Adaptable Software_)**, que es controlado por el motor. Los enfoques de prueba existentes para SASS suelen ser aplicables solo en etapas posteriores del desarrollo, ya que asumen que la implementación completa del _software_ adaptable y el bucle de retroalimentación están disponibles. Esto **impide la prueba temprana** y hace costosa la eliminación de fallos descubiertos tarde en el desarrollo. Además, los SASS a menudo monitorean y adaptan la **arquitectura** del _software_, lo que difiere del ajuste simple de parámetros en sistemas embebidos tradicionales.

**2. La Solución Propuesta: RTMs Arquitectónicos:** Los autores proponen un esquema de prueba sistemático que permite a los ingenieros probar los bucles de retroalimentación **tempranamente** en el desarrollo. La clave de este enfoque es la explotación de los **Modelos Arquitectónicos en Tiempo de Ejecución (RTMs)**.

- **RTMs y MAPE-K:** Un RTM es una representación del _software_ adaptable y del entorno que es utilizada por el Motor de Adaptación como base de conocimiento para realizar la autoadaptación. El bucle de retroalimentación se estructura típicamente según el modelo de referencia **MAPE-K** (Monitor, Analyze, Plan, Execute, Knowledge). El RTM refleja el estado actual del _software_ y del entorno.
- **Abstracción para Pruebas:** Los diferentes estados del RTM (por ejemplo, $S_M$ después del monitoreo, $S_A$ después del análisis, $S_P$ después de la planificación) son el **elemento clave** para describir el comportamiento de entrada/salida de las actividades MAPE. El RTM facilita la consideración del comportamiento requerido del motor de adaptación a un **nivel de abstracción mucho más alto** que los eventos de bajo nivel.

**3. El Esquema de Pruebas por Etapas:** El esquema de prueba propuesto se estructura en etapas, permitiendo que las actividades MAPE-K se prueben individualmente mientras las partes no implementadas se **simulan** basándose en los RTMs.

- **Pruebas Unidireccionales (_One-Way Testing_):**
    
    - Implica probar actividades MAPE individuales (como _Analyze_ o _Plan_) o fragmentos (como _Analyze_ y _Plan_ juntos, o _Execute_ y _Monitor_ juntos) en una sola ejecución.
    - Se proporciona un RTM de entrada y un RTM "oráculo" esperado. El modelo de salida se compara con el oráculo.
    - La prueba de _Analyze_ y _Plan_ conjuntamente es más efectiva ya que elimina la necesidad de conocer los modelos intermedios esperados de _Analyze_.
    - La prueba de _Execute_ y _Monitor_ debe hacerse en conjunto con el _software_ adaptable en funcionamiento, comparando el modelo RTM de entrada al paso _Execute_ ($S_{P1}$) con el modelo RTM observado después del paso _Monitor_ ($S_{M2}$).
- **Pruebas "En el Bucle" (_In-the-Loop Testing_):**
    
    - Se utiliza para identificar errores que surgen de un **estado acumulado del sistema** (secuencias de entradas).
    - Se simula un autómata llamado **RTMS** que captura el comportamiento combinado del _software_ adaptable, el entorno, _Monitor_ y _Execute_.
    - El RTMS proporciona secuencias de RTMs a los pasos _Analyze_ y _Plan_. Esto permite probar el bucle de retroalimentación temprano, incluso si el _software_ adaptable o los pasos _Monitor_ y _Execute_ no están listos.
    - Se puede realizar como **Caja Negra** (probando _Analyze_ y _Plan_ en conjunto) o **Caja Gris** (inspeccionando el resultado de _Analyze_).
- **Pruebas en Línea y Validación (_Online Testing and Validation_):**
    
    - En una etapa posterior, el modelo de simulación RTMS y las propiedades definidas pueden **reutilizarse** junto con el sistema real en funcionamiento.
    - La validación es importante para asegurar la **calidad del propio RTMS** y agregar secuencias de fallos no cubiertas al RTMS para pruebas de regresión.

**4. Evaluación Inicial:** La evaluación inicial demostró los beneficios de usar RTMs para implementar un marco de prueba, facilitado por la reutilización de técnicas de Ingeniería Dirigida por Modelos (MDE), como el **Eclipse Modeling Framework (EMF)** para cargar y comparar modelos genéricamente. La implementación de un simulador para el entorno mRUBiS (un mercado de internet) validó que el enfoque _In-the-Loop_ es útil para que los estudiantes desarrollen y prueben diferentes técnicas de adaptación.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la efectividad del esquema propuesto, especialmente para detectar fallos tempranamente, se fundamentan en las siguientes ideas clave:

1. **El RTM Proporciona la Interfaz de Abstracción para Pruebas Modulares:** La conclusión de que el esquema permite la prueba temprana y modular se basa en la idea de que el RTM actúa como un **interfaz de alto nivel** entre las actividades MAPE. Los estados del RTM (por ejemplo, $S_M$, $S_A$, $S_P$) permiten describir la entrada/salida de las actividades. Esto permite a los ingenieros probar individualmente actividades como _Monitor_, _Analyze_, _Plan_ y _Execute_ o fragmentos de ellas, ya que pueden ser reemplazadas por la simulación del RTM en las partes no implementadas.
2. **La Simulación de Secuencias con RTMS Satisface la Necesidad de Pruebas de Estado Acumulado:** La necesidad de las pruebas _In-the-Loop_ se fundamenta en que las pruebas unidireccionales no pueden capturar errores que surgen de un **estado acumulado** del sistema. La introducción del **modelo de simulación RTMS** permite generar secuencias de RTMs realistas que simulan el comportamiento dinámico del _software_ adaptable y del entorno, permitiendo así pruebas rigurosas en etapas tempranas.
3. **La Adaptación a las Fases del Desarrollo (Pruebas por Etapas) Reduce los Costos:** El valor del esquema se basa en que su estructura por etapas, inspirada en sistemas embebidos, permite el **refinamiento incremental** de los componentes del bucle de retroalimentación. Al encontrar fallos tempranamente mediante pruebas unidireccionales o _in-the-loop_, se **reducen los costos** asociados con la corrección de fallos descubiertos tarde en el desarrollo.

---

### Valor del Paper

El valor del artículo **"A Testing Scheme for Self-Adaptive Software Systems with Architectural Runtime Models"** es significativo para la Ingeniería de Sistemas Autoadaptativos:

- **Resolución de una Brecha Metodológica:** El _paper_ aborda una brecha crítica al proponer el **primer esquema de prueba sistemático** para SASS que no depende de que el sistema adaptable esté completamente implementado.
- **Facilitación de Pruebas Tempranas y Ahorro de Costos:** Al permitir la prueba modular de las actividades MAPE-K en las primeras etapas de desarrollo mediante la explotación de los RTMs y la simulación, el esquema **reduce el costo y el esfuerzo** de la ingeniería de SASS.
- **Integración de MDE y Pruebas:** El enfoque demuestra cómo las técnicas de **Ingeniería Dirigida por Modelos (MDE)** y los RTMs pueden reutilizarse para simplificar el desarrollo de un marco de prueba (ej., usando EMF para la comparación genérica de modelos).
- **Hoja de Ruta de Pruebas Integral:** Proporciona un marco de prueba que abarca las necesidades desde las pruebas unitarias básicas (_One-Way Testing_) hasta las pruebas de secuencia complejas (_In-the-Loop Testing_) y la validación en el sistema en funcionamiento (_Online Testing_).
