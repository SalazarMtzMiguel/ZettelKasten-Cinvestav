#CitaLatex 
@INPROCEEDINGS{AnupriyaSharmaArtificialIntelligence,
  author={Ghai, Anupriya Sharma and Rawat, Vandna and Gupta, Vishan Kumar and Ghai, Kapil},
  booktitle={2024 International Conference on Electrical Electronics and Computing Technologies (ICEECT)}, 
  title={Artificial Intelligence in System and Software Engineering for Auto Code Generation}, 
  year={2024},
  volume={1},
  number={},
  pages={1-5},
  abstract={Artificial Intelligence has profoundly impacted system and software engineering by facilitating the automation of complicated tasks, reducing errors, and accelerating the development process. AI-driven tools help enhance efficiency, improve code quality, and promote the generation of more adaptive and innovative software solutions. The present research uses AI-generated tools to explore how AI transforms code synthesis. The study will include a comparative analysis of the performance of manual coding and other automated methods to explore how AI can accelerate code synthesis and make modern web development more competent or effective. It is suggested in the research that with algorithmic and contextual consideration, the quality of code developed by the AI would be higher in most cases than by people due to lower error rates and shorter synthesis. Overall, the central conclusion of the research is that AI plays a crucial role in transforming systems and software engineering. The paper also includes information on ethical dilemmas, robust validation mechanisms, conservative modes, and current research.},
  keywords={Ethics;Codes;Error analysis;Software algorithms;Transforms;Manuals;Software;Encoding;Artificial intelligence;Software engineering;Artificial intelligence;system and software engineering;ai code generation;manual code},
  doi={10.1109/ICEECT61758.2024.10738945},
  ISSN={},
  month={Aug},}


Referencia del archivo original: `(Anupriya Sharma) Artificial Intelligence in System and Software Engineering for Auto Code Generation.pdf` [[(Anupriya Sharma) Artificial Intelligence in System and Software Engineering for Auto Code Generation.pdf]]

El documento seleccionado es **"Artificial Intelligence in System and Software Engineering for Auto Code Generation"**.

Este artículo explora el impacto de la Inteligencia Artificial (AI) en la ingeniería de sistemas y _software_, centrándose específicamente en la **generación automática de código**.

A continuación, se presenta un resumen completo, las ideas clave que fundamentan las conclusiones y la determinación del valor del _paper_.

### Resumen Completo del Documento

**1. Contexto y Objetivos:** La AI ha tenido un impacto profundo en la ingeniería, facilitando la automatización de tareas complejas, reduciendo errores y acelerando el proceso de desarrollo. La investigación se centra en cómo las herramientas impulsadas por la AI transforman la **síntesis de código**. El estudio incluye un **análisis comparativo** del rendimiento entre la codificación manual y los métodos automatizados por AI, con el objetivo de demostrar cómo la AI puede hacer que el desarrollo web moderno sea más competente y efectivo.

**2. Revisión de la Literatura (Fundamento Teórico):** La AI ha evolucionado desde sus fundamentos teóricos establecidos por Alan Turing y John McCarthy hasta la integración actual de **algoritmos de _machine learning_** y **redes neuronales**. La integración de la AI en la ingeniería de _software_ va más allá de la simple automatización; promueve la interoperabilidad, la adaptación a requisitos cambiantes y mejora la gobernanza de proyectos mediante el análisis de datos.

Dentro de la ingeniería de _software_, las técnicas de AI han transformado seis dominios clave:

- **Generación Automatizada de Código:** Modelos de _deep learning_ como GPT-3 se afinan para generar código funcional, acelerando el desarrollo.
- **Detección y Resolución de _Bugs_:** Herramientas combinan análisis de código con _machine learning_ para predecir y, en algunos casos, corregir _bugs_ automáticamente.
- **Revisión de Código:** La AI utiliza NLP para realizar revisiones más conscientes del contexto y asegurar la consistencia de los estándares de codificación.
- **Mantenimiento Predictivo:** Modelos de _machine learning_ predicen fallas del sistema o degradación del rendimiento basándose en patrones históricos.
- **Optimización de _Pipelines_ CI/CD:** Algoritmos analizan datos históricos para identificar cuellos de botella y recomendar estrategias de despliegue más eficientes.
- **Asistencia Personalizada al Desarrollador:** Herramientas basadas en ML entienden estilos de codificación individuales para ofrecer sugerencias adaptadas.

**3. Metodología (Estudio Cuasi-Experimental):** El estudio utiliza un **diseño cuasi-experimental** para comparar la generación de código asistida por AI con la codificación manual. Se seleccionaron deliberadamente **cuatro algoritmos de clasificación** (Merge Sort, Bubble Sort, Insertion Sort y Selection Sort) para una evaluación integral.

Se definieron las siguientes métricas y grupos para la comparación:

