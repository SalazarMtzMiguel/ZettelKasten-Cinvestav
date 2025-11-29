#CitaLatex 
@INPROCEEDINGS{Kaur2016Anapproachtoimprove,
  author={Kaur, Parampreet and Luhach, Ashish Kr.},
  booktitle={2016 5th International Conference on Reliability, Infocom Technologies and Optimization (Trends and Future Directions) (ICRITO)}, 
  title={An approach to improve test path generation: Inclination towards automated model-based software design and testing}, 
  year={2016},
  volume={},
  number={},
  pages={156-162},
  keywords={Unified modeling language;Testing;Light emitting diodes;Software;Industries;Calculators;Optimization;Model based testing;System under Test (SUT);Labview;State charts;Finite state machine(FSM)},
  doi={10.1109/ICRITO.2016.7784944}}


Referencia del archivo original: `(Parampreet Kau) An approach to improve test path generation Inclination towards automated model-based software design and testing.pdf` [[(Parampreet Kau) An approach to improve test path generation Inclination towards automated model-based software design and testing.pdf]]

El documento seleccionado es el artículo de investigación **"An Approach to Improve Test Path Generation: Inclination towards Automated Model-based Software Design and Testing"** (Un Enfoque para Mejorar la Generación de Rutas de Prueba: Inclinación hacia el Diseño y Prueba de _Software_ Automatizados Basados en Modelos), escrito por Parampreet Kaur y Ashish Kr. Luhach.

Este trabajo aborda la necesidad de mejorar la precisión en el diseño de modelos para la **Prueba Basada en Modelos (MBT)**, un método que busca automatizar la generación de casos de prueba y mejorar la calidad del _software_. Los autores proponen una técnica que integra el diseño gráfico del sistema con los métodos tradicionales de MBT para obtener modelos más detallados y evitar defectos posteriores.

### Resumen Completo del Documento

**1. Contexto y Problema (Desafíos de la MBT):** La Prueba Basada en Modelos (MBT) es una alternativa efectiva a los métodos de prueba basados en programación. Es una forma estructurada, precisa y medible de probar _software_, independiente del lenguaje y la plataforma. MBT es crucial para detectar fallas en una etapa temprana del desarrollo, ahorrando costos y esfuerzos. Sin embargo, el éxito de la MBT depende de la **idoneidad y completitud del modelo** utilizado. La investigación ha revelado problemas relacionados con la **cobertura inadecuada** de los modelos por parte de las pruebas derivadas. Simplemente modelar usando métodos formales como UML, Redes de Petri o Máquinas de Estados Finitos (FSM) no es suficiente; se requiere un modelado más detallado para descubrir defectos.

**2. El Enfoque Propuesto (Integración de LabView y UML):** La metodología propuesta busca asistir en el diseño/modelado de un Sistema Bajo Prueba (SUT) con mayor precisión, combinando este enfoque con métodos tradicionales de MBT para cerrar las brechas que surgen durante el diseño y las pruebas.

- **Diseño Bipartito:** El enfoque describe la funcionalidad del sistema de una manera mucho mejor al permitir ver la **interfaz (_front end_) y la estructura (_structure_) del sistema juntas**. El sistema se divide en dos partes: la parte _Front-end_ y la parte Lógica.
- **Uso de LabView:** Se utiliza el _software_ **LabView** (versión 2015) para la implementación del diseño. LabView asiste en el análisis del comportamiento del sistema con mayor detalle.
    - **Panel Frontal:** Se diseña la interfaz gráfica del sistema (el _Front-end_), incluyendo los _inputs_ necesarios.
    - **Diagrama de Modelo:** Se modela la lógica (la estructura) del sistema, mostrando las **conexiones reales** entre los componentes y el flujo de datos. Se puede visualizar la ejecución resaltando el flujo de datos e incluso ver los resultados intermedios.
- **Conversión a Artefactos de Prueba:** El Diagrama de Modelo puede aplanarse a formato **XML** utilizando la función _Flatten to xml_. Este archivo XML puede convertirse a un **Diagrama de Máquina de Estados (FSM)** mediante **SCXML** (_State Chart Extensible Markup Language_).

**3. Generación y Optimización de Rutas de Prueba:** Para analizar los aspectos de comportamiento del sistema, se utiliza **Plant UML** para derivar un Diagrama de Mensajes de Secuencia (SMD). A partir del SMD, se construye una Máquina de Estados Finitos (FSM).

