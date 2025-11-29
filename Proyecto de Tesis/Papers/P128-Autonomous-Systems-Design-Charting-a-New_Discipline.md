#CitaLatex 
@article{Saidi2022AutonomousSystems,
  title = {Autonomous Systems Design: Charting a New Discipline},
  volume = {39},
  ISSN = {2168-2364},
  url = {http://dx.doi.org/10.1109/MDAT.2021.3128434},
  DOI = {10.1109/mdat.2021.3128434},
  number = {1},
  journal = {IEEE Design &amp; Test},
  publisher = {Institute of Electrical and Electronics Engineers (IEEE)},
  author = {Saidi,  Selma and Ziegenbein,  Dirk and Deshmukh,  Jyotirmoy V. and Ernst,  Rolf},
  year = {2022},
  month = feb,
  pages = {8–23}
}

Referencia del archivo original: `(Selma Saidi) Autonomous Systems Design Charting a New_Discipline.pdf` [[(Selma Saidi) Autonomous Systems Design Charting a New_Discipline.pdf]]

El documento seleccionado para el análisis es el artículo **"Autonomous Systems Design: Charting a New Discipline"** (Diseño de Sistemas Autónomos: Trazando una Nueva Disciplina), cuyos autores son Selma Saidi, Dirk Ziegenbein, Jyotirmoy V. Deshmukh y Rolf Ernst.

Este _position paper_ aborda el desafío de diseñar, verificar y garantizar la seguridad de los **Sistemas Autónomos (Autonomous Systems, AS)**, argumentando que los procesos de ingeniería de sistemas tradicionales (como el Modelo V, dominante en la industria) son insuficientes para manejar el **comportamiento evolutivo e impredecible** de los AS. El objetivo central del artículo es estructurar el diseño de AS como una **nueva disciplina de ingeniería** que requiere colaboración interdisciplinaria.

### Resumen Completo del Documento

**1. Definición y Contexto:** Los Sistemas Autónomos son aquellos que **actúan independientemente, resuelven tareas complejas sin intervención humana** y son **capaces de aprender y adaptarse** a un entorno en evolución. La **Autonomía** se refiere a que el sistema es autodirigido y flexible en la toma de decisiones para alcanzar sus metas, mientras que la **Autonomicidad** (o Auto-X) significa que es autosuficiente y autogestionado, por ejemplo, manteniéndose operativo en presencia de fallas.

Los AS son una extensión de los Sistemas Ciberfísicos (CPS) y operan en la intersección de dominios como la Automatización, la IA y los CPS. Heredan estrictos requisitos de **dependencia** (como seguridad, disponibilidad, _real-time_ y seguridad funcional) de los CPS.

**2. Arquitectura Funcional (Bucles de Retroalimentación):** Los AS pueden ser estructurados con dos bucles de retroalimentación superpuestos:

- **Bucle Externo (Interacción con el Entorno):** Sensa el entorno, crea un **modelo interno del entorno** (conocimiento), y realiza acciones que afectan el entorno.
- **Bucle Interno (Autoconciencia):** Monitoriza el sistema mismo, crea un **modelo del sistema** (autoconciencia) y realiza acciones para adaptar el sistema a cambios en el entorno y el estado del sistema.

Ambos bucles convergen en una funcionalidad central de **"percibir-razonar-decidir-controlar"**, que abarca funciones que operan en diferentes escalas de tiempo, desde el control reactivo rápido hasta la auto-optimización lenta basada en el aprendizaje.

**3. Desafíos de Diseño Críticos:** El diseño de AS es fundamentalmente diferente del diseño de sistemas tradicionales. Debido a que el **comportamiento autónomo evoluciona y se adapta durante el tiempo de operación**, el sistema no puede ser completamente probado y verificado utilizando métodos tradicionales en el tiempo de diseño (_design time_). Los principales desafíos son:

- **Aseguramiento y Seguridad Funcional (Safety):** Los estándares tradicionales (ej. ISO 26262) asumen una especificación de sistema correcta y completa, lo cual es imposible para AS debido al **entorno inespecífico (_underspecified environment_)**. Se necesitan nuevas técnicas para la garantía de modelos impulsados por datos (LEC) y la consideración de la Seguridad de la Funcionalidad Prevista (**SOTIF**) para reducir la probabilidad de deficiencias funcionales debido a situaciones imprevistas.
    
    - **Monitoreo y Arquitecturas de Seguridad:** Se necesitan **monitores** y arquitecturas que soporten la **autorreflexión** para salvaguardar contra la violación de objetivos. Esto lleva a la necesidad de arquitecturas en capas (multilayed architectures), donde **Componentes Supervisorios Autónomos (ASCs)** monitorizan y adaptan el comportamiento de los **Componentes de Función Autónoma (AFCs)** o Componentes Habilitados para el Aprendizaje (LECs).
    - **Reutilización de Componentes (SEooC):** El concepto de Elemento de Seguridad Fuera de Contexto (SEooC) de ISO 26262, que utiliza suposiciones sobre el contexto para el desarrollo de componentes, puede servir como un **modelo para la seguridad de AS**, aunque las suposiciones deben operacionalizarse como monitores en tiempo de ejecución.
- **Verificación (Verification):** La verificación es compleja debido a los componentes heterogéneos y la posibilidad de **comportamiento emergente (_emergent behavior_)**.
    
    - **Métodos Híbridos:** Aunque la verificación formal (como _model checking_ o _theorem proving_) puede ser difícil de escalar o indecidible para AS genéricos, las técnicas complementarias como la **Verificación en Tiempo de Ejecución (RV)**, el monitoreo estadístico y el _falsification_ son cruciales.
    - **Desafíos de Especificación y LECs:** Los mayores desafíos son la **falta de lenguajes de especificación formal estándar** para AS (especialmente para la percepción) y la **verificación de componentes habilitados para el aprendizaje (LECs)**, donde las técnicas actuales sufren de problemas de escalabilidad.
    - **Propiedades a Verificar:** Las propiedades a verificar incluyen la **corrección funcional** (asumiendo-garantizando), la **seguridad funcional** (en el entorno estocástico), el **rendimiento del sistema**, la **seguridad/privacidad/confianza**, la **confiabilidad/tolerancia a fallos** y, crucialmente, el **comportamiento emergente**.
- **Automatización del Diseño (DA):** Los métodos de DA deben evolucionar para soportar la fase de operación autónoma.
    
    - **Proceso Coherente de Dos Fases:** Se sugiere un proceso de dos fases: una **fase de diseño de laboratorio** y una **fase de operación autónoma**. El _Design Automation_ debe preparar y configurar las capacidades _Self-X_ del sistema en la fase de laboratorio.
    - **Toma de Decisiones en Operación:** Los métodos de DA (como la exploración del espacio de diseño y el análisis de fallos) deben ejecutarse en tiempo de operación para optimizar y salvaguardar el sistema en evolución.

**4. Proceso de Diseño Propuesto (Mejora del Modelo V):** El artículo propone una **mejora del proceso de diseño tradicional (V-model)** que mantiene la compatibilidad industrial pero añade el control de las capacidades _Self-X_. Esta mejora introduce **bucles de retroalimentación** que conectan la fase de operación autónoma con las fases de diseño inicial (concepto, arquitectura, pruebas y verificación) para gestionar las suposiciones y el comportamiento evolutivo.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de definir el diseño de Sistemas Autónomos como una nueva disciplina y los desafíos que deben abordarse se fundamentan en las siguientes ideas clave:

1. **El Comportamiento Autónomo Evolutivo Anula la Metodología de Diseño y Verificación Tradicional:** La conclusión de que los procesos de diseño CPS existentes son insuficientes se basa en que el **comportamiento de un AS evoluciona y se adapta durante el tiempo de operación**. Esto implica que la **predecibilidad se pierde**, y el sistema no puede ser completamente verificado en la fase de diseño, lo que fuerza a trasladar gran parte de las tareas de diseño, verificación y aseguramiento al tiempo de ejecución (_runtime_).
2. **La Garantía de Seguridad Funcional y SOTIF Requiere Monitoreo y Arquitecturas de Supervisión Multicapa en Tiempo de Ejecución:** La conclusión de que se requiere una nueva arquitectura se fundamenta en que las suposiciones de seguridad sobre el entorno y el comportamiento solo pueden garantizarse mediante la **operacionalización de suposiciones como monitores** en el tiempo de ejecución. Esto se implementa a través de una **arquitectura en capas** que separa las funciones autónomas (AFCs/LECs) de los componentes supervisorios de seguridad (ASCs), garantizando que la supervisión no dependa de la función supervisada.
3. **El Diseño Exitoso de AS Requiere una Perspectiva Interdisciplinaria y un Proceso Coherente con Bucles de Retroalimentación (_Feedback_):** La conclusión de que se necesita una "nueva disciplina" se basa en que el diseño de AS es la intersección de CPS, IA, Comunicaciones, Computación Autoconsciente (_Self-Aware Computing_) y EDA. El diseño propuesto integra una **fase de diseño de laboratorio rigurosa** con una **fase de operación autónoma** a través de **bucles de retroalimentación**. Esto garantiza que las restricciones y capacidades de la fase de operación (las capacidades _Self-X_) se consideren y se controlen desde la fase de diseño inicial.

---

### Valor del Paper

El artículo **"Autonomous Systems Design: Charting a New Discipline"** es un documento fundamental con un valor conceptual y estratégico muy alto:

- **Definición de una Nueva Disciplina:** El trabajo establece formalmente la necesidad de una nueva disciplina de ingeniería para el Diseño de Sistemas Autónomos, diferenciándola de la simple integración de componentes de CPS o IA.
- **Marco Arquitectónico y Procesual Riguroso:** Proporciona un **marco arquitectónico** claro (bucles internos/externos, AFCs y ASCs) y una **propuesta de mejora procesal** (la extensión del Modelo V con _feedback_ y fases de operación/laboratorio). Esto ofrece una hoja de ruta para que la industria aborde la complejidad de los AS de manera estructurada y segura.
- **Identificación de Desafíos de Investigación Clave:** El artículo enumera y elabora los desafíos más apremiantes en la verificación y el aseguramiento, especialmente: la verificación de **LECs**, la falta de **lenguajes de especificación formal**, y la necesidad de **síntesis de monitores y ejecución en tiempo de ejecución (_runtime enforcement_)**. Esto dirige la investigación futura hacia las áreas de mayor impacto.

El Diseño de Sistemas Autónomos es como construir un **cohete espacial reutilizable y consciente de sí mismo**. Los métodos de ingeniería tradicionales (el Modelo V) pueden diseñar la primera etapa y verificar que funcionará en condiciones conocidas. Pero como el cohete debe aterrizar y volar de nuevo en condiciones siempre cambiantes (entorno inespecífico), el diseño debe incluir un **"cerebro supervisor" (ASCs)** que continuamente **monitoriza y ajusta (autoadaptación)** la arquitectura interna. El valor de este _paper_ es que proporciona el **manual de ingeniería** que conecta el diseño inicial con los mecanismos de autoconciencia y adaptación continua, asegurando que el cohete se mantenga seguro, incluso cuando su comportamiento no es totalmente predecible en el momento del lanzamiento.