- **Métricas:** Tiempo de Desarrollo (Tiempo Finalizado - Tiempo de Inicio), Líneas de Código (LOC) y Tasa de Error (Número de Errores / LOC).
- **Grupos:** Grupo A (Código Generado por AI) y Grupo B (Codificación Manual).

La hipótesis alternativa ($H_1$), que se acepta finalmente, plantea que el código generado por AI mostrará **ganancias de eficiencia** en tiempo de desarrollo, líneas de código y tasas de error en comparación con el código escrito manualmente.

**4. Resultados del Análisis:** Se aplicaron pruebas t de Student pareadas para evaluar la significancia estadística de las diferencias. Los resultados fueron los siguientes:

- **Tiempo de Desarrollo:** El tiempo promedio para el código generado por AI fue de **9 minutos**, mientras que para el código manual fue de **13 minutos**. La diferencia fue altamente significativa ($p$-valor de 0.0), lo que indica que la AI permite una finalización de tareas significativamente más rápida. Las ganancias de eficiencia oscilaron entre 5 y 8 minutos.
- **Líneas de Código (LOC):** El código generado por AI fue significativamente más conciso, con un promedio de **50.15 líneas** frente a **80.3 líneas** para el código manual. La reducción promedio en LOC fue de 28 a 30 líneas. El $p$-valor bajo confirma que el código generado por AI es más conciso.
- **Tasas de Error:** El análisis mostró una imagen matizada, pero el grupo de AI generalmente exhibió **tasas de error más bajas** (tanto de sintaxis/semántica como de tiempo de ejecución) en los algoritmos. El $p$-valor de **0.048** para el test pareado se considera estadísticamente significativo (por debajo de 0.050), confirmando una clara ventaja de eficiencia del código generado por AI en las tres métricas.

**5. Conclusión Central:** La conclusión central de la investigación es que **la AI juega un papel crucial en la transformación de la ingeniería de sistemas y _software_**. El estudio rechaza la hipótesis nula ($H_0$) y acepta la alternativa ($H_1$), concluyendo que el código generado por AI demuestra **claras ventajas de eficiencia** en tiempo de desarrollo, concisión y tasas de error sobre la codificación manual.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ se fundamentan en la prueba empírica y la evidencia estadística generada por el estudio comparativo:

1. **La Premisa de la Automatización es Válida:** La idea central que justifica la investigación es que la AI puede reducir la carga cognitiva y de tiempo en la programación. La conclusión se basa en la prueba de que la AI logra una **reducción estadísticamente significativa** en el **tiempo de desarrollo** (9 minutos vs. 13 minutos), lo que demuestra que la AI acelera la síntesis de código.
2. **La Concisión Implica Mayor Calidad y Menos Errores:** La conclusión sobre la concisión del código se basa en la evidencia estadística de que el código generado por AI produce significativamente **menos líneas de código** (50.15 vs. 80.3 líneas). Este hecho, combinado con tasas de error más bajas, sustenta la sugerencia de que la **calidad del código desarrollado por AI sería mayor** en la mayoría de los casos que por personas debido a las tasas de error más bajas y una síntesis más corta.
3. **Validación Estadística Rigurosa:** La conclusión de que la AI ofrece **claras ventajas de eficiencia** se basa directamente en la aplicación de **pruebas t-pareadas** con $p$-valores muy bajos (0.0 para tiempo y LOC, 0.048 para tasas de error). Esto proporciona una base estadística sólida para rechazar la hipótesis nula y aceptar las ganancias de eficiencia de la AI.

---

### Valor del Paper

El valor del _paper_ radica en que proporciona **validación empírica y cuantificable** del impacto de la AI en la generación de código, un área de rápida evolución dentro de la ingeniería de _software_.

- **Evidencia Cuantitativa de Eficiencia:** El valor más significativo es la presentación de **datos concretos** que demuestran una **ganancia de eficiencia estadísticamente significativa** en las tres métricas clave (tiempo, concisión y errores). Esto convierte al _paper_ en una fuente de referencia sólida para justificar la integración de herramientas de AI en entornos de desarrollo.
- **Enfoque en la Calidad del Código:** Al centrarse no solo en la velocidad, sino también en la **concisión y las tasas de error**, el estudio refuerza la idea de que la AI no solo acelera el proceso, sino que también tiene el potencial de **mejorar la calidad del código**.
- **Hoja de Ruta para la Integración:** El _paper_ sugiere que la integración de código generado por AI es vital en escenarios donde la **rapidez y la concisión son cruciales**. Las futuras direcciones de investigación se centran en la optimización algorítmica y la integración fluida en los flujos de trabajo existentes, lo que demuestra la relevancia práctica del trabajo para la industria.
- **Abordaje de Implicaciones Éticas y Prácticas:** Aunque el foco es el rendimiento, el _paper_ reconoce la necesidad de abordar los **dilemas éticos** y los mecanismos de validación robusta para el código generado por AI, manteniendo el estudio anclado en las consideraciones más amplias de la ingeniería de _software_.
