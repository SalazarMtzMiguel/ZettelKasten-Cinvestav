#CitaLatex 
@inproceedings{Klos2015AdaptiveKnowledge,
  title = {Adaptive Knowledge Bases in Self-Adaptive System Design},
  url = {http://dx.doi.org/10.1109/SEAA.2015.48},
  DOI = {10.1109/seaa.2015.48},
  booktitle = {2015 41st Euromicro Conference on Software Engineering and Advanced Applications},
  publisher = {IEEE},
  author = {Klos,  Verena and Gothel,  Thomas and Glesner,  Sabine},
  year = {2015},
  month = aug,
  pages = {472–478}
}

Referencia del archivo original: `(Verena Klos) Adaptive Knowledge Bases in Self-Adaptive System Design.pdf` [[(Verena Klos) Adaptive Knowledge Bases in Self-Adaptive System Design.pdf]]

El documento seleccionado para el análisis es el artículo **"Adaptive Knowledge Bases in Self-Adaptive System Design"** (Bases de Conocimiento Adaptativas en el Diseño de Sistemas Autoadaptativos), escrito por Verena Klös, Thomas Göthel y Sabine Glesner.

Este trabajo propone una **arquitectura extendida del bucle MAPE-K** de IBM para sistemas autoadaptativos (SASO) con el fin de permitir que la **lógica de adaptación en sí misma se adapte**. El objetivo es que el sistema pueda hacer frente a comportamientos del entorno o cambios de topología que no fueron anticipados en la fase de diseño.

### Resumen Completo del Documento

**1. Problema Central (Adaptación Estática en Entornos Dinámicos):** Los sistemas autoadaptativos, especialmente los sistemas ciberfísicos (CPS) donde el entorno es altamente dinámico e incluso se pueden agregar o eliminar componentes en tiempo de ejecución, a menudo dependen de un conjunto fijo de reglas predefinidas para la adaptación. El principal problema de tales sistemas es que no pueden hacer frente a comportamientos del entorno no anticipados en el diseño, lo que resulta en reglas de adaptación inaplicables o ineficaces. Para afrontar cambios dinámicos, los CPS deberían poder adaptar su propia lógica de adaptación.

**2. Solución Propuesta (Extensión del Bucle MAPE-K y Estructura de la Base de Conocimiento):** El _paper_ presenta un modelo de referencia extendido del bucle de retroalimentación **MAPE-K** (Monitor, Analyze, Plan, Execute, Knowledge).

- **Nuevos Componentes:** La arquitectura se extiende añadiendo dos componentes centrales para lograr la adaptabilidad de la lógica de adaptación:
    - **Componente de Evaluación (_Evaluation Component_):** Continuamente evalúa los pasos de adaptación anteriores comparando el efecto esperado con el efecto realmente observado. Deshabilita o elimina las reglas de adaptación ineficaces o inaplicables del conjunto actual de reglas disponibles en la base de conocimiento. También detecta y gestiona cambios en la topología del sistema (como la eliminación o adición de componentes).
    - **Componente de Aprendizaje (_Learning Component_):** Se invoca cuando no se encuentra una regla adecuada (situación imprevista) o cuando se detecta un cambio en la topología. Utiliza técnicas simplificadas de **Aprendizaje por Refuerzo (_reinforcement learning_)** sobre **modelos ejecutables en tiempo de ejecución (RTMs)** del sistema y su interacción con el entorno para inferir nuevas reglas de adaptación autónomamente.
- **Estructura Impuesta a la Base de Conocimiento (Knowledge Base, K):** Para realizar estas ideas, se impone una estructura dedicada en la base de conocimiento que separa las preocupaciones de conocimiento. Consiste en:
    - **Modelo de Entorno Abstracto ($K_{Env}$)** y **Modelo de Sistema Abstracto ($K_{Sys}$):** Representaciones abstractas de la información relevante y actual sobre el entorno (ej. valores de sensores, historial de datos) y el sistema (ej. parámetros de componentes, cambios de topología).
    - **Modelo de Objetivos Globales ($K_{Goal}$):** Contiene subobjetivos (funcionales o no funcionales) y proporciona una **función de distancia** para medir qué tan cerca está el sistema de los objetivos.
    - **Reglas de Adaptación ($K_{Adapt}$):** El conjunto de mecanismos de adaptación (reglas) que puede cambiar en tiempo de ejecución. Cada regla tiene una **precondición** (guardia), un **comando** de manipulación de datos y una **postcondición** que describe el efecto previsto.

**3. Proceso de Adaptación Detallado:**

- **Análisis:** Se utiliza la función de distancia $dist(K_{Sys}, K_{Env}, K_{Goal})$. Si la distancia excede un umbral $\delta$, se requiere adaptación.
- **Evaluación:** El componente de Evaluación se invoca en la fase de Análisis. Comprueba si la brecha entre el entorno real ($K_{Env}$) y el entorno esperado ($K'_{Env}$) es menor que una tolerancia $\epsilon$ (basada en la postcondición de la regla). Si la brecha es mayor, la regla aplicada se considera fallida y se elimina/deshabilita.
- **Planificación:** Si se requiere adaptación, se elige la mejor regla disponible (la que más reduce la distancia al objetivo). Si no se encuentra una regla adecuada (o si se detecta un cambio de topología), se invoca el **Componente de Aprendizaje**.
- **Aprendizaje y Modelos de Tiempo de Ejecución (RTMs):** El componente de Aprendizaje muta los RTMs utilizando **reglas de mutación atómicas** específicas del modelo, verificando si el modelo mutado está más cerca del $K_{Goal}$. Si es así, la secuencia de mutaciones se usa para generar una nueva regla que se inserta en $K_{Adapt}$. Los RTMs deben ser **ejecutables** y capturar la interacción entre componentes y el entorno. Los autores sugieren utilizar el cálculo de procesos **Communicating Sequential Processes (CSP)** como RTM para permitir el análisis formal y la verificación de refinamiento.
- **Estado de Fallo Seguro:** Si no se puede aplicar ninguna regla o el aprendizaje es infructuoso, el sistema puede entrar en un estado de fallo seguro hasta que se aprenda una regla o el entorno cambie.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la capacidad del enfoque para adaptar dinámicamente la lógica de adaptación y manejar situaciones no anticipadas se basan en las siguientes ideas clave:

1. **La Lógica de Adaptación Debe Ser un Artefacto Dinámico y Modificable en Tiempo de Ejecución para Enfrentar Comportamientos no Anticipados:** La conclusión de que el sistema puede manejar lo inesperado se fundamenta en la idea de que los mecanismos de adaptación (las reglas $K_{Adapt}$) son parte de la base de conocimiento y, por lo tanto, **pueden cambiar dinámicamente en tiempo de ejecución**. El sistema no depende de un conjunto fijo de reglas predefinidas, lo que le permite ser flexible en entornos altamente dinámicos y en CPS.
2. **La Inferencia de Reglas Novedosas Requiere Modelos Ejecutables de Tiempo de Ejecución (RTMs) y Técnicas de Aprendizaje Basadas en la Búsqueda:** La conclusión sobre la capacidad de generar nuevas reglas se basa en el **Componente de Aprendizaje** que utiliza **RTMs** y técnicas de **Aprendizaje por Refuerzo**. Estos RTMs permiten la **predicción del comportamiento futuro** del sistema, posibilitando la mutación simulada del diseño y la evaluación de si el resultado se acerca al objetivo ($K_{Goal}$), generando así nuevas reglas de manera autónoma.
3. **La Evaluación Continua del Éxito de la Adaptación (Contraste Postcondición vs. Observación) es Esencial para la Coherencia de la Base de Conocimiento:** La conclusión de que las reglas son eficientes y válidas se fundamenta en el **Componente de Evaluación**. Este componente es crucial para **detectar y eliminar reglas que no tuvieron el efecto previsto** (incoherencias entre la postcondición de la regla y el efecto monitoreado) o que se volvieron inválidas debido a **cambios en la topología** (ej., un componente retirado).

---

### Valor del Paper

El artículo **"Adaptive Knowledge Bases in Self-Adaptive System Design"** ofrece un valor significativo en el campo de los sistemas autoadaptativos:

- **Extensión Fundamental del MAPE-K:** El trabajo introduce una **extensión arquitectónica clave** al bucle MAPE-K, el modelo de referencia _de facto_ para SASO, añadiendo componentes de **Evaluación y Aprendizaje**. Esta extensión aborda directamente la limitación más grande de los SASO tradicionales: su incapacidad para manejar comportamientos no anticipados del entorno.
- **Marco de Diseño Estructurado:** El documento impone una **estructura detallada y modularizada** a la Base de Conocimiento ($K_{Env}, K_{Sys}, K_{Goal}, K_{Adapt}$) que facilita la separación de preocupaciones y la intercambiabilidad de los modelos.
- **Integración de Análisis Formal (CSP):** Al proponer la integración de modelos formales y ejecutables como **CSP**, el enfoque sienta las bases para la **verificación de la corrección en tiempo de ejecución** (_run-time verification_) de las reglas de adaptación generadas, cuantificando la calidad de las mutaciones con respecto a los objetivos.
- **Demostración Práctica:** La ilustración detallada mediante el **ejemplo del controlador de temperatura adaptable** en un hogar inteligente clarifica la aplicación del marco para resolver situaciones de fallo inesperadas y cambios de topología, validando la aplicabilidad del modelo conceptual.

El enfoque propuesto es como tener un sistema de control de crucero en un coche (el bucle MAPE-K tradicional) que no solo ejecuta las reglas preprogramadas ("si hace demasiado calor, enciende el aire acondicionado"), sino que también incluye un **mecanismo de autoevaluación y un simulador de entrenamiento**. Si la regla falla consistentemente (porque, por ejemplo, el aire acondicionado está roto), el sistema lo detecta y lo elimina (Evaluación). Si se añade un nuevo componente (ej. un parasol inteligente), el simulador (Aprendizaje) lo usa para generar instantáneamente una nueva regla ("si hace calor, cierra el parasol") sin necesidad de que un humano lo reprograme en la fase de diseño.
