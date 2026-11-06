# Estructura Estándar y Plantilla Metodológica para Tesis de Posgrado en CINVESTAV Guadalajara

## 1. Introducción y Marco de Referencia Institucional

El proceso de elaboración de una tesis de posgrado (Maestría o Doctorado en Ciencias) en el Centro de Investigación y de Estudios Avanzados del Instituto Politécnico Nacional (CINVESTAV), Unidad Guadalajara, exige una rigurosa organización estructural y metodológica. La estructura del documento no solo organiza el contenido técnico y científico, sino que actúa como la narrativa que conecta el problema de investigación, la fundamentación teórica, el estado del arte, la propuesta de solución, la validación experimental y las conclusiones alcanzadas.

Al analizar la producción académica reciente del grupo de investigación en redes y sistemas distribuidos del CINVESTAV Guadalajara, destacan tres tesis representativas: la tesis de maestría de David Emmanuel Ramírez Tovar (2020), enfocada en arquitecturas autonómicas y autoensamblables para IoT; la tesis de maestría de Giovana Patricia Pérez Carrillo (2024), dedicada a marcos conceptuales de autoingeniería y gestión del ciclo de vida; y la tesis doctoral de Liliana Durán Polanco (2026), centrada en modelos semánticos y selección de algoritmos para toma de decisiones en IoT.

El análisis de estos trabajos revela un patrón estructural altamente estandarizado y optimizado para la investigación en ingeniería eléctrica y ciencias de la computación. Mientras que las tesis de maestría adoptan una estructura monográfica clásica organizada en seis capítulos principales, la tesis doctoral extiende este modelo hacia una estructura articulada por contribuciones científicas independientes que derivan directamente en artículos de investigación indexados.

---

## 2. Elementos Indispensables de las Páginas Preliminares (Front Matter)

Las páginas preliminares establecen la validez formal e institucional del trabajo científico. Deben redactarse respetando estrictamente los formatos normativos del CINVESTAV y de las agencias otorgantes de becas de posgrado.

El siguiente desglose detalla la secuencia obligatoria de las páginas preliminares y sus requisitos de contenido:

*   **Portada Institucional Oficial**:
    *   *Encabezado*: Centro de Investigación y de Estudios Avanzados del Instituto Politécnico Nacional, Unidad Guadalajara.
    *   *Escudo*: Logotipo oficial del CINVESTAV (emblema vectorial de cinco pétalos/engranes).
    *   *Título del Trabajo*: Debe ser conciso, descriptivo y reflejar claramente el objeto de estudio y el dominio (por ejemplo, *Arquitectura Autonómica, Autoensamblable y Autorreplicable para Sistemas IoT* o *Selección de algoritmos para la toma de decisiones en el IoT basada en un modelo semántico*).
    *   *Grado a Obtener*: "Maestro en Ciencias" o "Doctor en Ciencias" en la especialidad de Ingeniería Eléctrica.
    *   *Autores y Asesores*: Nombre completo del sustentante con sus credenciales previas y nombre(s) completo(s) del director o directores de tesis con su afiliación institucional.
    *   *Lugar y Fecha*: Ciudad (Guadalajara, Jalisco), mes y año de disertación.
    *   *Versión Bilingüe*: En el grado de Doctorado, como se ejemplifica en la tesis de Liliana Durán Polanco, se incluye una réplica exacta de la portada en idioma inglés (*Algorithm selection based on a semantic model for decision-making in the IoT*).
*   **Hoja de Dictamen / Aprobación**:
    *   Formatos oficiales de firmas de los miembros del jurado examinador y directores de tesis aprobados por el Colegio del CINVESTAV.
*   **Resumen y Abstract (Resumen Bilingüe)**:
    *   *Extensión*: Entre 300 y 500 palabras.
    *   *Estructura del Resumen*: Declaración sintética del problema no resuelto, el objetivo del trabajo, la metodología/propuesta planteada, las contribuciones clave (como el desarrollo de metamorfosis o taxonomías) y los resultados cuantitativos o cualitativos de la validación.
