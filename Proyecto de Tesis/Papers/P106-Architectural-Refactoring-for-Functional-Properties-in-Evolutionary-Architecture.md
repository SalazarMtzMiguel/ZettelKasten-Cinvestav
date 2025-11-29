#CitaLatex 
@inproceedings{Chondamrongkul2022ArchitecturalRefactoring,
  title = {Architectural Refactoring for Functional Properties in Evolutionary Architecture},
  url = {http://dx.doi.org/10.1109/ICSA53651.2022.00022},
  DOI = {10.1109/icsa53651.2022.00022},
  booktitle = {2022 IEEE 19th International Conference on Software Architecture (ICSA)},
  publisher = {IEEE},
  author = {Chondamrongkul,  Nacha and Sun,  Jing},
  year = {2022},
  month = mar,
  pages = {146–156}
}

Referencia del archivo original: `(Nacha Chondamrongkul) Architectural Refactoring for Functional Properties in Evolutionary Architecture.pdf` [[(Nacha Chondamrongkul) Architectural Refactoring for Functional Properties in Evolutionary Architecture.pdf]]

El documento seleccionado es el artículo **"Architectural Refactoring for Functional Properties in Evolutionary Architecture"** (Refactorización Arquitectónica para Propiedades Funcionales en Arquitectura Evolutiva), escrito por Nacha Chondamrongkul y Jing Sun.

Este trabajo propone un enfoque para **automatizar la refactorización del diseño arquitectónico** en sistemas de _software_ que siguen una Arquitectura Evolutiva. El objetivo es garantizar que, a medida que el sistema evoluciona para soportar cambios en la funcionalidad, las modificaciones en el diseño arquitectónico no impacten negativamente en las funcionalidades existentes, al tiempo que se incorporan nuevas funcionalidades.

### Resumen Completo del Documento

**1. Problema y Contexto (Arquitectura Evolutiva):** Los sistemas de _software_ requieren cambios constantes, siendo la adición y/o actualización de funcionalidades una de las principales razones para estas modificaciones. Muchos de estos cambios funcionales exigen la modificación del diseño arquitectónico, lo cual impacta en gran parte del sistema. La Arquitectura Evolutiva (AE) apoya estos cambios constantes mediante pequeñas modificaciones incrementales a lo largo del tiempo. En AE, las **funciones de aptitud (_fitness functions_)** se definen para garantizar que se cumplen los objetivos arquitectónicos a medida que el sistema evoluciona.

Sin embargo, refactorizar el diseño arquitectónico es un desafío complejo. Los enfoques existentes se centran principalmente en el nivel de implementación (_código_), son costosos de probar, o se enfocan en requisitos no funcionales (_non-functional requirements_, NFR) sin abordar los **requisitos funcionales** (_functional requirements_).

**2. Enfoque Propuesto (Formal Modeling y Verificación):** El enfoque propuesto automatiza el proceso de refactorización y verificación aplicando **métodos formales** como el **razonamiento ontológico** y la **verificación de modelos (_model checking_)** al diseño arquitectónico.

El proceso general (Figura 1, Sección II) consta de varios pasos:

1. **Modelado del Diseño Actual:** El diseño actual se modela formalmente, incluyendo el **modelo de diseño** (estructura, relaciones y patrones arquitectónicos) y las **propiedades de verificación** (comportamiento esperado del sistema).
2. **Configuración del Cambio:** Se define una **configuración de cambio** que incluye un **diseño de referencia** (_reference design_) y nuevas propiedades funcionales.
3. **Refactorización Guiada por Trazas de Estado:** El verificador de modelos (_model checker_) simula el diseño de referencia y verifica sus propiedades. La **traza de estado (_states trace_)** resultante, que describe la secuencia de ejecución de los componentes, se utiliza para guiar la refactorización del diseño actual y crear el **diseño objetivo (_target design_)**.
4. **Verificación del Diseño Objetivo:** El diseño objetivo se verifica formalmente utilizando las funciones de aptitud (la verificación formal) para comprobar que satisface tanto las funcionalidades existentes (que deben preservarse) como las nuevas.

**3. Modelado y Especificación Formal:** El enfoque utiliza el punto de vista de Componente y Conector (C&C):

- **Modelado Estructural:** Se utiliza **Ontology Web Language (OWL)** para describir la estructura (componentes, conectores, roles, puertos). El **razonamiento ontológico** garantiza que la estructura del diseño refactorizado se ajuste a los patrones arquitectónicos (Cliente-Servidor, Publish-Subscribe, etc.).
- **Modelado Conductual:** Se utiliza el **Lenguaje de Descripción Arquitectónica (ADL)** Wright#. El comportamiento se define mediante Procesos Secuenciales Comunicantes (CSP).
- **Especificación de Propiedades:** Las funcionalidades del sistema se definen formalmente como **propiedades de viveza (_liveness properties_)** utilizando la **Lógica Temporal Lineal (LTL)** (ej., $\square (\text{EventoFuente} \rightarrow \Diamond \text{EventoRespuesta})$). Se utiliza **PAT** (_Process Analysis Toolkit_) como verificador de modelos.

**4. Algoritmos de Refactorización:** El _paper_ propone algoritmos guiados por las trazas de estado del diseño de referencia para automatizar tres tipos de refactorización:

- **1. Reemplazo de Configuración (_Configuration Replacement_):** Se utiliza cuando una funcionalidad existente necesita ser reemplazada por una nueva configuración (ej., cambiar el procesamiento de pagos interno por una pasarela de pago externa). El Algoritmo 1 reemplaza componentes y conectores asociados al evento fuente de la propiedad de referencia por la nueva configuración.
- **2. Extensión de Configuración (_Configuration Extending_):** Se utiliza para agregar nuevos elementos arquitectónicos al diseño actual sin reemplazar los existentes (ej., añadir un servicio de inicio de sesión único, SSO). El Algoritmo 2 crea nuevos conectores y componentes y los adjunta a partes existentes o nuevas, guiado por los eventos de la traza.
- **3. Reflejo de Configuración (_Configuration Mirrorring_):** Un tipo especial de extensión donde el diseño actual se utiliza como diseño de referencia para replicar una funcionalidad existente con un nuevo propósito (ej., replicar la función de _Ride-Sharing_ para un servicio de _Delivery_).

**5. Evaluación y Resultados:** El enfoque se evaluó con cuatro sistemas de _software_ reales (Agri Digital, Life Net, Sock Shop y Ride Share).

- **Métricas:** Se midió la **tasa de _recall_** (para la integridad de la refactorización, verificando que todas las propiedades deseadas se cumplen) y la **tasa de _precision_** (para la corrección, asegurando que el diseño objetivo cumple las expectativas del arquitecto).
- **Resultados:** Se obtuvo una **tasa de _recall_** de 1.0 en los cuatro sistemas, lo que significa que todas las funcionalidades y propiedades arquitectónicas deseadas se probaron como válidas en el diseño refactorizado.
- **Limitaciones (Falsos Positivos):** Se identificaron escenarios de **falsos positivos** (donde la precisión fue menor a 1.0 en ADG y LIN), causados principalmente por la definición incorrecta de las propiedades funcionales nuevas, lo que resultaba en la creación de "segmentos aislados" sin conectividad al resto del sistema.

Las conclusiones sugieren que el enfoque funciona bien bajo circunstancias normales, especialmente si se añaden restricciones para verificar que las nuevas propiedades funcionales se integren correctamente con el diseño existente.

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la efectividad del enfoque para la refactorización arquitectónica automatizada y verificada se fundamentan en las siguientes ideas clave:

1. **La Refactorización de Diseño Dirigida por Funcionalidades Requiere un Enfoque Formal que los Métodos Actuales Ignoran:** La conclusión de que se necesita esta solución se basa en que los enfoques existentes se centran en el nivel de código o en NFRs, y **ninguno aborda la refactorización a nivel arquitectónico para soportar nuevos requisitos funcionales**. El uso de **métodos formales** (OWL, Wright#, LTL) y la verificación de modelos permite garantizar la **satisfacción de las propiedades funcionales y arquitectónicas** en las etapas tempranas del diseño, lo cual es más rentable que la re-prueba a nivel de código.
2. **Las Trazas de Estado (Derivadas de la Verificación Formal del Diseño de Referencia) Son el Mecanismo más Preciso para Guiar la Refactorización Automatizada:** La conclusión sobre la implementación del refactorizador se fundamenta en la capacidad de la verificación formal para generar **trazas de estado** que son una descripción precisa y secuencial de la **ejecución de componentes y conectores**. Los algoritmos propuestos utilizan estas trazas de estado para **imitar el comportamiento** del diseño de referencia al configurar el diseño objetivo, asegurando así que el resultado refactorizado cumpla el nuevo requisito funcional.
3. **La Verificación Formal Funciona como una Función de Aptitud (_Fitness Function_) Rigurosa para la Arquitectura Evolutiva:** La conclusión sobre la utilidad en AE se basa en la definición de que la **verificación formal es la función de aptitud automatizada**. Al verificar formalmente las propiedades funcionales existentes y nuevas, se garantiza la **conservación de funcionalidades** (_preservation of existing functions_) y la **integración correcta** de los nuevos requisitos, lo que permite planificar una **evolución incremental y segura** del sistema.

### Valor del Paper

El artículo **"Architectural Refactoring for Functional Properties in Evolutionary Architecture"** tiene un valor significativo para la Ingeniería de _Software_ y la Arquitectura de _Software_ Evolutiva:

- **Innovación en Refactorización de Diseño:** El _paper_ aborda una brecha crítica en la literatura al proponer un **enfoque automatizado de refactorización a nivel de diseño** enfocado explícitamente en los **requisitos funcionales**, donde la mayoría de los trabajos se enfocan en la implementación o NFRs.
- **Marco de Garantía de Calidad Temprana:** Al aplicar técnicas formales (OWL/Wright#/LTL/PAT) como función de aptitud, el enfoque **garantiza la corrección del diseño** antes de que se invierta un esfuerzo costoso en la implementación. Esto aumenta la confiabilidad del proceso de Evolución Arquitectónica.
- **Herramienta Práctica (ArchModeller):** La implementación de los algoritmos en la herramienta **ArchModeller**, que permite a los ingenieros de _software_ modelar, refactorizar y verificar de manera fluida, aumenta el valor práctico del enfoque y facilita su adopción industrial.

El enfoque propuesto es como un **cirujano robótico** para la arquitectura de _software_. En lugar de realizar una "cirugía" (refactorización) costosa y riesgosa directamente en el paciente (el código), este sistema permite al arquitecto **modelar la cirugía en un simulador 3D (el diseño de referencia)** y obtener la secuencia exacta de movimientos necesarios (la traza de estado). El "robot" (el algoritmo) ejecuta entonces la refactorización en el diseño, y antes de pasar al paciente real, un **sistema de verificación formal** (_fitness function_) certifica que la nueva configuración es segura y que todas las funciones vitales (las propiedades funcionales) siguen intactas.
