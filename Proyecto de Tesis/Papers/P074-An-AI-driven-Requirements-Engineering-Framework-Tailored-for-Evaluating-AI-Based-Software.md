#CitaLatex 
@INPROCEEDINGS{BarzaminiHamed2025AnAI-drivenRequirements,
  author={Barzamini, Hamed and Nazaritiji, Fatemeh and Brockmann, Annalise and Ferdowsi, Hasan and Rahimi, Mona},
  booktitle={2025 IEEE/ACM 4th International Conference on AI Engineering – Software Engineering for AI (CAIN)}, 
  title={An AI-driven Requirements Engineering Framework Tailored for Evaluating AI-Based Software}, 
  year={2025},
  volume={},
  number={},
  pages={138-149},
  abstract={Requirements Engineering (RE) has been extensively refined for traditional software systems, but AI-based software (AIS)11In this work, AI-based software (AIS) refers to software that relies exclusively on vision-based perception, meaning its understanding of the environment is derived solely from camera input. introduces unique challenges that necessitate novel approaches. This paper addresses the gap in RE practices for AIS by proposing a framework that leverages partial specifications of domain concepts from RE and employs eXplainable AI (XAI) to verify AIS's perception of these specifications. The purpose of this framework is to demonstrate that systematically engineering AIS, according to RE practices, rather than fully relying on AI capabilities, will enhance the perception capabilities of resultant AIS. This work aims to enhance RE4AI by offering a structured approach for managing and evaluating requirements specifications in AIS, ultimately leading to improved performance in these systems. Evaluation results showed that our framework improves AIS perception of variants of two domain concepts-pedestrian and aircraft-within the automotive and aviation domains.},
  keywords={Knowledge engineering;Pedestrians;Explainable AI;Semantics;Software systems;Requirements engineering;Artificial intelligence;Automotive engineering;Visual perception;Software engineering;RE4AI;Evaluating AI Software;RE and XAI},
  doi={10.1109/CAIN66642.2025.00025},
  ISSN={},
  month={April},}

Referencia del archivo original: `(Hamed Barzamini) An AI-driven Requirements Engineering Framework Tailored for Evaluating AI-Based Software.pdf` [[(Hamed Barzamini) An AI-driven Requirements Engineering Framework Tailored for Evaluating AI-Based Software.pdf]]

El documento seleccionado es el artículo **"An AI-driven Requirements Engineering Framework Tailored for Evaluating AI-Based Software"** (Un Marco de Ingeniería de Requisitos Impulsado por IA Adaptado para Evaluar Software Basado en IA), escrito por Hamed Barzamini, Fatemeh Nazaritiji, Annalise Brockmann, Hasan Ferdowsi y Mona Rahimi.

Este trabajo aborda la brecha en las prácticas de Ingeniería de Requisitos (RE) para el Software Basado en IA (AIS). Propone un marco llamado **W-AIS** que utiliza especificaciones parciales de conceptos de dominio derivadas de RE, integrándolas con la Inteligencia Artificial Explicable (XAI) para verificar la percepción que el AIS tiene de esas especificaciones.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del trabajo.

### Resumen Completo del Documento

**1. Contexto y Desafío (RE para Sistemas Basados en IA):** Las prácticas de Ingeniería de Requisitos (RE) han sido extensamente refinadas para el _software_ tradicional. Sin embargo, el desarrollo de _software_ basado en IA (AIS), definido en este trabajo como aquel que se basa exclusivamente en la **percepción visual** (entrada de cámara), introduce desafíos únicos y significativos. A diferencia de los sistemas convencionales que se basan en lógica determinista, los sistemas basados en IA operan en **entornos probabilísticos** y derivan su comportamiento de patrones de datos complejos.

La ausencia de requisitos claramente definidos y las técnicas de RE adecuadas socavan la fiabilidad, el rendimiento y el éxito general de los sistemas de IA. **RE para AI (RE4AI)** debe ser un enfoque dinámico e iterativo que evalúe y adapte continuamente las especificaciones basadas en el comportamiento evolutivo del modelo de IA y sus resultados de aprendizaje.

**2. Limitaciones del Enfoque Tradicional:** La extracción de especificaciones para conceptos de dominio es estándar en RE (Ingeniería de Requisitos basada en Conocimiento). Sin embargo, la aplicación de RE basado en ontologías a AIS presenta varios desafíos:

- **Naturaleza Intuitiva:** Conceptos como "peatón" o "aeronave" son intuitivos para los humanos, pero el AIS requiere **descripciones formales, explícitas y flexibles** que capturen todas las variantes sin ser tan rígidas que no puedan generalizar a instancias futuras no vistas.
- **Ausencia de Punto de Referencia:** Sin especificaciones formales, es difícil evaluar el comportamiento del AIS y determinar si los datos de entrenamiento son **suficientes** (correctos, completos y de calidad). El tamaño del _dataset_ no es un indicador directo de calidad, y el **sobreajuste (_overfitting_)** es un problema común.

**3. El Marco Propuesto: W-AIS (Whitebox-like Improvement of AIS Perception):** W-AIS es un marco que **utiliza las especificaciones de RE para evaluar** el grado en que un sistema de IA entrenado ha asimilado el conocimiento del dominio, al mismo tiempo que explica y mejora sus capacidades perceptivas.

- **Integración de RE y XAI:** W-AIS se basa en un trabajo previo (REAIS) que genera ontologías extensas de especificaciones de conceptos a partir de fuentes de conocimiento humano (ej., enciclopedias, documentos legales, bases de datos de imágenes). Estas ontologías definen los **requisitos mínimos** para la percepción del AIS.
- **Proceso Iterativo Clave (Ver Figura 2):**
    1. **Especificaciones:** W-AIS referencia las ontologías de conceptos del dominio (ej., variantes de "peatón" como "peatones con discapacidad física").
    2. **Traducción:** Las especificaciones (originalmente en Lenguaje Natural - NL) se traducen a un **_dataset_ visual** para que el AIS pueda percibirlas (App1 usando WIT dataset, App2 usando la _Web_ y un proceso de filtrado riguroso).
    3. **Medición de Distancia:** Se alimenta la imagen al AIS entrenado (modelo **OFA**) y este genera una **descripción (captions)**. Se utiliza la **similitud semántica (SBERT)** para medir la distancia entre la _caption_ generada por el modelo y la especificación del concepto en la ontología. Una distancia grande indica una **"especificación sub-percibida"** o una especificación faltante en la ontología.
    4. **Explicación (XAI):** Para las variantes percibidas débilmente, se utiliza **XAI (CLIP)** para generar **mapas de calor (_heatmaps_)** que visualizan los **puntos focales de alta atención** del modelo en la imagen. Esto permite a un humano-en-el-bucle determinar si la distancia se debe a una **especificación faltante** (que debe agregarse a la ontología) o a un **tópico sub-percibido** por el modelo (que requiere reentrenamiento).
    5. **Ajuste y Aumento de Datos:** Para los tópicos sub-percibidos, el sistema busca iterativamente en **fuentes externas** imágenes adicionales que contengan las especificaciones correctas. El _dataset_ se **aumenta** solo para esas variantes sub-percibidas y el modelo se **reentrena** de manera dirigida.

**4. Resultados de la Evaluación:** W-AIS se evaluó con el modelo OFA en los dominios automotriz y de aviación, para los conceptos "peatón" y "aeronave". Los resultados mostraron que W-AIS mejoró la percepción del AIS en cuatro métricas:

- **Alineación Conceptual:** La similitud semántica entre las _captions_ generadas por el AIS y las especificaciones refinadas de la ontología **aumentó significativamente** (ej., para peatones, la similitud aumentó de 0.286 (Base) a 0.348 (App2) y 0.378 (App1)).
- **Alineación de Especificaciones Originales:** La similitud entre las _captions_ generadas y las _captions_ originales de las imágenes también mejoró, verificando que la mejora no es resultado de un sesgo.
- **Similitud Humana:** Las _captions_ generadas por W-AIS (especialmente con App2) mostraron una **mayor similitud con las _captions_ generadas por humanos** en métricas como CIDEr y SPICE.
- **Generalización del Rendimiento:** Hubo una **detección más precisa de instancias no vistas** (variantes del concepto). Por ejemplo, para el concepto "peatón", la precisión (Precision) de clasificación de variantes aumentó a 14.32% en App2 (vs. un rendimiento base más bajo). Las cifras de precisión generalmente bajas se deben al enfoque en la detección de variantes específicas (ej., "peatones con discapacidad física") en lugar de categorías amplias.

El enfoque **Web-based (App2)**, que utilizó un _dataset_ más curado y filtrado, generalmente mostró un **mejor rendimiento** que el enfoque basado en _benchmark_ (App1) debido a la menor presencia de ruido en los datos de entrenamiento.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que la ingeniería de sistemas AI mediante W-AIS mejora la percepción del sistema y es un enfoque robusto se fundamentan en las siguientes ideas clave:

1. **La Percepción del AIS Debe Estar Guiada por el Conocimiento Humano, No Solo por los Datos:** La conclusión central se basa en que los sistemas AIS, que aprenden inductivamente a partir de datos, pueden **desviarse significativamente de la intuición humana** si no se les proporciona un punto de referencia formal. El marco aborda esto utilizando **ontologías** que representan el conocimiento semántico humano para establecer un **conjunto mínimo de requisitos** (benchmarks) contra los cuales el comportamiento del AIS puede ser evaluado.
2. **El XAI y la Meta-Evaluación Permiten la Mejora Iterativa Dirigida:** La viabilidad del marco se basa en la integración de **XAI** (como _heatmaps_) para **explicar la percepción parcial del modelo**. Esto permite a un experto identificar la causa raíz de una percepción deficiente (ya sea un fallo en el modelo o una especificación faltante en la ontología) y facilita el **reentrenamiento iterativo y dirigido** del modelo solo en los conceptos variantes sub-percibidos, lo que ayuda a mitigar el sobreajuste (_overfitting_).
3. **La Curación Rigurosa del Dataset Supera la Cantidad Bruta de Datos:** El éxito empírico del marco se fundamenta en la demostración de que el **uso de _datasets_ curados y filtrados (App2) mejora el rendimiento** en las métricas clave (similitud humana, precisión de clasificación de variantes) en comparación con el uso de _datasets_ más amplios pero ruidosos (App1) o aleatorios (Random). Esto subraya la importancia de la **calidad, relevancia y diversidad** de los datos sobre la cantidad pura.

---

### Valor del Paper

El valor del artículo "An AI-driven Requirements Engineering Framework Tailored for Evaluating AI-Based Software" es excepcionalmente alto y ofrece una contribución significativa al campo de la Ingeniería de _Software_ para sistemas de IA (RE4AI):

- **Puente Metodológico entre RE y AI (W-AIS):** El _paper_ proporciona el **primer marco sistemático conocido (W-AIS)** que adapta las metodologías tradicionales de Ingeniería de Requisitos (RE) para abordar los desafíos únicos de los sistemas basados en IA (AIS). Esto sienta las bases para una ingeniería de AIS más responsable y estructurada.
- **Mejora de la Robustez y Generalización del AIS:** La contribución práctica más importante es la demostración empírica de que el marco W-AIS **mejora la percepción visual del AIS** de los conceptos de dominio (peatones, aeronaves) y **aumenta la capacidad de generalización** del modelo para reconocer instancias no vistas.
- **Innovación en la Explicación del Aprendizaje (XAI-Guiada):** Al integrar XAI para proporcionar una **explicación visual de los puntos focales del modelo** y utilizar esa explicación para guiar la refinación del _dataset_ y el reentrenamiento, el trabajo introduce un ciclo de **meta-evaluación** que es crucial para la fiabilidad de los sistemas de IA en dominios críticos (como el automotriz y la aviación).
- **Recursos Abiertos para la Comunidad:** Los autores aumentan el valor del trabajo al hacer públicos el marco W-AIS y los dos **_datasets_ de imagen-texto específicos del dominio** (peatón y aeronave) que construyeron sistemáticamente, lo que facilita la replicación y el avance de la investigación futura.