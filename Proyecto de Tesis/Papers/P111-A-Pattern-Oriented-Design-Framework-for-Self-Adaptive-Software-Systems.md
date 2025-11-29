#CitaLatex 
@inproceedings{Arcaini2019APattern-Oriented,
  title = {A Pattern-Oriented Design Framework for Self-Adaptive Software Systems},
  url = {http://dx.doi.org/10.1109/ICSA-C.2019.00037},
  DOI = {10.1109/icsa-c.2019.00037},
  booktitle = {2019 IEEE International Conference on Software Architecture Companion (ICSA-C)},
  publisher = {IEEE},
  author = {Arcaini,  Paolo and Mirandola,  Raffaela and Riccobene,  Elvinia and Scandurra,  Patrizia},
  year = {2019},
  month = mar,
  pages = {166–169}
}

Referencia del archivo original: `(Paolo Arcaini) A Pattern-Oriented Design Framework for Self-Adaptive Software Systems.pdf` [[(Paolo Arcaini) A Pattern-Oriented Design Framework for Self-Adaptive Software Systems.pdf]]

El documento seleccionado es el artículo **"A Pattern-oriented Design Framework for Self-adaptive Software Systems"** (Un Marco de Diseño Orientado a Patrones para Sistemas de _Software_ Autoadaptativos), escrito por Paolo Arcaini, Raffaela Mirandola, Elvinia Riccobene y Patrizia Scandurra.

Este trabajo presenta un **marco de diseño orientado a patrones** basado en el lenguaje de modelado **MSL** (_MAPE Specification Language_), destinado a facilitar el diseño, la validación y la verificación de sistemas de _software_ autoadaptativos (SA) complejos.

### Resumen Completo del Documento

**1. Contexto y Problema Central (Sistemas Autoadaptativos):** La autoadaptación (SA) es una característica esencial de los sistemas de _software_ que operan en **entornos dinámicos** y con condiciones operacionales cambiantes. Las soluciones arquitectónicas para la SA suelen centrarse en bucles de control de retroalimentación basados en el paradigma **MAPE-K** (_Monitor, Analyze, Plan, and Execute_ sobre un _shared Knowledge_). Para los sistemas descentralizados, se introducen **múltiples bucles MAPE-K interactuantes**, estructurados según **patrones de diseño específicos**. El diseño de estos sistemas complejos requiere herramientas que permitan la fácil **instanciación de los patrones MAPE**, el mapeo automático a **lenguajes de dominio específico** y el soporte de **Validación y Verificación (V&V)** para asegurar el desarrollo correcto de sistemas fiables.

**2. El Marco MSL Propuesto:** El marco MSL sigue una metodología de diseño _up-front_ y persigue un enfoque de ingeniería riguroso pero amigable. Soporta tres capacidades principales:

- **Modelado Explícito de Patrones:** El marco permite el **modelado explícito** de la lógica de adaptación en términos de patrones de bucles MAPE-K interactivos. MSL es un lenguaje de modelado textual que adopta los mismos conceptos que la notación gráfica MAPE y proporciona _constructs_ para definir variaciones semánticas en las interacciones. Todos los patrones propuestos en la literatura son disponibles como patrones integrados (_built-in_).
- **Codificación a Dominio Específico:** Permite sintetizar artefactos de modelado o código para un contexto y alcance de implementación específico. Actualmente, MSL soporta la codificación automática hacia las reglas de control de **OpenHAB** (_Open Home Automation Bus_), una plataforma de _software_ de código abierto para automatización del hogar. El mapeo transforma los componentes MAPE en reglas de tipo **Evento-Condición-Acción** de OpenHAB, las cuales pueden ser refinadas manualmente para añadir lógica de control específica de la aplicación.
- **Validación y Verificación (V&V) Formal:** El marco integra el _toolset_ **ASMETA** (_ASM mETAmodeling_) para realizar análisis formales. Los modelos MSL pueden transformarse automáticamente en modelos formales **Abstract State Machines (ASMs)** autoadaptativas. Estos modelos ASM expresan y garantizan, por construcción, la semántica de interacción de los bucles, y pueden ser simulados (simulación animada mostrada en la Fig. 4) o verificados mediante análisis estático y **verificación de modelos** (usando AsmetaSMV, como se muestra en la Fig. 5). Esto permite obtener _feedback_ temprano sobre la correcta ejecución de los bucles.

**3. Caso de Estudio (Automatización del Hogar):** El marco se ilustra con un ejemplo de automatización de hogar inteligente centrado en la preocupación de adaptación **"Calefacción Confortable (CH)"**. Este bucle de adaptación, que utiliza una instancia del patrón **AggregateMAPE**, gestiona los termostatos basándose en sensores remotos para garantizar el confort térmico, regulando la calefacción según el perfil energético del hogar. El modelo MSL para CH se transforma para su simulación y verificación formal en ASMETA, comprobando propiedades como la no-conflictividad y la minimidad. Posteriormente, la estructura del bucle se codifica automáticamente en el motor de reglas de OpenHAB.

**4. Conclusión:** El marco MSL define e instancia patrones de bucles de retroalimentación MAPE-K. Los _back-ends_ actualmente soportados son **ASMETA** para V&V, y **OpenHAB** para codificación y ejecución de procesos de automatización. Como trabajo futuro, los autores planean extender MSL con estrategias de composición de instancias de patrones y probar la aplicabilidad en dominios diferentes al de la automatización del hogar.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la robustez y utilidad del marco MSL se fundamentan en las siguientes ideas clave:

1. **El Diseño de Sistemas SA Complejos Requiere Estructuración Rigurosa Mediante Patrones:** La conclusión de que el marco es un avance útil se basa en el requisito de que los sistemas descentralizados con múltiples bucles de control deben ser diseñados rigurosamente utilizando **patrones predefinidos de interacción MAPE**. MSL adopta estos patrones como ciudadanos de primera clase (_first-class citizens_) para proporcionar **soluciones arquitectónicas rápidas** y garantizar la corrección desde la etapa de diseño _up-front_.
2. **La Verificación y Validación Formal Temprana (V&V) es Indispensable para Garantizar la Fiabilidad de la Lógica de Adaptación:** La conclusión sobre la solidez del marco se fundamenta en la capacidad de transformar los modelos MSL en modelos formales **self-adaptive ASMs**. El uso de ASMETA para la simulación y verificación de propiedades temporales (como viveza, no-conflicto y corrección de las interacciones) proporciona **_feedback_ temprano** y aumenta la confianza en el desarrollo de sistemas fiables.
3. **La Síntesis Automatizada de Código para Plataformas Específicas Facilita la Adopción y la Prueba en el Dominio (Trazabilidad del Diseño a la Ejecución):** La conclusión sobre la aplicabilidad del marco se basa en su capacidad para codificar automáticamente los modelos MSL en reglas ejecutables (como las de **OpenHAB**). Esto proporciona una **implementación rápida** de la solución arquitectónica y permite la evaluación en un contexto específico, asegurando que el diseño abstracto se mapee de manera coherente a la implementación real.

---

### Valor del Paper

El artículo **"A Pattern-oriented Design Framework for Self-adaptive Software Systems"** ofrece un valor significativo para la Ingeniería de _Software_ Autoadaptativo:

- **Integración de _Toolchain_ Completa:** El principal valor es la propuesta de un **marco de trabajo unificado (MSL)** que integra el modelado abstracto de patrones, la **verificación formal rigurosa** (ASMETA) y la **síntesis de código** para plataformas de ejecución reales (OpenHAB). Esto aborda la necesidad de una cadena de herramientas que garantice un desarrollo riguroso y fácil de usar para sistemas SA.
- **Enfoque de Patrones Formales:** Al formalizar los patrones de interacción de los bucles MAPE-K y usarlos como base de diseño, el _paper_ proporciona un medio para crear soluciones arquitectónicas **bien estructuradas y verificables**.
- **Superación de Limitaciones de Trabajos Previos:** El enfoque de MSL es **formal** y soporta explícitamente **patrones**, lo que lo diferencia de trabajos relacionados que usan notaciones semi-formales (como SOTA con UML) o que no soportan patrones (como ACTRESS).

El marco MSL es como un **compilador de planos arquitectónicos inteligentes**. En lugar de dibujar a mano cada elemento del sistema de adaptación (los bucles MAPE-K), el arquitecto utiliza **patrones pre-certificados** (los patrones MAPE) para el diseño. El sistema no solo genera automáticamente la lista de materiales (el código OpenHAB), sino que también tiene un **ingeniero de seguridad formal (ASMETA)** que, antes de construir nada, garantiza matemáticamente que todos los componentes interactuarán correctamente sin conflictos, asegurando así la fiabilidad del sistema final.