*   **Dedicatoria y Agradecimientos**:
    *   *Agradecimientos Personales e Institucionales*: Se acostumbra agradecer formalmente al asesor principal, a los profesores del área de computación, a los compañeros del laboratorio y del grupo de investigación de redes, así como a la comunidad general del CINVESTAV.
    *   *Mención Obligatoria de Becas*: Es un requisito institucional indispensable incluir el agradecimiento al organismo financiador de la beca de posgrado, registrando expresamente el número de expediente o número de becario otorgado por CONAHCYT o SECIHTI.
*   **Índices Técnicos**:
    *   *Índice de Contenido (Table of Contents)*: Estructura jerárquica con numeración decimal para capítulos y secciones (hasta un tercer nivel de profundidad: 1.1, 1.1.1).
    *   *Índice de Figuras / List of Figures*: Lista numerada de diagramas, esquemas, gráficas y fotografías con sus leyendas y páginas correspondientes.
    *   *Índice de Tablas / List of Tables*: Lista organizada de cuadros comparativos, matrices de requerimientos y tablas de parámetros.

---

## 3. Capítulo 1: Introducción y Planteamiento del Problema

El primer capítulo actúa como la piedra angular del documento, estableciendo el contexto, la justificación formal y la delimitación de los alcances de la investigación.

### Estructura Seccional Obligatoria del Capítulo 1

| Sección | Denominación Estándar | Propósito y Elementos Clave |
| :--- | :--- | :--- |
| **1.1** | Contexto / Introducción General | Antecedentes generales del dominio de estudio (IoT, sistemas ciberfísicos, cómputo autonómico), evolución histórica del tema y estado general de la tecnología. |
| **1.2** | Definición del Problema | Brecha de conocimiento o limitación técnica específica que la literatura o la industria actual no ha resuelto. Debe argumentar por qué las soluciones existentes son insuficientes. |
| **1.3** | Motivación | Razones científicas, tecnológicas o socioeconómicas que justifican abordar el problema. Impacto esperado de resolver dicha problemática. |
| **1.4** | Hipótesis | Declaración propositiva, clara y contrastable científicamente. Plantea la relación entre la solución propuesta y los resultados esperados. |
| **1.5** | Objetivos de Investigación | Meta general de la tesis (verbo en infinitivo + objeto de estudio + medio + finalidad) y desglose secuencial de objetivos específicos. |
| **1.6** | Contribuciones del Trabajo | Enumeración puntual de las aportaciones teóricas, metodológicas, arquitectónicas o de software generadas por la investigación. |
| **1.7** | Estructura del Documento | Breve descripción narrativa del contenido de cada uno de los capítulos subsecuentes de la tesis. |

### Directrices de Redacción para Elementos Críticos

> **Redacción de la Hipótesis Científica**:
> La hipótesis debe formularse de manera directa y medible. En la tesis de maestría de Giovana Pérez Carrillo, la hipótesis establece expresamente que a partir de un nuevo marco conceptual y una arquitectura para sistemas de autoingeniería, es posible gestionar la evolución y cambios de requerimientos sin intervención humana más allá del ciclo de vida tradicional del sistema. En la tesis doctoral de Liliana Durán Polanco, se plantea que el modelado semántico permite habilitar la adaptabilidad en tiempo de ejecución ante cambios funcionales en los algoritmos de toma de decisiones.

---

## 4. Capítulo 2: Marco Teórico (Theoretical Background)

El Marco Teórico proporciona los cimientos conceptuales, matemáticos y tecnológicos necesarios para comprender la propuesta desarrollada en la tesis. No debe confundirse con una revisión del estado del arte; su función es educar al lector en las teorías, modelos y estándares sobre los cuales se edifica la investigación.

### Componentes Indispensables del Marco Teórico

