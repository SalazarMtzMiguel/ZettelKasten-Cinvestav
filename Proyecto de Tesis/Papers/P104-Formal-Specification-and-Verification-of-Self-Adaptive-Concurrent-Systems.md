#CitaLatex 
@article{Fakhir2018FormalSpecification,
  title = {Formal Specification and Verification of Self-Adaptive Concurrent Systems},
  volume = {6},
  ISSN = {2169-3536},
  url = {http://dx.doi.org/10.1109/ACCESS.2018.2849821},
  DOI = {10.1109/access.2018.2849821},
  journal = {IEEE Access},
  publisher = {Institute of Electrical and Electronics Engineers (IEEE)},
  author = {Fakhir,  Muhammad Ilyas and Kazmi,  Syed Asad Raza},
  year = {2018},
  pages = {34790–34803}
}

Referencia del archivo original: `(Muhammad Ilyas Fakhir) Formal Specification and Verification of Self-Adaptive Concurrent Systems.pdf` [[(Muhammad Ilyas Fakhir) Formal Specification and Verification of Self-Adaptive Concurrent Systems.pdf]]

El documento seleccionado es el artículo de investigación **"Formal Specification and Verification of Self-Adaptive Concurrent Systems"** (Especificación Formal y Verificación de Sistemas Concurrentes Autoadaptativos), escrito por Muhammad Ilyas Fakhir y Syed Asad Raza Kazmi.

Este trabajo aborda el desafío de garantizar las propiedades de calidad en los Sistemas Autoadaptativos (SAS), especialmente aquellos con un comportamiento interno complejo y concurrente, y propone el _framework_ **SMACS** (_Self-Adaptive Multi-Agent Concurrent System_). Este marco utiliza Redes de Petri Coloreadas (CPN) para el modelado y el **cálculo-$\mu$ modal (M$\mu$)** en conjunción con el verificador de modelos **TAPA** para la especificación y verificación formal de propiedades internas.

### Resumen Completo del Documento

**1. Contexto: La Necesidad de Métodos Formales en SAS** Los Sistemas Autoadaptativos (SAS) tienen la capacidad de adaptar su comportamiento de manera autónoma en tiempo de ejecución debido a cambios inciertos en el entorno. La complejidad de los SAS, especialmente cuando involucran restricciones de tiempo, hace que sean muy difíciles de especificar y verificar. Los métodos formales son la mejor opción para la verificación del comportamiento en sistemas críticos para la seguridad (ej., piloto automático, controladores de centrales nucleares) para evitar cualquier tipo de error.

**2. El Marco SMACS Propuesto (Arquitectura y Modelado):** El _framework_ SMACS (_Self-Adaptive Multi-Agent Concurrent System_) está diseñado específicamente para tratar sistemas complejos y utiliza un enfoque **descentralizado (_bottom-up_)**.

- **Estructura Interna:** La estructura interna de cada agente SMACS se basa en el **bucle de retroalimentación MAPE-K** (_Monitor, Analyze, Plan, Execute, Knowledge_).
- **Agentes Internos (Int-Agents):** Cada fase del bucle MAPE-K funciona como un agente interno (_Int-Agent_): _Monitor Int-Agent, Analyzer Int-Agent, Planner Int-Agent_ y _Executer Int-Agent_.
- **Concurrencia:** SMACS utiliza el enfoque _bottom-up_, ideal para modelar sistemas basados en multiagentes, donde cada agente adapta su propio comportamiento y actualiza el entorno para guiar a otros agentes, logrando una **verdadera concurrencia**.
- **Comunicación:** Los agentes internos interactúan entre sí a través de un sistema basado en conocimiento y del sistema gestionado. Además, se definen dos canales de comunicación para la interacción entre agentes SMACS: el **emisor (_emitter_)** (para peticiones o actualizaciones) y el **consentidor (_consenter_)** (para acuses de recibo).
- **Técnicas de Modelado:** Se utilizan **Redes de Petri Coloreadas (CPN)** para modelar el _framework_. CPN es un enfoque adecuado para modelar sistemas dinámicos de eventos discretos y lograr una verdadera concurrencia.

**3. Especificación Formal y Verificación:** Para superar la dificultad de modelar el comportamiento interno del agente autoadaptativo y proporcionar una base para la verificación, se utiliza el **cálculo-$\mu$ modal (M$\mu$)** para la especificación formal.

- **M$\mu$:** El cálculo-$\mu$ modal es una lógica temporal dominante basada en puntos fijos que permite expresar propiedades recursivas como la **alcanzabilidad** (_reachability_). Se elige M$\mu$ sobre alternativas más expresivas (como I$\mu$TL) debido a la **disponibilidad de su verificador de modelos (_model checker_)**.
- **Verificación:** El verificador de modelos **TAPA** se utiliza para la verificación de las propiedades internas de cada agente.
- **Propiedades Verificadas:** El enfoque se utiliza para verificar propiedades internas como **viveza (_liveness_), seguridad (_safeness_) y ausencia de interbloqueo (_deadlock-freedom_)** de cada agente del _framework_ SMACS.

**4. Caso de Estudio (Sistema de Monitoreo de Tráfico):** El _framework_ SMACS se implementa y verifica utilizando un **Sistema de Monitoreo y Gestión de Tráfico (TMS)** en la ciudad de Lahore como estudio de caso.

- **Agentes de Detección:** El TMS utiliza varios agentes sensores para la autoadaptación, incluyendo **cámaras de video** (para monitorear la capacidad de vehículos/congestión) y **etiquetas electrónicas (_e-tags_ o RFID)** (específicas para ambulancias y vehículos de emergencia).
- **Adaptación de Emergencia:** En caso de que un vehículo de emergencia sea detectado, el control de todas las señales se transfiere **autoadaptativamente** a un agente controlador específico (t5). La señal se pone en verde para el vehículo de emergencia y todas las demás señales se bloquean. Una vez que el vehículo cruza, el control vuelve al funcionamiento normal.
- **Verificación:** Las propiedades (como que después de detectar un vehículo de emergencia, todos los otros lados deben ser bloqueados hasta que cruce) se expresan en M$\mu$ (modificado para TAPA) y se verifican formalmente.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la solidez, la idoneidad y la aplicabilidad del _framework_ SMACS para la verificación de sistemas autoadaptativos se fundamentan en las siguientes ideas clave:

1. **La Garantía de Calidad en SAS Complejos, Concurrentes y Críticos Requiere Métodos Formales y Rigurosos:** La conclusión de que el marco es necesario se basa en el desafío principal que enfrentan los SAS: la dificultad de asegurar las propiedades de calidad (como la ausencia de interbloqueo o la seguridad) debido a su comportamiento interno altamente complejo y dinámico en tiempo de ejecución. Los métodos formales, especialmente el uso de **M$\mu$ y verificadores de modelos**, son la forma más expresiva y rigurosa para garantizar la corrección de estos sistemas, particularmente en entornos de seguridad crítica.
2. **El Bucle de Retroalimentación MAPE-K, al Ser Descentralizado y Basado en Agentes, es la Arquitectura Óptima para la Concurrencia Autoadaptativa:** La conclusión sobre el diseño del marco se fundamenta en la elección de un **enfoque descentralizado (_bottom-up_)** y la arquitectura **Multi-Agente (MAS)**. El modelo **MAPE-K** implementado como agentes internos (_Int-Agents_) permite que la adaptación ocurra a nivel de componente, facilitando la **verdadera concurrencia** y demostrando ser un enfoque superior para modelar aspectos concurrentes importantes.
3. **El Uso Combinado de CPN y M$\mu$/TAPA Ofrece la Capacidad de Modelado y Verificación Rigurosa Necesaria:** La conclusión sobre la elección de las herramientas se basa en que las **Redes de Petri Coloreadas (CPN)** son adecuadas para modelar sistemas concurrentes basados en multiagentes, y el **cálculo-$\mu$ modal (M$\mu$)** proporciona la flexibilidad y expresividad necesarias para especificar el comportamiento interno del agente autoadaptativo. La **disponibilidad del verificador de modelos TAPA** consolida este par de herramientas como una solución práctica para la verificación formal.

---

### Valor del Paper

El artículo **"Formal Specification and Verification of Self-Adaptive Concurrent Systems"** ofrece un valor sustancial en la investigación de sistemas autoadaptativos:

- **Marco de Verificación Formal Específico:** Propone y valida un _framework_ arquitectónico, **SMACS**, que aborda directamente la necesidad crítica de verificar formalmente la corrección, la seguridad y la viveza de los SAS que exhiben un comportamiento complejo y concurrente, especialmente aquellos basados en arquitecturas de multiagentes descentralizadas.
- **Integración de Herramientas Rigurosas:** El trabajo demuestra la **integración exitosa** de técnicas de modelado de concurrencia (CPN) y lógica temporal expresiva (M$\mu$) con un verificador de modelos funcional (TAPA), superando la limitación de la falta de herramientas para lógicas más expresivas.
- **Aplicabilidad en Dominios Críticos:** La aplicación del _framework_ SMACS al **Sistema de Monitoreo de Tráfico**, incluyendo el manejo autoadaptativo de vehículos de emergencia, demuestra la utilidad práctica del enfoque para sistemas donde los fallos pueden tener consecuencias graves. El trabajo verifica que el _framework_ es idóneo para probar la corrección en sistemas con comportamiento concurrente complejo.

El _framework_ SMACS es como un **código de construcción extremadamente riguroso** para edificios (sistemas autoadaptativos). No se limita a revisar los planos generales, sino que exige una **verificación formal de la integridad de cada viga, columna y tubería (los agentes internos MAPE-K)** utilizando matemáticas avanzadas (M$\mu$) para asegurar que, bajo cualquier condición impredecible (un accidente en el tráfico), el sistema no solo se adapte, sino que **garantice matemáticamente** que no habrá un colapso estructural (interbloqueo) y que las funciones vitales (seguridad y viveza) se mantendrán.
