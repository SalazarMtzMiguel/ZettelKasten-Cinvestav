#CitaLatex 
@inproceedings{Mukhiya2019AnArchitectural,
  title = {An Architectural Design for Self-Reporting E-Health Systems},
  url = {http://dx.doi.org/10.1109/SEH.2019.00008},
  DOI = {10.1109/seh.2019.00008},
  booktitle = {2019 IEEE/ACM 1st International Workshop on Software Engineering for Healthcare (SEH)},
  publisher = {IEEE},
  author = {Mukhiya,  Suresh Kumar and Rabbi,  Fazle and Pun,  Ka I and Lamo,  Yngve},
  year = {2019},
  month = may,
  pages = {1–8}
}

Referencia del archivo original: `(Suresh Kumar) An Architectural Design for Self-Reporting E-Health Systems.pdf` [[(Suresh Kumar) An Architectural Design for Self-Reporting E-Health Systems.pdf]]

El documento seleccionado para el análisis es el artículo **"An architectural design for self-reporting e-health systems"** (Un diseño arquitectónico para sistemas de _e-salud_ de autoinforme), escrito por Suresh Kumar, Fazle Rabbi, Ka I Pun y Yngve Lamo.

Este trabajo presenta una **arquitectura interoperable basada en la nube** y construida sobre una **Arquitectura Orientada a Servicios (SOA)**, denominada **INTROMAT Core**, para tratamientos basados en Internet. El objetivo es permitir que los pacientes interactúen directamente con los sistemas de atención sanitaria subyacentes, como los Registros de Salud Electrónicos (EHRs). El sistema propuesto está diseñado para la detección (_screening_) y el monitoreo de morbilidades de salud mental y neurológica, utilizando el estándar de interoperabilidad sanitaria **HL7 FHIR**.

### Resumen Completo del Documento

**1. Problema y Motivación (Costos, Capacidad y Heterogeneidad):** La atención sanitaria pública a nivel mundial enfrenta desafíos para ofrecer servicios consistentes y rentables debido al aumento de los costos, el crecimiento de la población y el mayor costo de los tratamientos. Muchas instalaciones sanitarias están alcanzando su capacidad máxima. El campo de la _e-salud_ busca mitigar esta necesidad utilizando Tecnologías de la Información y Comunicación (TIC).

Un requisito común en las aplicaciones de _e-salud_ es el intercambio de información entre sistemas y el soporte a los pacientes mientras están en casa. Sin embargo, los métodos existentes para obtener datos de los pacientes (como encuestas electrónicas) **no están integrados con los EHRs existentes, los datos no están estandarizados ni son interoperables**, y no son fácilmente accesibles para médicos e investigadores. Esto limita la capacidad de los proveedores de atención médica para utilizar sistemas estandarizados de recopilación y análisis de información de pacientes fuera del hospital.

El artículo aborda específicamente tres desafíos:

- La heterogeneidad de la información sanitaria entre diversos proveedores.
- La falta de tratamientos integrados basados en Internet que sean accesibles.
- La falta de adaptabilidad en la atención centrada en el paciente.

**2. Solución Arquitectónica (INTROMAT Core y SOA):** Para resolver los problemas de interoperabilidad, heterogeneidad y estandarización, los autores proponen la arquitectura **INTROMAT Core**, construida sobre SOA.

- **Estándares Clave (HL7 FHIR):** La solución se centra en superar los problemas de interoperabilidad adoptando el estándar de recursos de interoperabilidad rápida de la atención sanitaria (FHIR) HL7. HL7 FHIR utiliza estándares web como XML, JSON, HTTP y OAuth. Los FHIR Resources son componentes modulares que se agrupan para formar sistemas de salud funcionales. La arquitectura utiliza **SMART on FHIR**, que actúa como un _service broker_ y proporciona gestión de identidad, acceso a datos y secuencias de lanzamiento.
- **Componentes (SOA):** La arquitectura se compone de entidades clave que comunican mediante el intercambio de información a través de recursos HL7 FHIR:
    - **Mobile Client y Web Client:** Actúan como consumidores de servicios (_service requester/consumer_). El cliente móvil permite la adquisición y transmisión de datos (incluyendo datos de sensores _wearables_).
    - **Authorization Server:** Servidor compatible con OpenID Connect para autenticación y concesión de tokens de acceso.
    - **Resource Server:** Servidor web compatible con FHIR que actúa como proveedor de servicios (_service provider_). Responde a las solicitudes REST de FHIR y se comunica con la base de datos.
    - **Data Analysis:** Proporciona servicios como procesamiento de datos, inteligencia artificial (incluyendo _machine learning_ y _deep learning_), y servicios analíticos.
    - **Middleware:** Requerido para que los sistemas EHR heredados (_legacy systems_) transcriban datos a FHIR estándar para comunicarse con el Resource Server.

**3. Caso de Estudio (Salud Mental y Autoevaluación):** El _paper_ se centra en el dominio de la **salud mental y neurológica** (que afecta a una de cada cuatro personas en el mundo). Se presenta un **prototipo de aplicación móvil** de autoevaluación (_self-assessment_) para IOS y Android utilizando React Native.

- **Autoevaluación:** El concepto de autoevaluación es un componente importante de los tratamientos basados en Internet, ya que permite a las personas gestionar su enfermedad y superar el estigma social de buscar tratamiento.
- **Modelo de Dominio (DPF):** Se utiliza el **Diagram Predicate Framework (DPF)** para formalizar el modelo de dominio de la aplicación, lo que permite la validación de las respuestas contra las preguntas formuladas, asegurando la validez de las herramientas de autoevaluación.
- **Ejemplo Específico:** Se implementa la escala MADRS-S para la detección de la depresión. El sistema utiliza el puntaje de MADRS-S para crear y asignar módulos de Terapia Cognitivo-Conductual (CBT) personalizados. Aunque el enfoque principal es el autoinforme, el prototipo permite que el terapeuta acceda a los datos del paciente para personalizar el tratamiento basado en las actividades y el estado de ánimo (_mood_) reportados semanalmente.

**4. Atributos de Calidad y Flujo de Comunicación:** La arquitectura INTROMAT Core garantiza varios atributos de calidad fundamentales:

- **Interoperabilidad:** **REQUERIDA** mediante la adopción del estándar HL7 FHIR, que facilita la liquidez y modularidad de los datos.
- **Seguridad:** El Authorization Server y el Resource Server **DEBEN** ser asegurados con TLS. Se **DEBEN** emitir tokens de corta duración y utilizar OpenID Connect para evitar ataques de inyección de sesión.
- **Modificabilidad y Escalabilidad:** La arquitectura SOA facilita estas cualidades, ya que los componentes son **independientes de vendedores y tecnologías**. Cada componente puede ser actualizado o evolucionado (tanto en hardware como en _software_) sin afectar a los demás.
- **Flujo de Comunicación:** Se adopta el _contextless workflow_ de SMART on FHIR para el autoinforme. Este flujo garantiza que el cliente se autentique con el Authorization Server para obtener un token de acceso, el cual luego se utiliza para solicitar recursos FHIR al Resource Server.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre el valor de la arquitectura INTROMAT Core para resolver los desafíos de la _e-salud_ se fundamentan en las siguientes ideas clave:

1. **La Interoperabilidad Sanitaria es la Base para Resolver la Heterogeneidad de Datos y Facilitar el Monitoreo Remoto:** La conclusión de que el sistema resuelve el problema de la interoperabilidad se basa en el compromiso de **adoptar el estándar HL7 FHIR**. El uso de FHIR, junto con SMART on FHIR y una arquitectura SOA, garantiza que los datos de autoinforme sean **estandarizados, seguros y accesibles** por otros sistemas EHR, permitiendo el monitoreo continuo y personalizado fuera del entorno hospitalario.
2. **La Autoevaluación Digital es un Mecanismo Rentable y Socialmente Aceptable para Superar el Estigma y la Falta de Recursos:** La conclusión de que el sistema proporciona una herramienta accesible y con valor social se fundamenta en la evidencia de que los **tratamientos basados en Internet tienen resultados comparables a la terapia presencial** y son inexpensivos. La aplicación móvil de autoevaluación aborda el problema del **estigma** asociado a las enfermedades mentales, proporcionando un "terapeuta virtual en el bolsillo".
3. **La Robustez y Mantenibilidad del Sistema se Logra a Través de una Arquitectura SOA Modular que Garantiza Atributos Críticos de Calidad:** La arquitectura es robusta porque la SOA garantiza la **modificabilidad y escalabilidad** al hacer que los componentes sean independientes. El uso de DPF en el modelo de dominio ayuda a **validar** la consistencia de las respuestas de los pacientes, y la estricta adherencia a protocolos de seguridad (TLS, OAuth 2.0) gestionados por el Authorization Server garantiza la **seguridad y privacidad** de los datos sensibles.

---

### Valor del Paper

El artículo **"An architectural design for self-reporting e-health systems"** es altamente valioso debido a que:

- **Propone una Arquitectura Real para Sistemas E-Salud:** El trabajo presenta no solo un concepto, sino una **arquitectura basada en la nube (INTROMAT Core)** que utiliza SOA y estándares industriales (HL7 FHIR, SMART on FHIR). Esto ofrece una **hoja de ruta práctica** para la implementación de sistemas de _e-salud_ interoperables.
- **Aborda un Problema de Salud Crítico:** El enfoque en la **salud mental y neurológica** aborda un dominio de alto costo y prevalencia, donde la falta de acceso y el estigma son barreras significativas. La solución del autoinforme tiene el potencial de mejorar el alcance y la eficiencia de la atención.
- **Demuestra la Integración de Estándares para la Personalización:** El _paper_ detalla la importancia de HL7 FHIR no solo para el intercambio, sino también para asegurar la **validez** de las herramientas de autoevaluación mediante perfiles FHIR y la formalización con DPF. Además, sienta las bases para futuras implementaciones de IA y _machine learning_ para la **personalización adaptativa** del tratamiento.