1.  **Fundamentación de Dominio y Sistemas**:
    *   Definición formal de los sistemas analizados: Sistemas Ciberfísicos (CPS), Internet de las Cosas (IoT), Sistemas Multi-Agente (MAS) o Middleware de comunicación.
    *   Como se ejemplifica en la tesis de David Ramírez Tovar, se parte de las definiciones básicas de sistemas embebidos hasta llegar a arquitecturas distribuidas complejas.
2.  **Paradigmas y Modelos de Referencia de Computación**:
    *   *Cómputo Autonómico*: Explicación detallada del bucle de control de autoadaptación MAPE-K (Monitoring, Analyze, Plan, Execute over Knowledge), ampliamente citado en los trabajos del grupo de investigación de CINVESTAV.
    *   *Patrones Arquitectónicos*: Comparativas entre Arquitecturas Orientadas a Servicios (SOA) y Arquitecturas Orientadas a Microservicios (MSA), justificando su uso en redes distribuidas.
3.  **Conceptos Interdisciplinarios o Biológicos Inspiradores**:
    *   Modelos formales de autorreplicación (autómatas celulares de Von Neumann, conceptos de quines) o procesos biológicos de adaptación (como la metáfora de metamorfosis y replicación de ADN aplicada al código fuente).
4.  **Ingeniería de Requerimientos y Ciclo de Vida**:
    *   Modelos del ciclo de vida del software y teorías de evolución de software (leyes de Lehman y gestión de cambio), como los abordados en la tesis de Giovana Pérez Carrillo.

---

## 5. Capítulo 3: Estado del Arte y Trabajos Relacionados

El Estado del Arte evalúa críticamente las soluciones existentes en la literatura científica para evidenciar las brechas de conocimiento que justifican la tesis.

### Pasos Metodológicos para la Construcción del Capítulo 3

*   **Metodología de Revisión Sistemática**:
    *   Para garantizar la rigurosidad y reproducibilidad científica, es altamente recomendable incorporar metodologías formales como PRISMA (Preferred Reporting Items for Systematic Reviews and Meta-Analyses) o la formulación PICO (Población, Intervención, Comparación, Resultados), tal como lo demuestra Giovana Pérez Carrillo en su propuesta.
*   **Taxonomía y Categorización de Enfoques**:
    *   Agrupar los trabajos previos por ejes temáticos (ej. arquitecturas IoT autonómicas, modelos semánticos de decisión, plataformas de simulación multi-agente).
*   **Tablas Analíticas Comparativas de Brechas (Gap Analysis)**:
    *   El elemento indispensable de este capítulo es la inclusión de tablas sintéticas que comparen las características de las soluciones de la literatura contra la propuesta de la tesis.

El siguiente cuadro ilustra la estructura estándar empleada en las tesis analizadas para realizar la evaluación comparativa del estado del arte:

| Enfoque / Autores | Escalabilidad | Heterogeneidad | Cómputo Distribuido | Modelo Autonómico | Gestión de Requerimientos | Autoensamblaje / Metamorfosis |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| **Villela (2018)** | Sí | Sí | No | MAPE-K | No | No |
| **Ruiz (2019)** | Sí | Sí | Sí | Parcial | No | No |
| **Manate (2020)** | Sí | Sí | Sí | No | No | No |
| **Propuesta de Tesis** | **Sí** | **Sí** | **Sí** | **Sí (MAPE-K Extendido)** | **Sí** | **Sí** |

---

## 6. Capítulo 4: Propuesta Metodológica, Conceptual y Arquitectónica

Este capítulo constituye el corazón científico de la tesis de Maestría o el inicio de las contribuciones nucleares en el Doctorado. Describe en detalle la solución original desarrollada por el sustentante.

### Elementos Indispensables de la Propuesta

