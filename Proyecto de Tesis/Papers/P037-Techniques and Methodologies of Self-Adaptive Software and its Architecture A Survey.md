 #CitaLatex 
 @INPROCEEDINGS{RiazTechniquesandMethodologies,
  author={Riaz, Abdur Rehman and Rauf, Asma and Gilani, Syed Mushhad M. and Bashir, Muhammad Bilal},
  booktitle={2021 4th International Conference on Computing & Information Sciences (ICCIS)}, 
  title={Techniques and Methodologies of Self-Adaptive Software and its Architecture: A Survey}, 
  year={2021},
  volume={},
  number={},
  pages={1-5},
  abstract={Nowadays, due to the continuously changing en-vironment, modern software systems can work in a dynamic environment. But many changes occur at runtime so, to handle the changes self-adaptive mechanism plays an important role. To encounter the requirement of rapid application development adaptive software is used widely. Adaptive software architecture is based on three steps speculate, collaborate, learn. There are a lot of techniques for adaptive software architecture most appropriate technique is selected by comparing them. In this paper, we perform a survey on different research papers related to the self-adaptive system and self-adaptive architecture. After studied the techniques gaps in the literature are identified and compare those techniques. Different common parameters are identified and considered by studying literature. Then these parameters are used to analyze survey techniques which is helpful for researchers and future directions in this area.},
  keywords={Adaptive systems;Runtime;Software architecture;Computer architecture;Software systems;Adaptive system;Adaptive Software;Software Architecture;Self-Adaptation;Dynamically adaptive systems},
  doi={10.1109/ICCIS54243.2021.9676190},
  ISSN={},
  month={Nov},}


Referencia del archivo original: `(Abdur Rehman Riaz) Techniques and Methodologies of Self-Adaptive Software and its Architecture A Survey.pdf` [[(Abdur Rehman Riaz) Techniques and Methodologies of Self-Adaptive Software and its Architecture A Survey.pdf]]


El documento seleccionado es una **encuesta (survey) sobre Técnicas y Metodologías de Software Autoadaptativo y su Arquitectura**.

### Resumen Completo del Documento

El objetivo principal de esta investigación es realizar una encuesta exhaustiva sobre diferentes trabajos de investigación relacionados con el sistema autoadaptativo y la arquitectura autoadaptativa.

**Contexto y Motivación:** Debido al entorno en continuo cambio, los sistemas de _software_ modernos deben poder funcionar en un ambiente dinámico. Los productos de _software_ están evolucionando continuamente a causa de los avances tecnológicos, lo que exige que los requisitos se adapten constantemente para satisfacer la demanda del cliente. Los mecanismos autoadaptativos (self-adaptive) son vitales para manejar los cambios que ocurren en tiempo de ejecución (runtime), los cuales son difíciles de predecir antes del despliegue.

**Características del Software Autoadaptativo (SAS):** El _software_ autoadaptativo tiene la capacidad de mantener la Calidad de Servicio (QoS) en condiciones cambiantes. Responde de manera adaptativa a los requisitos cambiantes, las entradas, los problemas de _hardware_ y los efectos externos en los sensores. Ante cualquier cambio, el _software_ adaptativo no deja de funcionar, sino que responde a la condición actual. La estructura básica del _software_ adaptativo se compone de tres pasos: **especular (speculate), colaborar (collaborate), y aprender (learn)**. Desde el punto de vista arquitectónico, una estructura autoadaptativa se compone de dos subsistemas: el **sistema gestionado (managed system)**, que maneja las funciones principales, y el **sistema gestor (managing system)**, que maneja y adapta al sistema gestionado.

**Metodología de la Encuesta:** Los autores realizaron una revisión crítica de técnicas y metodologías previas relacionadas con la arquitectura de _software_ adaptativo. La investigación selecciona y analiza ocho técnicas específicas de la literatura previa:

1. AHSA (Arquitectura de _Software_ de Cuidado de Salud Adaptativo).
2. Un enfoque que combina técnicas flexibles (Scrum, Kanban) y diseño de arquitectura clásica.
3. Un concepto de computación independiente útil para construir _software_ y _hardware_ grande en tiempo real.
4. Una metodología basada en ingeniería de dominio para desarrollar familias de Sistemas de _Software_ Autoadaptativos (SASS) con reutilización estructurada.
5. Un modelo de dominio para asistir tanto a la ingeniería de sistemas como al diseño de arquitectura para sistemas autoadaptativos.
6. Un conjunto de requisitos para un lenguaje de modelado que soporte el monitoreo adaptativo continuo (enfocándose en modelos de tiempo de ejecución evolutivos).
7. Un proceso impulsado por variabilidad para desarrollar una arquitectura adaptativa dinámica sistemáticamente.
8. Un enfoque que combina el desarrollo de _software_ orientado a aspectos y modelos arquitectónicos para sistemas de modelado adaptativos dinámicamente, con un enfoque en AADL (Architecture Analysis and Design Language).

