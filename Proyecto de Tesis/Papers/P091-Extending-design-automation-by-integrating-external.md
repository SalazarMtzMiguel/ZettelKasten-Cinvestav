#CitaLatex 
@inproceedings{Zhang2021Extendingdesign,
  title = {Extending design automation by integrating external services for product design},
  url = {http://dx.doi.org/10.1109/INDIN45523.2021.9557486},
  DOI = {10.1109/indin45523.2021.9557486},
  booktitle = {2021 IEEE 19th International Conference on Industrial Informatics (INDIN)},
  publisher = {IEEE},
  author = {Zhang,  Liang and Lobov,  Andrei},
  year = {2021},
  month = jul,
  pages = {1–6}
}

Referencia del archivo original: `(Liang Zhang) Extending design automation by integrating external.pdf` [[(Liang Zhang) Extending design automation by integrating external.pdf]]

El documento seleccionado es el artículo **"Extending design automation by integrating external services for product design"** (Extensión de la automatización del diseño mediante la integración de servicios externos para el diseño de productos), escrito por Liang Zhang y Andrei Lobov.

Este trabajo aborda la necesidad de extender la automatización del diseño de productos manufacturados, particularmente en el contexto de la Ingeniería Basada en el Conocimiento (_Knowledge-Based Engineering_, KBE), mediante la integración de servicios de cálculo externos.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Problema Central (KBE y la Industria 4.0):** La Industria 4.0 busca la promoción del diseño y la fabricación automáticas de productos personalizados. La **Ingeniería Basada en el Conocimiento (KBE)** es un enfoque competitivo para lograr esto. KBE utiliza plantillas paramétricas para automatizar el diseño de productos personalizados. Sin embargo, a medida que los productos personalizados se vuelven más complejos, sus análisis requieren conocimientos complejos que residen en diferentes dominios y que necesitan ser integrados.

El problema es cómo integrar conocimientos complejos externos (como los cálculos de ingeniería) en las aplicaciones KBE internas para garantizar que la solución final cumpla con los requisitos.

**2. La Solución Propuesta: Marco MOKA y Servicios Externos:** Los autores presentan un marco de aplicación de Ingeniería Basada en el Conocimiento (KBE) y Arquitectura Orientada a Servicios (SOA) llamado **MOKA** (_Methodology and Software oriented Knowledge Application_) para desarrollar una aplicación KBE que puede integrar cálculos externos.

- **SOA (Service-Oriented Architecture):** Se propone SOA como una buena solución para integrar los servicios de KBE externos. SOA permite la comunicación sobre una red y mantiene los componentes bien acoplados (_loosely coupled_), lo cual facilita la integración de nuevas funcionalidades sin modificar los componentes existentes.
- **Integración Paramétrica:** El enfoque KBE paramétrico es la forma más común de representar el conocimiento y permite la rápida implementación de las reglas de diseño y la producción en masa de productos personalizados.
- **Servicio de Cálculo Externo:** El concepto central es la integración de una calculadora profesional externa que proporciona información de ingeniería a la aplicación de diseño.

**3. Caso de Estudio: Conexión Madera-Madera:** Para demostrar cómo funciona la integración de cálculos externos en KBE, se utiliza un caso de estudio simple de una conexión madera-madera.

- **Producto:** Se personaliza una conexión madera-madera mediante diferentes tipos de sujetadores (pernos, tornillos, clavos) que proporcionan diferentes capacidades de carga lateral.
- **Cálculo Externo:** La capacidad de conexión es calculada por un servicio externo proporcionado por una organización profesional (ej., American Wood Council, AWC). Este servicio opera como una calculadora _online_ con una interfaz basada en web que proporciona la capacidad de conexión ajustada (_Adjusted ASD Capacity_).

**4. Arquitectura y Proceso de Diseño Automático:** El diseño automático propuesto se implementa en secuencia a través del **diseño paramétrico** y la **integración de servicios externos**.

- **Componentes Clave del Sistema:**
    
    - _**User Interface (UI):**_ Permite al diseñador o cliente ingresar los parámetros necesarios (ej., tipo de madera, dimensiones).
    - _**Data Class:**_ Contiene datos y parámetros (Tabla 1) y guías para el usuario.
    - _**Calculator_AWC_query:**_ El integrador que genera la _query_ (consulta) para obtener el resultado de la calculadora externa.
    - _**DFA_generator:**_ Genera el modelo 3D del producto final (archivo DFA) basado en el resultado del cálculo.
- **Proceso de Interacción:**
    
    1. El diseñador ingresa los parámetros y el valor a ser modificado.
    2. El programa KBE usa el _Calculator_AWC_query_ para enviar los parámetros y obtener el resultado del servicio externo a través de una solicitud **GET** HTTP.
    3. El integrador (la parte de _software_ del sistema) recibe y analiza la respuesta (que contiene la capacidad de carga ajustada).
    4. El resultado es pasado a la clase de diseño paramétrico.
    5. El _DFA_generator_ crea el modelo 3D del componente con los parámetros y el diseño de sujetador seleccionado.

**5. Conclusión y Resultados:** La integración del servicio de cálculo externo es la clave para extender la capacidad de las aplicaciones KBE. La arquitectura propuesta (SOA) y el diseño paramétrico permiten que la aplicación KBE **calcule la capacidad de conexión de forma fiable** y **genere automáticamente el modelo 3D** del producto final.

El enfoque propuesto permite validar el diseño. Por ejemplo, si el cliente requiere una capacidad de carga mayor a la calculada, el diseño **falla** (indicando la necesidad de un sujetador más fuerte).

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre el éxito de la integración de servicios externos en KBE y el valor del marco propuesto se fundamentan en las siguientes ideas clave:

1. **El Conocimiento Experto Crítico (Cálculos de Ingeniería) Reside Fuera de los Sistemas KBE Internos:** La conclusión de que la automatización del diseño debe extenderse se basa en la premisa de que el **conocimiento complejo y especializado** (ej., la capacidad de carga según las regulaciones de la industria maderera) es provisto por **expertos externos** o reside en sistemas fuera del control de la empresa. La integración es necesaria para mantener la validez de los resultados del diseño y la confiabilidad del producto.
2. **SOA Proporciona la Arquitectura Ideal para la Integración Flexible y Robusta de Conocimiento Heterogéneo:** La conclusión de que la integración es viable se fundamenta en el uso de la **Arquitectura Orientada a Servicios (SOA)**. SOA permite la **integración dinámica** de servicios externos mediante comunicación en red, manteniendo un acoplamiento laxo (_loosely coupled_) entre los componentes internos de KBE y los servicios externos. Esto hace que el sistema de diseño sea más flexible, mantenible y **robusto** ante los cambios en el _software_ externo o la adición de nuevas funcionalidades.
3. **La Integración de Cálculos Externos Permite la Validación Funcional del Diseño Automatizado:** La conclusión sobre el valor industrial del _paper_ se basa en la demostración de que la aplicación KBE puede usar el resultado del cálculo externo (capacidad de conexión) para **validar automáticamente el diseño**. Esto permite al sistema de diseño confirmar si el producto cumple con los requisitos funcionales del cliente (ej., si la capacidad de carga requerida es superada por el cálculo), una característica clave para la **producción de productos personalizados** y la **Industria 4.0**.

---

### Valor del Paper

El valor del artículo **"Extending design automation by integrating external services for product design"** reside en su enfoque práctico y arquitectónico para resolver un problema de integración crucial en el diseño automatizado:

- **Puente entre KBE y Conocimiento Externo:** El _paper_ proporciona un **método sistemático y viable** para que las aplicaciones de KBE, tradicionalmente centradas en el conocimiento interno paramétrico, incorporen **conocimiento experto complejo** (cálculos de ingeniería) que solo está disponible a través de servicios externos (ej., calculadoras _online_).
- **Validación de un Marco SOA/KBE:** El trabajo valida la aplicación del marco MOKA, utilizando la Arquitectura Orientada a Servicios (SOA), como un enfoque robusto para **extender la capacidad** de las aplicaciones KBE en entornos industriales.
- **Impacto en la Personalización Masiva:** El marco propuesto es un paso fundamental hacia la **automatización completa del diseño de productos personalizados** (un objetivo de la Industria 4.0). Al integrar la validación funcional basada en cálculos externos, el sistema asegura que los modelos 3D generados automáticamente (_DFA files_) sean tanto paramétricamente correctos como **funcionalmente válidos** para el cliente.

Este enfoque es análogo a un **arquitecto automatizado** que, en lugar de confiar únicamente en sus propios planos y conocimientos internos, está cableado para consultar a un **ingeniero estructural externo certificado** (el servicio de cálculo) antes de finalizar el diseño. Esto asegura que el diseño no solo sea estéticamente o paramétricamente correcto, sino que también **cumpla con las leyes de la física** (la capacidad de carga), lo cual es esencial para que la solución de diseño sea utilizable y segura.
