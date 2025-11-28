#CitaLatex 
@INPROCEEDINGS{AlrumaihHala2018TowardAutomatedSoftware,
  author={Alrumaih, Hala and Mirza, Abdulrahman and Alsalamah, Hessah},
  booktitle={2018 21st Saudi Computer Society National Computer Conference (NCC)}, 
  title={Toward Automated Software Requirements Classification}, 
  year={2018},
  volume={},
  number={},
  pages={1-6},
  abstract={With the growing awareness of the effects of requirements in software processes, requirements engineering is increasingly becoming an area of focus in software engineering research. A vast number of studies assert that failure in understanding and classifying requirements are the main causes of exceeding costs and allocated time, which in turn results in project failure. Successful software systems development requires consistent and classified requirements. Requirements classification represents an early but critical phase in the requirements analysis stage. While the literature draws a distinction between different types of requirements, in practice it is not always easy to identify such differences. This paper provides an overview of requirements classification, presents some of the existing research studies on requirements classification, and discusses their limitations to yield suggestions for improvement.},
  keywords={Requirements engineering;Software engineering;Software systems;Machine learning;Stakeholders;software engineering;requirements engineering;requirements classification;artificial intelligence;machine learning},
  doi={10.1109/NCG.2018.8593012},
  ISSN={},
  month={April},}

Referencia del archivo original: `(Hala Alrumaih) Toward Automated Software Requirements Classification.pdf` [[(Hala Alrumaih) Toward Automated Software Requirements Classification.pdf]]

El documento seleccionado es el artículo de investigación **"Toward Automated Software Requirements Classification"** (Hacia la Clasificación Automatizada de Requisitos de Software), escrito por Hala Alrumaih, Abdulrahman Mirza y Hessah Alsalamah.

Este artículo aborda la importancia de la clasificación de requisitos en la ingeniería de _software_, presenta una visión general de las técnicas existentes y propone la dirección futura de la clasificación automatizada utilizando técnicas de Inteligencia Artificial (AI).

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. El Problema Crítico de la Clasificación de Requisitos:** El éxito de un proyecto de _software_ depende de la disponibilidad de requisitos completos, consistentes y clasificados. La clasificación de requisitos es una fase temprana pero crítica en la etapa de análisis de requisitos. Estudios e informes señalan que la falta de comprensión y clasificación de los requisitos son las principales causas del fracaso de los proyectos, superando los costos y los tiempos asignados. Por ejemplo, algunos reportes indican que el **71% de los fallos de _software_ se deben a la falta de claridad** en la comprensión y clasificación de los requisitos.

**2. Importancia y Alcance de la Clasificación:** La clasificación es la disposición de los requisitos de _software_ en diferentes clases para proporcionar soporte significativo para la toma de decisiones y otros procesos analíticos. Esta clasificación puede mejorar la comprensión de los requisitos del usuario, ayudar a establecer prioridades y evaluar su calidad, y reducir la dificultad de la toma de decisiones al agrupar un gran número de requisitos.

Los requisitos pueden clasificarse según varios criterios:

- **Funcional vs. No Funcional:** Lo que el sistema hará versus las restricciones en la solución (ej., rendimiento, seguridad).
- **Prioridad:** Utilizando una escala fija (ej., obligatorio, altamente deseable, opcional).
- **Alcance:** El rango en que un requisito afecta al sistema.
- **Nivel:** Requisitos de nivel de objetivo (metas de negocio), nivel de dominio (áreas problemáticas) o nivel de diseño (lo que se debe construir).
- **Volatilidad/Estabilidad:** La probabilidad de que un requisito cambie durante el ciclo de vida del _software_.

**3. Técnicas de Clasificación Clásicas (Pioneros):** El artículo detalla las clasificaciones propuestas por pioneros en la ingeniería de requisitos:

- **Ian Sommerville:** Distingue entre **Requisitos de Usuario** (alto nivel, abstractos) y **Requisitos del Sistema** (descripción detallada). Clasifica los requisitos del sistema en **Funcionales** y **No Funcionales**. Los No Funcionales se subdividen en Requisitos de Producto, Organizacionales y Externos.
- **Soren Lauesen:** Clasifica los requisitos según lo que la especificación debe contener (Datos, Funcionales, Calidad, Gerenciales). También los clasifica según el nivel objetivo-diseño (Objetivo, Dominio, Producto, Diseño).
- **Karl E. Wiegers:** Ofrece una visión general de la información necesaria para el ciclo de vida de los requisitos, clasificándolos en **Requisitos de Negocio** (el por qué), **Requisitos de Usuario** (la funcionalidad desde la perspectiva del usuario), **Requisitos Funcionales del Producto** (la funcionalidad a construir) y **Reglas de Negocio**.