1.  **Metodología de Investigación y Desarrollo**:
    *   Diagrama de flujo claro que detalle las fases metodológicas (Obtención de conocimiento, Estudio de referencia, Identificación de principios de diseño, Construcción de la propuesta, Selección de mecanismos de validación y Análisis).
2.  **Especificación Formal de Requerimientos**:
    *   Desglose estructurado de Requerimientos Funcionales (RF) y No Funcionales (RNF). En la metodología de Giovana Pérez Carrillo, cada requerimiento funcional se divide de forma explícita en dos componentes: *Funcionalidad* y *Configuración*.
3.  **Diseño Arquitectónico Multivista**:
    *   Para arquitecturas de software y sistemas distribuidos, se adopta de manera estándar el **Modelo de Vistas 4+1 de Kruchten**:
        *   *Vista Lógica*: Estructura conceptual, componentes y servicios.
        *   *Vista de Procesos*: Flujos de interacción, diagramas de actividad y secuencia entre agentes o módulos.
        *   *Vista de Despliegue*: Pila de protocolos de comunicación, estructuras de código y módulos de software.
        *   *Vista Física*: Distribución de nodos de hardware, routers y dispositivos finales.
        *   *Vista de Escenarios (+1)*: Casos de uso integradores que validan la interacción de las cuatro vistas.
4.  **Modelado Semántico u Ontológico (Especialmente en Doctorado)**:
    *   Como se presenta en la tesis doctoral de Liliana Durán Polanco, desarrollo de ontologías formales en lenguaje OWL 2 DL (Ontology for Decision-Making in the IoT - O-DMIoT), respaldadas por ontologías de fundamentación como UFO (Unified Foundational Ontology) y validadas mediante preguntas de competencia (*Competency Questions*).

---

## 7. Capítulo 5: Experimentación, Validación y Análisis de Resultados

El capítulo experimental demuestra de manera cuantitativa y cualitativa que la propuesta cumple con los objetivos y valida la hipótesis planteada.

### Estructura Operativa del Capítulo Experimental

*   **Descripción del Caso de Estudio**:
    *   Definición clara del escenario de aplicación real o simulado (por ejemplo, camas de cultivo urbano hidropónico en laboratorio, sistemas ciberfísicos de rescate o redes inteligentes en smart cities).
*   **Entorno de Simulación o Plataforma Experimental**:
    *   Justificación de las herramientas utilizadas (ej. **GAMA Platform** para modelado basado en agentes, scripts en Python para programas Quines, u ontologías en Protégé).
*   **Diseño de Escenarios Experimentales**:
    *   *Pruebas Estáticas*: Validación analítica de flujos de ejecución, fusiones de clases de código y diagramas de secuencia.
    *   *Pruebas Dinámicas*: Ejecución de simulaciones variando el número de agentes (comunidades de 25 a 50 dispositivos), número de clases a replicar o condiciones del entorno.
*   **Métricas de Evaluación**:
    *   Definición rigurosa de las variables observadas (tiempo de convergencia, porcentaje de replicaciones exitosas, cumplimiento de requerimientos o Calidad de la Experiencia - QoE centrada en el usuario).
*   **Discusión Crítica de Resultados**:
    *   Presentación de gráficas de comportamiento temporal, histogramas y cuadros analíticos que demuestren la superioridad o efectividad del enfoque propuesto.

---

## 8. Capítulo 6: Conclusiones y Trabajo Futuro

El capítulo final sintetiza los hallazgos fundamentales, evalúa honestamente el alcance de la investigación y traza la hoja de ruta para futuras investigaciones.

### Secciones Indispensables de Cierre

1.  **Discusión General y Conclusiones**:
    *   Resumen argumentativo de cómo la investigación resuelve la problemática planteada en el Capítulo 1.
2.  **Verificación de Objetivos Alcanzados**:
    *   Lista de cotejo o análisis explícito donde se demuestre cómo se cumplió el objetivo general y cada uno de los objetivos específicos formulados al inicio de la tesis.
