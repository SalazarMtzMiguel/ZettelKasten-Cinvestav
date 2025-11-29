#CitaLatex 
@article{KarlovsKarlovskis2024GenerativeArtificial,
  title = {Generative Artificial Intelligence Use in Optimising Software Engineering Process: A Systematic Literature Review},
  volume = {29},
  ISSN = {2255-8691},
  url = {http://dx.doi.org/10.2478/acss-2024-0009},
  DOI = {10.2478/acss-2024-0009},
  number = {1},
  journal = {Applied Computer Systems},
  publisher = {Walter de Gruyter GmbH},
  author = {Karlovs-Karlovskis,  Uldis},
  year = {2024},
  month = jun,
  pages = {68–77}
}

Referencia del archivo original: `(Uldis Karlovs-Karlovskis) Generative Artificial Intelligence Use in Optimising Software Engineering Process A Systematic Liter.pdf` [[(Uldis Karlovs-Karlovskis) Generative Artificial Intelligence Use in Optimising Software Engineering Process A Systematic Liter.pdf]]

El documento seleccionado para el análisis es la **Revisión Sistemática de la Literatura (SLR)** titulada **"Generative Artificial Intelligence Use in Optimising Software Engineering Process: A Systematic Literature Review"** (Uso de Inteligencia Artificial Generativa en la Optimización del Proceso de Ingeniería de _Software_: Una Revisión Sistemática de la Literatura), cuyo autor es Uldis Karlovs-Karlovskis.

Este trabajo examina la aplicación de la Inteligencia Artificial Generativa (IA Generativa o GenAI) en la optimización del proceso de Ingeniería de _Software_ (SE), identificando los subcampos más activos, los métodos de investigación utilizados y las principales brechas en la literatura actual.

### Resumen Completo del Documento

**1. Contexto y Justificación de la Revisión:** La IA Generativa es una tecnología muy reciente, pero ya se está aplicando en la Ingeniería de _Software_ (SE). Los datos históricos muestran una tendencia de **disminución en la investigación general de SE a partir de 2021** (cayendo continuamente hasta 2023), mientras que la investigación enfocada en la IA Generativa está creciendo.

El propósito de la SLR es entender la extensión de esta investigación, enfocándose en la aplicación de la GenAI _para_ optimizar las prácticas de ingeniería. La revisión se basa en un análisis de **117 estudios** comenzando desde el año 2020, marcado como el inicio simbólico de la IA Generativa usable debido al lanzamiento de la API abierta de OpenAI.

**2. Metodología de la Revisión:** El estudio utilizó un **método mixto** y la estrategia de muestreo de la literatura fue enriquecida con la técnica de _Snowballing_ hacia adelante y hacia atrás. Se utilizaron bases de datos como Scopus.com.

La revisión buscó responder tres preguntas clave de investigación (RQ):

- **RQ1:** ¿Qué subcampos de SE son activamente experimentados con IA Generativa y cuáles están subrepresentados?
- **RQ2:** ¿Quiénes son los investigadores activos para futura colaboración?
- **RQ3:** ¿Cuáles son los métodos de investigación más comunes utilizados?

**3. Resultados Clave (RQ1: Popularidad de Subcampos):** Para clasificar los estudios, se utilizó una ilustración del ciclo de vida de DevOps de ocho fases, complementada con clases adicionales (Documentación, Arquitectura, etc.). El análisis de los 117 estudios mostró un desequilibrio preocupante en la investigación:

- **Subcampo Más Popular (Código):** El **65% de los estudios se centran en el subcampo de "Código"**. Esto incluye la generación de código, asistentes de codificación y experimentos automatizados de corrección de errores (_bug-fixing_). La alta concentración se debe, en parte, a que los investigadores pueden experimentar eficientemente con bases de datos públicas, que típicamente contienen código fuente abierto, aunque los resultados a menudo son exitosos solo en escenarios **inconscientes del contexto** (_context-unaware_).
- **Subcampos Bajo Representados/Vacíos:** El **35% del esfuerzo total** se gasta en las fases antes y después de la codificación. Los subcampos **Build, Release y Deploy** fueron las áreas más subrepresentadas, ya que **no se identificó ni un solo estudio** relacionado con la aplicación de GenAI en ellas.
- **Otros Subcampos:** Arquitectura (2 estudios) y Diseño (3 estudios, enfocados en la creación visual de UI/UX) también tienen un número muy bajo de estudios. La Documentación (10 estudios) es el segundo subcampo más grande, aunque la IA Generativa aún tiene el desafío de una comprensión profunda del programa.

**4. Resultados Clave (RQ3: Métodos de Investigación):** Para clasificar los métodos, se utilizó el marco de Kitchenham.

- El método de investigación más popular, por asunción del autor, es el **Experimento (55%)**.
- Los estudios de Producto (_Product study_), centrados en tecnologías comerciales específicas (como ChatGPT 3.5-turbo o GitHub Copilot), representan el 19%.
- Las Encuestas de Opinión (_Opinion surveys_) son el tercer grupo más grande (14%).
- Es importante notar que los investigadores a menudo **no definen claramente el método de investigación** utilizado.
- Se identificaron **cero casos de estudio** (_case studies_).

**5. Conclusiones y Trabajo Futuro:** La revisión concluye que existe una **clara tendencia visible en las tareas de generación de código**. La falta de casos de estudio sugiere que los artefactos novedosos desarrollados por los científicos a menudo **no se implementan en el campo**. La escasa investigación en subcampos como **Build, Release, Deploy, Operate y Monitor** indica una vasta área sin explotar para la optimización, el ahorro de costes y la novedad. Los autores sugieren que futuras investigaciones deben concentrarse en estas fases de la "derecha" del ciclo de vida de SE, posiblemente mediante la aplicación de **principios de Ingeniería Dirigida por Modelos (MDE) y algoritmos de IA para crear soluciones de Automatización DevOps**.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de la SLR sobre las tendencias actuales y las brechas críticas se fundamentan en las siguientes ideas clave:

1. **Existe un Sesgo Cuantitativo Abarcador de la Investigación Hacia la Codificación (65%), Desatendiendo Áreas Críticas de la Operación y Entrega:** La conclusión de que el campo está sobrecargado en el código y subrepresentado en DevOps se fundamenta en el **análisis de la distribución de los 117 estudios**, que mostró que el **65% se ubica en 'Código'** y **0% en 'Build', 'Release' y 'Deploy'**. Este desequilibrio numérico prueba la brecha de conocimiento en la "derecha" del ciclo de vida de DevOps.
2. **La Inmadurez Metodológica de la Investigación Limita la Implementación Práctica de los Artefactos Novedosos:** La conclusión de que se requiere una mayor madurez en la investigación se basa en el hallazgo de que **los métodos de investigación rara vez se declaran formalmente** y que los estudios de **Caso de Estudio son casi nulos**. La ausencia de este tipo de estudios sugiere que los artefactos desarrollados por la academia a menudo no se implementan ni evalúan en entornos reales, limitando su impacto industrial.
3. **El Potencial de Optimización de Costos y Novedad Recae Principalmente en los Subcampos de DevOps Subrepresentados:** La sugerencia para el trabajo futuro se basa en la idea de que la **escasa investigación en Build, Release, Deploy, Operate y Monitor** representa una **"amplia área sin explotar"** que, si se aborda con GenAI, podría generar una **"optimización importante"** y un ahorro de costes significativos en la Ingeniería de _Software_ en general.

---

### Valor del Paper

El artículo **"Generative Artificial Intelligence Use in Optimising Software Engineering Process: A Systematic Literature Review"** tiene un valor estratégico significativo:

- **Mapeo Cuantitativo y Temporalmente Relevante:** El documento proporciona una **vista cuantitativa y sistemática** del estado del arte de la GenAI en SE desde 2020 hasta 2023, en un campo de rápido desarrollo, lo que lo convierte en una **referencia fundamental** para la comunidad investigadora.
- **Identificación de Brechas Críticas:** El valor más alto reside en la **identificación de las brechas de investigación** en la "derecha" del ciclo de vida de DevOps (Build, Release, Deploy, Operate, Monitor), sugiriendo oportunidades claras para la novedad y la aplicación práctica con potencial para un **ahorro de costes importante**.
- **Análisis Metodológico:** Al clasificar los métodos de investigación, el _paper_ subraya la **inmadurez del campo**, la cual se caracteriza por la dependencia en experimentos y la falta de rigor en la documentación de los métodos. Esto es un llamado de atención a los investigadores para que mejoren la calidad de la evaluación.

El valor de esta SLR es que funciona como un **informe de mercado crítico** para la aplicación de la IA Generativa en la ingeniería. Indica con precisión que la mayoría de los recursos están _construyendo carreteras en una sola ciudad (Codificación)_, mientras que hay **vastos continentes (Build, Release, Deploy)** sin explorar donde la inversión de IA podría generar el mayor rendimiento y optimización para las organizaciones.
