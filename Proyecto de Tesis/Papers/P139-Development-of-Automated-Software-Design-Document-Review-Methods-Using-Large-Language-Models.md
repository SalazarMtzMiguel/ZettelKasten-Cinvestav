#CitaLatex 
@inproceedings{Fukuda2025Development,
  title = {Development of Automated Software Design Document Review Methods Using Large Language Models},
  url = {http://dx.doi.org/10.1109/SANER64311.2025.00017},
  DOI = {10.1109/saner64311.2025.00017},
  booktitle = {2025 IEEE International Conference on Software Analysis,  Evolution and Reengineering (SANER)},
  publisher = {IEEE},
  author = {Fukuda,  Takasaburo and Nakagawa,  Takao and Miyazaki,  Keisuke and Tokumoto,  Susumu},
  year = {2025},
  month = mar,
  pages = {91–101}
}

Referencia del archivo original: `(Takasaburo Fukuda) Development of Automated Software Design Document Review Methods Using Large Language Models.pdf` [[(Takasaburo Fukuda) Development of Automated Software Design Document Review Methods Using Large Language Models.pdf]]

El documento seleccionado es el artículo **"Development of Automated Software Design Document Review Methods Using Large Language Models"** (Desarrollo de Métodos Automatizados de Revisión de Documentos de Diseño de _Software_ Utilizando Grandes Modelos de Lenguaje), cuyos autores son Takasaburo Fukuda, Takao Nakagawa, Keisuke Miyazaki y Susumu Tokumoto.

Este estudio aborda la necesidad de automatizar la revisión de documentos de diseño de _software_, una tarea intensiva en mano de obra, utilizando el potencial de los **Grandes Modelos de Lenguaje (LLMs)**. El enfoque principal es permitir que los LLMs de propósito general comprendan documentos complejos que contienen datos tabulares.

### Resumen Completo del Documento

**1. Contexto y Problema (Revisión Manual y Datos Tabulares):** Los documentos de diseño de _software_ son herramientas cruciales de comunicación entre las partes interesadas (clientes, ingenieros de sistemas). Los errores en estos documentos pueden generar problemas significativos, como _gaps_ de implementación y _bugs_. Aunque la revisión es una técnica vital de aseguramiento de la calidad, es un proceso intensivo en mano de obra. Además, el campo de la Ingeniería de _Software_ ha visto pocas aplicaciones de LLMs específicamente para la **revisión de documentos de diseño**.

Un desafío técnico clave es que los documentos de diseño japoneses, especialmente en la fase de diseño arquitectónico de estándares como SDEM, se crean frecuentemente en Microsoft Excel debido a su flexibilidad para manejar **datos tabulares complejos** (41 de 47 documentos en la fase de diseño arquitectónico usan formatos de tabla). Los LLMs a menudo tienen dificultades para distinguir con precisión los encabezados (_headers_) de los valores (_values_) dentro de estas estructuras de tabla complejas, lo que impide la realización de revisiones efectivas.

**2. Solución Propuesta (Modelo de Perspectivas y Método de Transformación):** El estudio propone un enfoque novedoso para automatizar la revisión utilizando LLMs de propósito general, centrándose en dos contribuciones clave:

- **Organización de Perspectivas de Revisión:** A través de consultas con ingenieros de sistemas expertos y basándose en estándares como SDEM e ISO/IEC 25010, se identificaron y organizaron **11 perspectivas de revisión**. Estas perspectivas se clasificaron en niveles de dificultad (1 a 4) y si requerían referenciar un solo documento o múltiples documentos. El estudio se **enfocó en los Niveles 1 y 2** (como la comprobación de suficiencia, estándares, ambigüedad y consistencia), ya que pueden ser manejados por LLMs de propósito general, mientras que los niveles más altos (3 y 4), como la comprobación de viabilidad, requieren el conocimiento especializado de ingenieros experimentados o el desarrollo de LLMs especializados.
- **Método de Transformación de Datos Tabulares:** Para abordar el desafío de la comprensión de tablas complejas, se desarrolló un método de transformación que convierte los documentos tabulares a un formato que **distingue claramente los encabezados de los valores**. Este método utiliza formatos como **Markdown y JSON**, los cuales se alinean con las características textuales de los documentos, mejorando la comprensión del LLM al estar entrenado con formatos donde esta relación es explícita. Además, se propuso una técnica que utiliza el análisis de **partes del discurso (POS)** para **seleccionar automáticamente** el formato de conversión más adecuado (Markdown para texto con predominio de lenguaje natural, JSON para datos ricos en símbolos).

**3. Evaluación y Resultados (Comprobación de Consistencia):** Los experimentos se centraron en la **Comprobación de Consistencia** (Consistency Check), ya que es sensible a la correcta interpretación de las estructuras tabulares y es una tarea de revisión frecuente y esencial.

- **Mejora por Conversión (RQ1):** Se comparó el rendimiento de los modelos GPT (gpt-35-turbo, gpt-4, gpt-4o) utilizando documentos sin convertir (CSV) frente a documentos convertidos a **Markdown**. La conversión a Markdown mejoró sustancialmente la métrica de **Recall** (sensibilidad a la detección de defectos), con un aumento que osciló **entre 0.43 y 0.63** en los diferentes modelos.
- **Eficacia de la Selección de Formato (RQ2):** Se demostró que la selección del formato de conversión basado en las características de los datos es efectiva. Los datos **ricos en lenguaje natural** tuvieron mejores tasas de detección en formato **Markdown**, mientras que los datos **ricos en representaciones simbólicas** tuvieron un mejor desempeño en formato **JSON**.
- **Escalabilidad (RQ3):** La evaluación de la escalabilidad mostró que las tasas de detección **disminuyen a medida que aumenta la longitud del documento**. Los modelos gpt-4 y gpt-4o tuvieron un rendimiento razonablemente bueno hasta los **5000 caracteres japoneses**, pero la precisión cayó significativamente más allá de ese umbral (ej., gpt-4o cayó de 0.89 a 0.47 entre 4000-5000 y 5000-6000 caracteres, respectivamente).

**4. Conclusión:** El estudio concluye que el método propuesto, basado en la clasificación de perspectivas y la conversión de formatos, demuestra que la **automatización parcial** de la revisión de documentos de diseño es **factible** utilizando LLMs existentes, con mejoras significativas en la precisión de la detección de defectos en documentos más cortos. A pesar de que la escalabilidad para documentos muy grandes (más de 5000 caracteres) sigue siendo un desafío, la aplicación es práctica para aproximadamente el 30% de los documentos en entornos reales, según las pruebas de concepto (PoC) en la industria.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la viabilidad de la automatización parcial y la estrategia metodológica se fundamentan en las siguientes ideas clave:

1. **La Dificultad de la Tarea de Revisión es Gradual y Permite la Automatización Parcial con LLMs de Propósito General en Tareas de Nivel Bajo:** La conclusión de que la automatización parcial es viable se basa en la **clasificación de las 11 perspectivas de revisión**. Al derivar esta taxonomía, se determinó que los LLMs de propósito general (sin _fine-tuning_ costoso) solo pueden manejar eficazmente las tareas de **Nivel 1 y 2** (como la comprobación de consistencia y ambigüedad). Esto permite enfocar los recursos de automatización en las tareas que no requieren el conocimiento experto de un ingeniero de sistemas experimentado.
2. **La Comprensión Semántica de Estructuras Tabulares en Documentos de Diseño Requiere la Transformación Explícita del Formato para Distinguir Encabezados de Valores:** La conclusión de la mejora significativa del rendimiento se fundamenta en el hallazgo de que los LLMs no logran comprender las tablas complejas cuando se les presenta el formato CSV. El desarrollo del **método de conversión a formatos estructurados (Markdown/JSON)**, que el LLM puede asociar con datos de entrenamiento claros (donde la relación entre encabezados y valores es obvia), es esencial para mejorar el **Recall** en la detección de inconsistencias.
3. **La Eficacia de la IA en la Revisión está Sujeta a Limitaciones de Contexto y Escalabilidad, lo que Exige un Enfoque de Adaptación al Tipo de Datos:** La conclusión sobre la necesidad de seleccionar el formato y la limitación de la escalabilidad se basa en los resultados empíricos (RQ2 y RQ3). El rendimiento de la detección **mejora cuando el formato se selecciona según las características del texto** (Markdown para lenguaje natural, JSON para símbolos). Sin embargo, la **caída drástica del rendimiento en documentos que superan los 5000 caracteres** indica que las limitaciones en el manejo de contexto por parte de los LLMs actuales (pérdida de información o precisión reducida) siguen siendo un desafío fundamental para la adopción en proyectos grandes.

---

### Valor del Paper

El artículo es de gran valor para la Ingeniería de _Software_ y el uso práctico de la IA Generativa en el dominio de la documentación:

- **Innovación en la Revisión de Documentos:** Aborda una **brecha de investigación significativa** al ser uno de los pocos estudios que se enfoca en la aplicación de LLMs específicamente para la **revisión** de documentos de diseño, una fase crítica y costosa del desarrollo de _software_.
- **Marco Práctico para la Adopción de LLMs:** Proporciona un marco aplicable de **11 perspectivas de revisión** con una clasificación clara de la aplicabilidad de los LLMs de propósito general frente a los especializados, guiando a las organizaciones sobre dónde enfocar sus esfuerzos de automatización.
- **Solución Técnica para Datos Tabulares:** Ofrece una solución técnica viable para un problema común en la industria japonesa (documentos en Excel/tablas complejas) al proponer y validar un **método de transformación de formato dinámico** (Markdown/JSON) que mejora significativamente la comprensión de las estructuras de datos por parte del LLM.
- **Identificación de un Desafío de Escalabilidad Crítico:** El estudio cuantifica el **límite de escalabilidad práctica** de los LLMs existentes para la revisión, identificando el umbral de aproximadamente **5000 caracteres** como un punto de inflexión donde la precisión se reduce drásticamente, lo cual es esencial para planificar la implementación real en la industria.

El valor de este _paper_ es que convierte un proceso manual y propenso a errores (la revisión de diseño) en una tarea de ingeniería manejable. Es como haber encontrado la **"clave de traducción"** (el método de conversión de formato) que permite que la IA, que normalmente solo entiende lenguaje fluido, pueda leer e interpretar los **"planos complejos"** (documentos de diseño tabular) de manera efectiva, aunque sigue alertando que para los proyectos de planos de "super-rascacielos" (más de 5000 caracteres) la IA aún necesita mejoras en su capacidad de retención y análisis.
