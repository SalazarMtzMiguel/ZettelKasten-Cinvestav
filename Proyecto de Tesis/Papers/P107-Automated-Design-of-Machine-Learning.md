#CitaLatex 
@book{Pillay2021AutomatedDesign,
  title = {Automated Design of Machine Learning and Search Algorithms},
  ISBN = {9783030720698},
  ISSN = {1619-7127},
  url = {http://dx.doi.org/10.1007/978-3-030-72069-8},
  DOI = {10.1007/978-3-030-72069-8},
  journal = {Natural Computing Series},
  publisher = {Springer International Publishing},
  year = {2021},
  editor={Nelishia Pillay}
}

Referencia del archivo original: `(Nelishia Pillay) Automated Design of Machine Learning.pdf` [[(Nelishia Pillay) Automated Design of Machine Learning.pdf]]

El documento seleccionado para el resumen es el libro editado por Nelishia Pillay y Rong Qu, titulado **"Automated Design of Machine Learning and Search Algorithms"** (Diseño Automatizado de Aprendizaje Automático y Algoritmos de Búsqueda).

El libro es una colección de capítulos escritos por investigadores líderes que destacan las tendencias actuales y las direcciones futuras en el área de rápido desarrollo del **diseño automatizado de algoritmos de _machine learning_ (ML) y de búsqueda**. El objetivo general es contribuir a cerrar la brecha en la investigación necesaria para diseñar automáticamente el mejor algoritmo o herramienta para resolver un problema dado, con menos intervención humana.

A continuación, se presenta un resumen claro y completo del contenido del libro.

### Resumen Completo del Documento (Libro)

**1. Problema Central y Contexto (AutoDes):** A medida que avanzamos hacia la cuarta revolución industrial, la necesidad de herramientas que permitan el diseño de algoritmos de _machine learning_ y de búsqueda para resolver problemas del mundo real está creciendo rápidamente. La **generación automática** y la **mejora de algoritmos** para resolver conjuntos amplios o específicos de problemas es una tarea difícil, aunque los avances en inteligencia artificial (IA) y la potencia computacional han evolucionado la investigación hacia métodos sofisticados con menor intervención humana.

El libro se enfoca en el área del **Diseño Automatizado (AutoDes)**, que incluye la **configuración, composición y selección** de algoritmos y enfoques.

**2. Áreas de Enfoque y Contribuciones por Capítulo:** El libro aborda avances recientes en el Diseño Automatizado de Aprendizaje Automático (AutoML) y el Diseño Automatizado de Algoritmos (AutoAD).

- **Introducción y Descripción General (Capítulos 1 y 2):**
    
    - El Capítulo 1 introduce el libro y las áreas de AutoAD y AutoML, discutiendo los temas cubiertos y los desafíos. El éxito reciente de la IA, particularmente del _machine learning_, impulsa el avance hacia el diseño automatizado de algoritmos con menor participación humana.
    - El Capítulo 2 proporciona una revisión de las metodologías desarrolladas en AutoML en la última década, definiendo los componentes de AutoML y sus paradigmas (niveles $\alpha$, $\beta$, $\gamma$). Se destaca que AutoML es una tarea factible y ahora es un campo establecido con amplia aplicabilidad.
- **Modelos y Estándares para AutoAD (Capítulo 3):**
    
    - El Capítulo 3 presenta un nuevo modelo para la estandarización de algoritmos de búsqueda llamado **Problema General de Optimización Combinatoria (GCOP)**. GCOP define el diseño automatizado de algoritmos de búsqueda como un problema de optimización, donde las **variables de decisión son los componentes algorítmicos elementales**. Este modelo unificado permite definir una amplia gama de metaheurísticas y hiperheurísticas.
- **Hiperheurísticas y Análisis Teórico (Capítulos 4, 7):**
    
    - El Capítulo 4 se enfoca en los aspectos teóricos del diseño automatizado, un área que ha recibido poca atención. Se presenta un análisis riguroso de la **complejidad temporal de las hiperheurísticas de selección** para la optimización combinatoria. Este análisis demuestra que, para ciertas funciones, mezclar múltiples heurísticas de bajo nivel y el **aprendizaje adaptativo** son cruciales para un rendimiento óptimo.
    - El Capítulo 7 ofrece una visión general de las **hiperheurísticas** (HHs), algoritmos que operan sobre el espacio de algoritmos en lugar del espacio de soluciones. Las HHs son presentadas como **solucionadores de problemas autónomos** que persiguen el objetivo de la **generalidad**.
- **Aplicaciones y Métodos Específicos:**
    
    - El Capítulo 5 presenta **AutoMoDe**, un enfoque modular para el **diseño _off-line_ de _software_ de control para enjambres de robots**. AutoMoDe utiliza un principio de modularidad para seleccionar, combinar y ajustar módulos paramétricos de bajo nivel, lo que reduce la varianza y mejora las posibilidades de superar la **brecha de la realidad (_reality gap_)** al transferir diseños de la simulación al mundo real.
    - El Capítulo 6 aborda las hiperheurísticas de generación (_Generation Hyper-heuristics_, GHHs), proponiendo un método para la **generación automatizada de heurísticas constructivas y perturbadoras**. Utiliza **evolución gramatical (GE)** para evolucionar heurísticas que operan sobre una **representación intermedia basada en grafos**.
    - El Capítulo 8 se centra en la **Búsqueda de Arquitectura Neuronal (NAS)** evolutiva en entornos distribuidos, proponiendo marcos para el **NAS Federado Evolutivo en Tiempo Real** (Real-Time Federated Evolutionary NAS) para dispositivos de borde (_edge devices_).
    - El Capítulo 9 ilustra la **transferencia de conocimiento** en las hiperheurísticas de programación genética (GPHHs) mediante la reutilización de **subárboles útiles** y la **importancia de las características** (_feature importance_). Esto busca mejorar la eficiencia y efectividad del reentrenamiento de heurísticas cuando se encuentran problemas relacionados.
    - El Capítulo 10 compara el rendimiento de los Algoritmos Genéticos (GA) y la Evolución Gramatical (GE) para el **diseño automatizado de la Programación Genética para la inducción de clasificadores** (clasificación binaria y multiclase). Los resultados indican que el diseño automatizado requiere menos tiempo y produce clasificadores de mejor rendimiento que el diseño manual.
- **Tendencias y Desafíos Futuros (Capítulo 11):**
    
    - El Capítulo 11 sintetiza las contribuciones y establece la agenda para la investigación futura, destacando desafíos como la **reusabilidad**, el **diseño automatizado explicable (_Explainable AutoDes_)**, la reducción de los **costos computacionales**, la profundización de los **aspectos teóricos** (complejidad temporal y análisis de paisajes de aptitud), la **estandarización** del diseño automatizado y el **diseño semiautomatizado**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones generales del libro sobre la creciente importancia y el potencial de AutoDes, así como las direcciones futuras de la investigación, se fundamentan en las siguientes ideas clave:

1. **El Diseño de Algoritmos Debe Transicionar de la Intervención Manual Específica a la Composición Automatizada Basada en Componentes:** La necesidad del Diseño Automatizado (AutoDes) se basa en que los métodos manuales son costosos, lentos y altamente dependientes de la experiencia humana. La solución reside en enfoques como el modelo **GCOP**, que conceptualiza el diseño algorítmico como un **Problema de Optimización Combinatoria** donde los algoritmos son compuestos automáticamente a partir de componentes elementales.
2. **La Sinergia entre el _Machine Learning_ y los Algoritmos de Búsqueda (Optimización) Aumenta la Eficiencia y la Efectividad en Ambos Campos:** La conclusión sobre la fortaleza de AutoAD/AutoML se sustenta en la integración de técnicas. Los **algoritmos evolutivos** y de optimización (como NSGA-II) son aplicados exitosamente en la búsqueda intensiva dentro de AutoML (ej., NAS federada) para mejorar la eficiencia y reducir los costos computacionales. A su vez, los resultados de ML (como la ingeniería de características o el _transfer learning_) se utilizan en AutoAD para guiar la búsqueda de algoritmos efectivos.
3. **La Transferencia de Conocimiento y la Capacidad de Generalización son Cruciales para la Sostenibilidad y Reusabilidad de los Algoritmos Automáticos:** La conclusión sobre las direcciones futuras se basa en la necesidad de superar el desarrollo _ad-hoc_. Estudios como los de GPHH y AutoMoDe demuestran que la **reutilización de conocimiento** (ej., subárboles útiles o modelos de control modular) es esencial para mejorar la eficiencia del diseño y reducir el fenómeno de la **"brecha de la realidad"** o el _overfitting_ a un solo problema o simulación.
4. **La Rigurosidad Teórica y la Estandarización son Fundamentales para el Avance del Campo y la Interpretación de Resultados:** El libro destaca la falta de estudios teóricos (como el análisis de complejidad temporal y paisajes de aptitud) y la ambigüedad en los modelos. Es imperativo establecer **estándares** (como GCOP) y realizar **análisis teóricos rigurosos** para proporcionar una comprensión profunda del comportamiento de los algoritmos diseñados automáticamente, permitiendo que los hallazgos sean **accesibles, comparables y reusables** a través de diferentes comunidades de investigación.

---

### Valor del Paper (Libro)

El libro **"Automated Design of Machine Learning and Search Algorithms"** tiene un valor sustancial y multifacético:

- **Consolidación del Campo:** El libro consolida las áreas de **AutoML y AutoAD** como un campo de investigación unificado y de rápido crecimiento (AutoDes), destacando la interconexión entre las técnicas de _machine learning_ y las de optimización.
- **Marco de Estandarización Teórica:** Introduce el **Problema General de Optimización Combinatoria (GCOP)**, que proporciona un **modelo fundamental unificado y consistente** para el diseño de algoritmos de búsqueda, lo que es esencial para superar la falta de estándares teóricos y facilitar la acumulación de conocimiento.
- **Direcciones Estratégicas para la Investigación:** El Capítulo de conclusiones y varios capítulos temáticos identifican explícitamente y priorizan las direcciones de investigación futuras cruciales, como la necesidad de **interpretabilidad (Explainable AutoDes)**, la **reusabilidad** mediante transferencia de conocimiento, y la necesidad de **análisis teóricos rigurosos**. Esto establece una hoja de ruta para la comunidad científica.

El libro es comparable a un **manual de arquitectura para la construcción de sistemas inteligentes**. En lugar de proporcionar un diseño de edificio específico (un algoritmo manual), proporciona los **planos y principios de ingeniería** (GCOP, análisis de complejidad) para que los propios robots (los sistemas de IA y evolución) diseñen de manera autónoma las mejores herramientas de construcción y optimización, asegurando que los componentes diseñados sean **intercambiables, confiables (verificados formalmente) y adaptables** a cualquier nuevo terreno (dominio de problemas) que se encuentre.