**Criterios de Evaluación y Análisis:** Para comparar las técnicas, se identificaron y se utilizaron **seis parámetros comunes** obtenidos de la literatura estudiada:

1. **Riesgo (Risk driven/Risk Handling):** Capacidad de la técnica para corregir rápidamente actividades de alto riesgo.
2. **Tolerante al Cambio (Change Tolerant):** Capacidad del sistema para soportar los cambios continuos del entorno externo.
3. **Tiempo Acotado (Time Boxed):** La respuesta al cambio a tiempo sin afectar la calidad (no solo la entrega).
4. **Enlace entre Diseño Arquitectónico y Toma de Decisiones:** Si se consideran los niveles de arquitectura y toma de decisiones para lograr la autoadaptabilidad.
5. **Escalabilidad (Scalability):** Si la arquitectura del sistema autoadaptativo funciona bien al expandirse para atender la demanda continua de adaptación.
6. **Escenarios (Scenarios):** El uso de ejemplos prácticos o pruebas en el mundo real para verificar el comportamiento adaptativo.

El análisis final de las técnicas evaluadas muestra que **casi todas las técnicas manejan el riesgo y son tolerantes al cambio**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ sobre la importancia del _software_ autoadaptativo y la evaluación de las técnicas se fundamentan en las siguientes ideas clave:

1. **El Imperativo del Cambio Dinámico:** La necesidad creciente de sistemas de _software_ que evolucionan continuamente y la emergencia de nuevos requisitos y cambios rápidos en el contexto son partes comunes de los productos de _software_. La autoadaptación es esencial porque los cambios ocurren en tiempo de ejecución, lo que es difícil de predecir de antemano. Esta necesidad justifica la existencia y la relevancia de la arquitectura autoadaptativa.
2. **El Modelo Básico Tripartito de la Adaptación:** La comprensión de que la implementación del _software_ adaptativo se basa en el **modelo de tres pasos (especular, colaborar, aprender)** constituye el marco teórico básico de los sistemas analizados.
3. **La Estructura Formal de Evaluación Comparativa:** El estudio se fundamenta en la **definición clara y sistemática de seis parámetros comunes** (Riesgo, Tolerancia al Cambio, Tiempo Acotado, Enlace Diseño/Decisión, Escalabilidad y Escenario). Estos criterios proporcionan la base rigurosa para comparar objetivamente soluciones que manejan la autoadaptación, permitiendo evaluar la efectividad de cada técnica.
4. **Identificación de Limitaciones y Brechas Literarias:** La conclusión se basa en la identificación de **brechas y limitaciones** en los trabajos de investigación estudiados. Por ejemplo, en el análisis se destaca que algunas técnicas no manejan bien el _Time Boxed_ o carecen de un enlace adecuado entre el diseño arquitectónico y la toma de decisiones. Al identificar estas limitaciones, se establece la base para futuras investigaciones.

---

### Valor del Paper para Determinar su Validez

El valor del _paper_ se deriva de su función como un **recurso de análisis y referencia estructurado** para la comunidad investigadora en el campo de la arquitectura de _software_ autoadaptativo:

1. **Guía para Investigadores y Dirección Futura:** El valor principal es que, tras estudiar las técnicas, se identifican las brechas en la literatura y se realiza una comparación que es **útil para los investigadores y para definir futuras direcciones** en el área.
2. **Análisis Crítico Exhaustivo:** El _paper_ ofrece una **revisión crítica y exhaustiva** (comprehensive critical review) de las metodologías existentes. Proporciona detalles específicos sobre cómo se comporta cada una de las ocho técnicas seleccionadas frente a los seis criterios de evaluación.
3. **Marco de Evaluación Reutilizable:** Al identificar y establecer los **seis parámetros comunes** (Risk driven, Change tolerant, Time boxed, etc.), el documento proporciona un marco de evaluación sistemático que puede ser utilizado por otros investigadores para analizar nuevas o futuras técnicas de arquitectura autoadaptativa.
4. **Confirmación de Tendencias Generales:** El trabajo confirma que la mayoría de los enfoques estudiados logran manejar el riesgo y son tolerantes al cambio, estableciendo un punto de partida sobre las capacidades mínimas esperadas en este campo.