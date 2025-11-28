#CitaLatex 

@inproceedings{Falkner2015EvolutionofSoftware,
  title = {Evolution of Software Development Strategies},
  url = {http://dx.doi.org/10.1109/ICSE.2015.153},
  DOI = {10.1109/icse.2015.153},
  booktitle = {2015 IEEE/ACM 37th IEEE International Conference on Software Engineering},
  publisher = {IEEE},
  author = {Falkner,  Katrina and Szabo,  Claudia and Vivian,  Rebecca and Falkner,  Nickolas},
  year = {2015},
  month = may 
}

Referencia del archivo original: `(Katrina Falkner) Evolution of Software Development Strategies.pdf` [[(Katrina Falkner) Evolution of Software Development Strategies.pdf]]

El documento seleccionado es el artículo **"Evolution of Software Development Strategies"** (Evolución de las Estrategias de Desarrollo de Software), escrito por Katrina Falkner, Claudia Szabo, Rebecca Vivian y Nickolas Falkner.

Este trabajo es un informe de estudio de caso que analiza la evolución de las estrategias de aprendizaje autorregulado (_Self-Regulated Learning_, SRL) específicas de la disciplina de la Informática (_Computer Science_, CS) en estudiantes universitarios. El objetivo es identificar cómo los estudiantes pasan de ser **novatos** (primer año) a **expertos** (último año) en el desarrollo de _software_, para así desarrollar actividades de andamiaje (_scaffolding_) dirigidas.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del _paper_.

### Resumen Completo del Documento

**1. Contexto: SRL y la Transición de Novato a Experto:** El desarrollo de habilidades cognitivas y metacognitivas, como las estrategias de SRL (establecer metas, planificar, auto-monitorear, auto-evaluar), es fundamental para dominar las habilidades de desarrollo de _software_.

- Los **programadores expertos** suelen adoptar un proceso de planificación sistemático basado en el conocimiento conceptual, lo que les permite una búsqueda de amplitud (_breadth-first search_) del espacio del problema.
- Los **programadores novatos** tienden a basar su planificación en su conocimiento de lenguajes de programación, lo que resulta en una búsqueda de profundidad (_depth-first search_) y un enfoque en argumentos concretos.

La transición de novato a experto se facilita mediante la reflexión sobre éxitos y fracasos anteriores.

**2. Metodología del Estudio:** El estudio adoptó un diseño de estudio de caso de métodos mixtos (cuantitativo y cualitativo), utilizando un enfoque de **Teoría Fundamentada (_Grounded Theory_)** para el análisis.

- **Cohortes:** Se analizaron reflexiones de 85 estudiantes novatos (primer año, curso de desarrollo de _software_ introductorio) y 38 estudiantes expertos (último año, curso de sistemas distribuidos).
- **Recopilación de Datos:** Se solicitó a los estudiantes que completaran un ejercicio reflexivo sustancial describiendo sus procesos actuales de desarrollo de _software_, cómo habían cambiado y cómo planeaban cambiarlos en el futuro.
- **Marco de Codificación:** Se utilizó un marco de codificación establecido previamente, identificando estrategias específicas de CS y estrategias generales de SRL.

**3. Análisis de la Evolución de las Estrategias (Novato vs. Experto):** El estudio identificó una evolución significativa, con los estudiantes de último año (expertos) mostrando procesos más sofisticados:

|Característica|Novatos (Primer Año)|Expertos (Último Año)|Evolución Observada|
|:--|:--|:--|:--|
|**Diseño y Planificación**|El proceso de desarrollo se centraba en la implementación y las pruebas. Solo el **22.4%** desarrollaba el diseño antes de codificar. Estrategias de fallo dominantes: **Codificar antes de diseñar** (57.1%) o **Diseño incompleto** (41.4%).|El **71.05%** de los expertos desarrollaba el diseño antes de codificar. Utilizan el diseño para comprender el problema y como medio para crear una solución.|**Maduración significativa** en la adopción del diseño como paso inicial y sistemático.|
|**Estándares y Principios**|Uso insignificante de principios o estándares de diseño (solo el **2.4%**).|Uso de **principios o estándares de diseño** (52.6%). Muestran un mayor enfoque en atributos de calidad.|Los expertos adoptan el **lenguaje y las prácticas formales** de la Ingeniería de _Software_.|
|**Descomposición**|Generalmente basada en la especificación.|Mayor enfoque en atributos de calidad (acoplamiento débil, cohesión) para la descomposición y el diseño.|Descomposición impulsada por la **calidad arquitectónica** y no solo por la especificación.|
|**Pruebas (Testing)**|Baja inclusión de pruebas integrales (**12.9%**).|Las **pruebas exhaustivas** son fundamentales en su proceso (**50%**). Integración de pruebas de regresión.|El _testing_ se convierte en una **parte integral y temprana** del proceso de desarrollo.|
|**Abstracción**|Enfocados en lo concreto.|Mayor capacidad para el **pensamiento abstracto** y el uso de **terminología de SE**.|
|**Estrategias SRL Generales**|Dependencia equilibrada entre estrategias específicas de CS y generales (ratio 1:1).|Mayor dependencia de **estrategias específicas de CS** (ratio 1.6:1).|Uso más sofisticado y específico de la disciplina.|
|**Gestión del Tiempo**|Gran preocupación. Principal fuente de fracaso: **mala gestión del tiempo** (51.8% de los fracasos reportados).|Sigue siendo una fuente de fracaso (71.1% de los fracasos reportados). Sin embargo, la preocupación por la gestión del tiempo como estrategia exitosa **disminuyó** del 57.6% (novatos) al 26.8% (expertos).|La gestión del tiempo sigue siendo un área de inmadurez, pero se reduce su prominencia percibida en el éxito/fracaso.|

**4. Áreas Pendientes de Maduración (Necesidad de Andamiaje):** El análisis identificó áreas donde los estudiantes expertos aún carecen del nivel de sofisticación deseado:

- **Validación Temprana del Diseño:** Solo el **13.15%** de los expertos reportó validar sus diseños antes de la codificación. Los autores sugieren la necesidad de actividades de _scaffolding_ para animar la **validación del diseño** y la **integración temprana**.
- **Prototipado y Experimentación:** Solo el **24%** de los expertos reportó asignar tiempo para el prototipado y la experimentación.
- **Priorización de Componentes Centrales:** La mayoría de los expertos aún prioriza las tareas por fecha límite o por facilidad, en lugar de centrarse en los **componentes funcionales centrales** del diseño.

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la evolución de las estrategias de desarrollo de _software_ y la necesidad de andamiaje se fundamentan en las siguientes ideas clave, extraídas del análisis de las reflexiones de los estudiantes:

1. **La Adopción de la Planificación Sistemática (Diseño Antes de Codificación) Define la Madurez del Ingeniero de Software:** La conclusión de que la madurez es evidente se basa en la evidencia cuantitativa de que la mayoría de los estudiantes de último año (**71.05%**) ha adoptado la práctica de **desarrollar el diseño antes de codificar**, lo que contrasta fuertemente con la tendencia de los novatos a codificar de manera "oportunista y arbitraria". Esta adopción de la planificación sistemática y los **principios de diseño/estándares** (reportado por 52.6% de los expertos) es el indicador clave de que la disciplina de SE está siendo asimilada.
2. **La Reflexión (SRL) es un Mecanismo Esencial para la Transición Cognitiva de Novato a Experto:** La conclusión de que la reflexión debe ser asistida metodológicamente se fundamenta en que la **reflexión y el cambio de estrategias** fue una estrategia exitosa significativamente más importante para los expertos (22.36%) que para los novatos. Este proceso es crucial para identificar los éxitos, los fracasos y las áreas de mejora.
3. **A Pesar de la Madurez, Persisten Brechas Críticas que Exigen Intervenciones Pedagógicas Dirigidas:** La conclusión de que se necesita _scaffolding_ se basa en la observación de que la madurez de los expertos no es completa. La baja tasa de **validación temprana del diseño** (13.15%) y la falta de enfoque en la **integración temprana** de componentes centrales indican que la madurez se alcanza en las prácticas fundamentales, pero aún se necesita una guía explícita para la adopción de estrategias más avanzadas y que traen consigo una reducción significativa en el tiempo de desarrollo.

### Valor del Paper

El artículo **"Evolution of Software Development Strategies"** es un trabajo de gran valor para la educación en Ingeniería de _Software_ y la Pedagogía en Informática:

- **Identificación de Estrategias Específicas de CS:** El _paper_ identifica y articula las **estrategias de aprendizaje autorregulado (SRL) específicas de la Informática**, en lugar de centrarse únicamente en estrategias generales. Esto es un requisito llamado por trabajos anteriores para el desarrollo de la disciplina.
- **Evidencia Empírica de la Evolución de la SE:** Ofrece un **análisis longitudinal y comparativo** (novato vs. experto) que cuantifica la evolución de las prácticas de desarrollo de _software_. La evidencia de que los expertos adoptan sistemáticamente el diseño antes de codificar y que utilizan principios y estándares sirve como un valioso _benchmark_ para los educadores.
- **Hoja de Ruta para la Mejora Curricular (Scaffolding):** El valor más práctico es que el análisis de las brechas de madurez (específicamente la falta de **validación de diseño** y **prototipado**) proporciona una **hoja de ruta clara** para las intervenciones curriculares. Los autores sugieren métodos pedagógicos específicos como el uso de ejercicios de **diseño de final abierto** y **ejercicios de integración temprana** para abordar estas deficiencias.

El estudio es como haber colocado **cámaras ocultas** en las mentes de los estudiantes para grabar su proceso mental de desarrollo de _software_. Esto permitió a los investigadores ver que, con el tiempo, la mayoría de los estudiantes dejó de "jugar a probar suerte" (codificación antes de diseño) para empezar a usar un **plano arquitectónico formal** (diseño y estándares). Sin embargo, el análisis reveló que, incluso los "maestros de obra" (expertos) seguían saltándose un paso crucial en el plano: la **revisión de la estructura** (validación del diseño) antes de comenzar la construcción, lo que demuestra exactamente dónde deben intervenir los instructores para garantizar la máxima eficiencia.
