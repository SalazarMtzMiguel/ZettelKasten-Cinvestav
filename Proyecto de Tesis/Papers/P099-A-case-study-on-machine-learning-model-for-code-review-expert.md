#CitaLatex 
@inproceedings{Madera2017Acasestudy,
  series = {FedCSIS 2017},
  title = {A case study on machine learning model for code review expert system in software engineering},
  volume = {11},
  ISSN = {2300-5963},
  url = {http://dx.doi.org/10.15439/2017F536},
  DOI = {10.15439/2017f536},
  booktitle = {Proceedings of the 2017 Federated Conference on Computer Science and Information Systems},
  publisher = {IEEE},
  author = {Madera,  Michał and Tomoń,  Rafał},
  year = {2017},
  month = sep,
  pages = {1357–1363},
  collection = {FedCSIS 2017}
}

Referencia del archivo original: `(Michał Madera) A case study on machine learning model for code review expert.pdf` [[(Michał Madera) A case study on machine learning model for code review expert.pdf]]

El documento seleccionado es el artículo **"A case study on machine learning model for code review expert system in software engineering"** (Un estudio de caso sobre un modelo de _machine learning_ para un sistema experto de revisión de código en ingeniería de _software_), escrito por Michał Madera y Rafał Tomoń.

Este trabajo presenta un estudio de caso sobre la creación de un **modelo de predicción de _Rework_** (reelaboración) basado en _machine learning_ (ML) para un proyecto grande de _software_ médico, con el objetivo de mejorar la efectividad de las actividades de Garantía de Calidad (QA) al dirigir la revisión de código extendida a las áreas de mayor riesgo.

### Resumen Completo del Documento

**1. Contexto: La Importancia de la Revisión de Código y el Problema del Defecto:** La revisión de código es una herramienta clave para la Garantía de Calidad (QA) en el desarrollo de _software_, diseñada para encontrar errores de codificación antes de que el producto llegue al cliente. Los costos de corrección aumentan significativamente en las etapas posteriores del proyecto; se estima que la corrección de errores después de la liberación puede costar 30 veces más que si se realizan durante la fase de diseño. Por lo tanto, el esfuerzo principal de QA debe centrarse en las fases más tempranas del proceso de producción de _software_, siendo la **etapa de revisión de código** el lugar donde se pueden eliminar los problemas en su génesis.

En grandes y complejos proyectos, una revisión de código precisa es un desafío, ya que depende de la predisposición individual del revisor, dejando un margen de cambios de código sin verificar adecuadamente. En el estudio de caso, la compañía tenía una cobertura total de revisión de código, pero aún enfrentaba un número relativamente grande de defectos reportados.

**2. Tesis y Objetivo:** La tesis central del trabajo es que, al **predecir los fallos en los cambios de código**, es posible dirigir un **enfoque adicional a las áreas en peligro** con una revisión de código extendida, eliminando defectos potenciales antes de la fase de pruebas y reduciendo los costos operativos.

El objetivo principal fue construir un **modelo predictivo de _Rework_** que pudiera integrarse en el proceso de un gran proyecto de _software_ (en este caso, un sistema de laboratorio médico) para apoyar las decisiones y mejorar la calidad final. Un _Rework_ (reelaboración) se define como un "cambio implementado por el programador que fue rechazado, calificado para corrección ya sea por el revisor de código o por el equipo de pruebas".

**3. Datos, Ingeniería de Características y Metodología (ML):**

- **Fuente de Datos:** El estudio se basó en un conjunto de datos masivo de 237,128 observaciones (cambios de archivos individuales) registradas entre 2014 y 2016 en el desarrollo de _software_ de laboratorio médico. En este período, el 17% de los cambios fueron marcados como _Rework_.
- **Ingeniería de Características:** Un desafío clave fue la **extracción de características (_feature engineering_)** a partir de datos de producción heterogéneos (bases de datos de gestión de proyectos, seguimiento de problemas, repositorios de control de código fuente, etc.). El conjunto de datos final contenía **77 atributos**, agrupados en cinco categorías: métricas del empleado, métricas de la tarea, métricas del archivo modificado, métricas cuantitativas del cambio y métricas del código fuente (obtenidas de análisis estático).
- **Modelo de Clasificación:** Para reflejar un caso de uso real, el clasificador fue entrenado con el 90% de los datos históricos y probado con el 10% restante. Se utilizó el _software_ **WEKA** para construir y evaluar los clasificadores, utilizando computación distribuida debido al gran volumen de datos.
- **Evaluación y Métrica Clave:** Dada la significativa **descompensación de clases** (solo 17% de _Reworks_ en los datos), la principal métrica de rendimiento utilizada para comparar modelos fue el **Área bajo la Curva ROC (AUROC)**.

**4. Resultados y Conclusiones:**

- **Mejor Rendimiento:** Después de evaluar 275 combinaciones de algoritmos y conjuntos de atributos, el mejor resultado se logró con el algoritmo **Random Forest** utilizando 25 atributos seleccionados mediante el algoritmo **InfoGainAttributeEval**.
- **Métricas de Rendimiento:** El modelo Random Forest obtuvo la medida de rendimiento más alta con un **AUROC de 0.930**.
    - **Precisión (_Precision_):** 97.12%.
    - **Exactitud (_Accuracy_):** 92.27%.
    - **Sensibilidad (_Sensitivity_):** 62.23% (capacidad de identificar correctamente los _Reworks_ reales).
    - **Valor Predictivo Positivo (PPV):** 79.64%.
- **Interpretación Operativa:** El modelo clasificó correctamente el 62% de todos los _Reworks_. El modelo logró clasificar solo el 11% de todos los archivos cambiados para una revisión de código extendida y, al hacerlo, **identificó el 79% de los problemas potenciales** (_PPV_).
- **Estabilidad:** La estabilidad del modelo fue confirmada mediante validación cruzada de 10 pliegues, lo que sugiere que está **listo para su uso en escenarios de la vida real**. Los resultados preliminares del estudio fueron considerados dignos de implementación en la compañía.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la validez y el valor operativo del modelo de predicción de _Rework_ se fundamentan en las siguientes ideas clave:

1. **La Detección Temprana de Defectos (Etapa de Revisión de Código) es la Estrategia de QA de Mayor Impacto Económico:** La conclusión sobre la necesidad de este sistema se basa en el alto costo relativo de arreglar defectos en etapas posteriores del desarrollo. El modelo predictivo se centra en la **etapa de revisión de código** para dirigir los esfuerzos de QA antes de las pruebas, maximizando la eliminación de problemas en su "génesis" y mejorando significativamente la calidad final con menores costos.
2. **El Rendimiento Satisfactorio de un Modelo Predictivo de Defectos en Proyectos Complejos Depende Críticamente de la Ingeniería de Características Específicas del Dominio:** La conclusión de que el modelo es exitoso se fundamenta en la necesidad de ir más allá de los atributos de predicción de defectos comúnmente utilizados. El trabajo enfatiza que el **problema de la selección de atributos fue un aspecto clave** para obtener resultados satisfactorios. Esto llevó a la creación de un conjunto de 77 atributos altamente detallados, incluidos aquellos que describen la **experiencia del empleado** a diferentes niveles de modularización y el historial de fallos.
3. **El Algoritmo Random Forest Proporciona el Mejor Balance de Precisión y Capacidad Predictiva para Datos Desbalanceados en el Contexto de la Revisión de Código:** La conclusión sobre la elección del modelo se fundamenta en que, dadas las clases desbalanceadas (17% _Reworks_), la métrica **AUROC (0.930)** valida que **Random Forest** ofrece un mejor rendimiento predictivo que otros clasificadores. El valor predictivo positivo (_PPV_ del 79.64%) confirma que, al dirigir la revisión extendida solo al 11% de los cambios, el sistema puede capturar una alta proporción de los problemas.

---

### Valor del Paper

El valor del artículo **"A case study on machine learning model for code review expert system in software engineering"** es significativo para la ingeniería de _software_ en entornos industriales complejos:

- **Validación Operacional del ML en QA:** El estudio de caso demuestra de manera convincente la **viabilidad y el valor práctico** de integrar un modelo de ML (Random Forest) en los procesos de QA de una empresa de _software_ médico. Los resultados obtenidos (Precisión del 97.12% y Exactitud del 92.27%) son robustos y justifican la implementación del sistema.
- **Énfasis en la Ingeniería de Características:** El trabajo destaca la importancia de la **minería de datos heterogéneos** y la **ingeniería de características ricas y contextuales** (especialmente las métricas de empleado/experiencia en módulos) para construir modelos predictivos confiables, proporcionando una base para futuras investigaciones.
- **Mejora de la Eficiencia de la Revisión de Código:** El marco propuesto permite a la empresa **concentrar sus recursos de QA** de manera eficiente, lo cual es crítico en proyectos grandes y complejos. Al reducir la necesidad de revisar exhaustivamente todos los cambios, el sistema **dirige el enfoque a las áreas más vulnerables**, mejorando la calidad del producto final y reduciendo drásticamente los costos operativos.

El modelo desarrollado es análogo a un **detector de rayos X** para el código. En lugar de que el revisor de código (el "inspector") tenga que examinar cada pieza de código con el mismo nivel de detalle, el modelo de ML (el "rayo X") identifica inmediatamente el **11% de los cambios que tienen la mayor probabilidad (casi 80%) de ser una fractura o un fallo**. Esto permite a la empresa utilizar a sus expertos para una revisión profunda y efectiva solo donde más se necesita, optimizando la productividad y garantizando una mayor seguridad del producto.