3.  **Contribuciones Científicas y Tecnológicas**:
    *   Recapitulación sintética de los aportes clave (marcos conceptuales, ontologías, algoritmos o prototipos de software).
4.  **Limitaciones de la Investigación**:
    *   Reconocimiento transparente de los supuestos, fronteras teóricas o restricciones experimentales del trabajo.
5.  **Líneas de Trabajo Futuro**:
    *   Propuesta de nuevas preguntas de investigación, expansión de casos de estudio a otros dominios o mejoras arquitectónicas necesarias.

---

## 9. Secciones Finales: Referencias, Publicaciones y Anexos

Las secciones finales respaldan la validez bibliográfica y tecnológica de la investigación y registran la difusión científica alcanzada.

*   **Referencias Bibliográficas**:
    *   Listado exhaustivo ordenado alfabéticamente o numéricamente según el estilo IEEE o Springer. Debe incluir artículos de revistas indexadas (Journal Citation Reports), conferencias de alto impacto y libros metodológicos.
*   **Sección de Publicaciones Derivadas de la Tesis**:
    *   Elemento obligatorio en tesis doctorales y altamente valorado en maestrías. Como se ilustra en la tesis de Liliana Durán Polanco, se incluye un capítulo o sección específica (ej. Capítulo 11) listando los artículos publicados en revistas internacionales (ej. *Internet of Things*), capítulos de libro y ponencias en congresos revisados por pares que surgieron directamente del trabajo de tesis.
*   **Anexos y Apéndices**:
    *   *Anexo A: Especificación Formal de Código o Gramáticas*: Fragmentos de código fuente, axiomas en Lógica de Descripción (DL) o especificaciones de ontologías OWL.
    *   *Anexo B: Repositorios de Código y Reproducibilidad*: Enlace formal a repositorios públicos (GitHub, GitFront) con código fuente, modelos GAMA y scripts de análisis para garantizar la reproducibilidad de los experimentos.
    *   *Anexo C: Material Gráfico Adicional*: Diagramas arquitectónicos ampliados o fotografías de prototipos físicos de laboratorio.

---

## 10. Matriz Comparativa: Estructura de Maestría vs. Estructura de Doctorado

Para orientar al estudiante según el grado académico que cursa en CINVESTAV, la siguiente matriz sintetiza las diferencias estructurales clave entre ambos niveles de posgrado:

| Dimensión Estructural | Tesis de Maestría en Ciencias | Tesis de Doctorado en Ciencias |
| :--- | :--- | :--- |
| **Enfoque Principal** | Solución ingenieril rigurosa, desarrollo arquitectónico y validación experimental de un problema específico. | Generación de nuevo conocimiento teórico/conceptual, formalización ontológica y múltiples contribuciones originales. |
| **Número de Capítulos** | Habitualmente 6 capítulos monográficos continuos. | De 10 a 11 capítulos agrupados por ejes de contribución científica. |
| **Idioma del Documento** | Generalmente español (con Resumen bilingüe). | Puede redactarse íntegramente en inglés con portadas y resúmenes bilingües. |
| **Estado del Arte** | Revisión centrada en soluciones técnicas directamente relacionadas. | Revisión sistemática profunda (PRISMA/PICO) con desarrollo de taxonomías formales publicables. |
| **Diseño Arquitectónico** | Modelado funcional y arquitectónico (ej. Modelo 4+1 de Kruchten). | Modelado formalizado en Lógica de Descripción, ontologías OWL 2 DL y marcos semánticos multi-capa. |
| **Sección de Publicaciones** | Opcional pero recomendada (mención de artículos de congreso o sometidos). | Obligatoria (capítulo dedicado a listar publicaciones en revistas JCR/Scopus derivadas de la tesis). |
| **Reproducibilidad** | Anexo con fragmentos de código fuente y diagramas adicionales. | Apéndice formal de reproducibilidad con enlaces a repositorios institucionales/públicos (GitHub/GitFront). |