**4. Limitaciones de los Enfoques Actuales e Impulso a la AI:** La literatura demuestra que la mayoría de las técnicas propuestas son **manuales** o **automatizadas con limitaciones y brechas**. La clasificación manual es fácil y precisa para pocos requisitos, pero se vuelve **compleja, consume tiempo y es propensa a errores** en proyectos grandes o complejos, además de depender de la disponibilidad de expertos.

El artículo destaca que las técnicas de **Inteligencia Artificial (AI)** y el **Aprendizaje Automático (_Machine Learning_)** han mostrado resultados alentadores en la ingeniería de requisitos. Estas técnicas ofrecen una alternativa viable para **automatizar** muchos problemas de ingeniería de _software_, lo que puede reducir el tiempo, el esfuerzo y el costo de los expertos. Trabajos previos han utilizado AI para la extracción de información, el desarrollo de asistentes inteligentes, el soporte a la gestión del conocimiento y la clasificación automática de requisitos (ej., usando redes neuronales, Naïve Bayes o árboles de decisión).

**5. Recomendaciones y Conclusión:** El trabajo concluye que es fundamental que la industria y el gobierno desarrollen clasificaciones de requisitos más claras para **minimizar las ambigüedades**. Para superar las limitaciones de los clasificadores individuales y los procesos manuales, el artículo recomienda explícitamente adoptar un **enfoque híbrido** que combine **múltiples técnicas de clasificación de Machine Learning** (seleccionadas de diferentes categorías). Este enfoque híbrido puede aumentar la calidad de los resultados y la precisión de la clasificación, lo que a su vez **aumentaría la eficiencia del desarrollo de _software_**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones que abogan por la adopción de un enfoque híbrido y automatizado para la clasificación de requisitos se fundamentan en las siguientes ideas clave:

1. **El Alto Costo del Fracaso en la Clasificación (Riesgo del Proyecto):** La conclusión que motiva el cambio se basa en la evidencia de que una clasificación pobre o incorrecta es la **causa principal del fracaso de los proyectos de TI** (el segundo factor de desafío más grande después de los requisitos incompletos). Los informes citados señalan que hasta el **71% de los fallos de _software_ se deben a la falta de clasificación clara**.
2. **La Inescalabilidad y Falibilidad de la Clasificación Manual:** La conclusión de que se necesita automatización se basa en que la clasificación manual es **compleja, consume tiempo y es propensa a errores** cuando se trabaja con un gran volumen de requisitos. La automatización, por el contrario, puede ahorrar tiempo y esfuerzo y disminuir el costo.
3. **La Superioridad del Enfoque Híbrido de AI sobre los Clasificadores Individuales:** La conclusión principal del _paper_ se fundamenta en la sugerencia metodológica de que la **combinación de diferentes técnicas de clasificación** (_hybrid scheme_) puede **mejorar significativamente la precisión** de la clasificación en comparación con el uso de clasificadores individuales.

---

### Valor del Paper

El valor del artículo **"Toward Automated Software Requirements Classification"** es sustancial para la Ingeniería de Requisitos y el campo de la Ingeniería de _Software_ en general:

- **Formalización del Problema de la Ineficiencia:** El _paper_ aporta valor al formalizar el problema de la clasificación de requisitos como un **factor crítico de fracaso del proyecto**. Proporciona una base sólida que vincula directamente la calidad de la clasificación con el éxito del proyecto.
- **Hoja de Ruta Metodológica para el Futuro:** El valor más significativo es su **recomendación explícita** de investigar y adoptar **enfoques híbridos de Inteligencia Artificial y Machine Learning**. Esto no solo proporciona una dirección clara para la investigación académica futura, sino que también guía a los profesionales hacia soluciones que **minimizan las ambigüedades** y aumentan la eficiencia del desarrollo de _software_.
- **Consolidación del Conocimiento Clásico:** El _paper_ sirve como un valioso recurso de referencia al ofrecer un **resumen estructurado y una comparación** de las clasificaciones de requisitos propuestas por los principales pioneros (Sommerville, Lauesen, Wiegers), proporcionando así una visión general de las técnicas fundamentales del campo.