- **Minimización del Grafo:** El FSM (ejemplo: Start state, LED On, LED Off) se reduce a un **Grafo Dirigido Minimizado (MDG)**, eliminando bucles internos (_self-loops_), para facilitar la derivación de rutas de prueba.
- **Criterios de Cobertura y Optimización:** El estudio compara dos métodos de cobertura para encontrar rutas de prueba en el MDG: **Cobertura de Par de Aristas (_Edge-Pair Coverage_)** y **Cobertura de Ruta Primaria (_Prime-Path Coverage_)**.
    - Los resultados mostraron que la **Cobertura de Ruta Primaria** produjo **un número significativamente menor de rutas de prueba** (2 rutas frente a 5 en el ejemplo de estudio). Aunque ambas proporcionan la misma cobertura, la Cobertura de Ruta Primaria minimiza considerablemente el esfuerzo.

**4. Conclusiones y Futuras Direcciones:** La MBT es un enfoque eficaz y eficiente para generar casos de prueba a partir de modelos UML, siempre que se aplique a un conjunto particular de requisitos. La propuesta sugiere que el diseño de _software_ debe integrar la **programación gráfica de LabView con el modelado UML** para obtener mejores resultados.

- **Mitigación de Problemas:** El enfoque puede intentar superar los problemas de reutilización de modelos de diseño para generar pruebas. Al diseñar los modelos con detalles precisos sobre el flujo de datos (asistido por LabView), se evitan los problemas de ambigüedad en los casos de prueba.
- **Abordaje de Limitaciones de MBT:** Se sugiere que los problemas de escalabilidad (exclusión exponencial de casos de prueba) pueden mitigarse al **limitar la generación de casos de prueba a módulos localizados** en lugar de todo el sistema. La partición del sistema en módulos más pequeños puede ayudar a resolver el problema de los estados inalcanzables.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de integrar LabView en el diseño de modelos y la superioridad de la cobertura de ruta primaria se fundamentan en las siguientes ideas clave:

1. **La Calidad del Modelo es Directamente Proporcional a la Calidad y Precisión de las Pruebas Generadas:** La conclusión de que es necesario un nuevo enfoque de modelado se basa en que la MBT es intrínsecamente dependiente de la **precisión y completitud de los modelos**. Cuando los artefactos de diseño de _software_ carecen de detalles apropiados sobre el comportamiento del sistema, se generan casos de prueba ambiguos.
2. **La Integración del Diseño de Interfaz Gráfica (Front-end) y el Flujo de Datos Lógico Mejora la Precisión del Modelado Inicial:** La conclusión de utilizar LabView se fundamenta en su capacidad para modelar y visualizar el **_Front-end_ y la estructura lógica simultáneamente**. Esto permite a los diseñadores incorporar detalles precisos sobre el **flujo de datos del sistema** desde la fase de diseño, proporcionando así una base más sólida y menos ambigua para la derivación de modelos de prueba posteriores (FSM/SMD).
3. **La Cobertura de Ruta Primaria es el Criterio de Optimización Preferido para Reducir el Esfuerzo de Prueba:** La conclusión sobre la minimización de rutas se basa en la **evaluación comparativa empírica**. Al aplicar y comparar la Cobertura de Par de Aristas y la Cobertura de Ruta Primaria en el MDG derivado, se demostró que esta última técnica minimiza el número de rutas de prueba requeridas para una cobertura completa, lo que se traduce en una **reducción considerable del esfuerzo y el costo**.

---

### Valor del Paper

El artículo **"An Approach to Improve Test Path Generation: Inclination towards Automated Model-based Software Design and Testing"** es valioso por las siguientes razones:

- **Abordaje de una Limitación Clave de MBT:** El _paper_ aborda directamente la limitación reportada en la literatura de MBT: la **insuficiencia de los modelos puramente formales** (UML, FSM) para capturar los detalles del sistema. La propuesta de integrar una herramienta de diseño gráfico y simulación (LabView) para el modelado _Front-end_ y Lógico ofrece una solución práctica a la ambigüedad del modelo.
- **Optimización Cuantificada del Proceso de Prueba:** El estudio valida la eficacia de la **Cobertura de Ruta Primaria** como un criterio de optimización superior para la generación de rutas de prueba, proporcionando resultados concretos que justifican su uso sobre métodos como la Cobertura de Par de Aristas.
- **Guía para el Desarrollo de Sistemas de Control:** El enfoque, que utiliza la capacidad de LabView para modelar sistemas y controladores, resulta particularmente útil para la comunidad de **sistemas embebidos y de comunicación**.

La metodología propuesta es como construir un **prototipo funcional detallado (LabView)** antes de dibujar los planos arquitectónicos abstractos (UML/FSM). Este prototipo asegura que la lógica y la interfaz coincidan perfectamente y que los ingenieros de pruebas no tengan que adivinar el comportamiento del sistema. Al obtener un modelo más preciso desde el principio, se puede usar un **GPS inteligente (la Cobertura de Ruta Primaria)** para encontrar el camino más corto y eficiente para probar la funcionalidad, en lugar de revisar cada posible camino largo (Cobertura de Par de Aristas).
