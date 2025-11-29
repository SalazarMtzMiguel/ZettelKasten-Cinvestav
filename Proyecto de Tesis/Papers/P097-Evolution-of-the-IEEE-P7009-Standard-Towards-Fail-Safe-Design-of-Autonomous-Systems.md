#CitaLatex 
@inproceedings{Farrell2021Evolution,
  title = {Evolution of the IEEE P7009 Standard: Towards Fail-Safe Design of Autonomous Systems},
  url = {http://dx.doi.org/10.1109/ISSREW53611.2021.00109},
  DOI = {10.1109/issrew53611.2021.00109},
  booktitle = {2021 IEEE International Symposium on Software Reliability Engineering Workshops (ISSREW)},
  publisher = {IEEE},
  author = {Farrell,  Marie and Luckcuck,  Matt and Pullum,  Laura and Fisher,  Michael and Hessami,  Ali and Gal,  Danit and Murahwi,  Zvikomborero and Wallace,  Ken},
  year = {2021},
  month = oct,
  pages = {401–406}
}

Referencia del archivo original: `(Marie Farrell) Evolution of the IEEE P7009 Standard Towards Fail-Safe Design of Autonomous Systems.pdf` [[(Marie Farrell) Evolution of the IEEE P7009 Standard Towards Fail-Safe Design of Autonomous Systems.pdf]]

El documento seleccionado es el artículo **"Evolution of the IEEE P7009 Standard Towards Fail-Safe Design of Autonomous Systems"** (Evolución del Estándar IEEE P7009 Hacia el Diseño a Prueba de Fallos de Sistemas Autónomos), escrito por Marie Farrell, Matt Luckcuck, Laura Pullum, Michael Fisher, Ali Hessami, Danit Gal, Zvikomborero Murahwi y Ken Wallace.

Este trabajo describe el desarrollo en curso del estándar **IEEE P7009** sobre el "Diseño a Prueba de Fallos de Sistemas Autónomos y Semiautónomos" (_Fail-Safe Design of Autonomous and Semi-Autonomous Systems_). El objetivo es proporcionar una perspectiva colectiva sobre el desarrollo, esbozando los objetivos del estándar, los enfoques actuales, los desafíos resueltos y pendientes, y destacando su utilidad a través de casos de uso ejemplares.

### Resumen Completo del Documento

**1. Contexto Ético y Necesidad del Estándar:** Los Sistemas Autónomos e Inteligentes (AIS) son complejos, diversos y operan en entornos impredecibles, lo que aumenta la probabilidad de fallos causados por el estrés ambiental, modelos ambientales internos inadecuados o desgaste de componentes. Esta incertidumbre inherente hace que los enfoques tradicionales de garantía de seguridad no sean apropiados para los AIS.

En 2016, el IEEE lanzó la Iniciativa Global sobre la Ética de los Sistemas Autónomos e Inteligentes, que tiene como objetivo priorizar las consideraciones éticas para el beneficio de la humanidad. El estándar IEEE P7009 es una de las 13 normas de la serie P7000 que establecen puntos de referencia para el futuro de las tecnologías éticas y autónomas. La **seguridad a prueba de fallos (_Fail Safety_) es considerada una propiedad ética de los AIS**.

**2. Propósito y Enfoque de IEEE P7009:** El estándar pretende proporcionar una base para que desarrolladores, adquirentes, proveedores, reguladores y otras partes interesadas diseñen AIS a prueba de fallos de manera **robusta, transparente y responsable**.

El propósito de P7009, a diferencia de los estándares de seguridad de sistemas heredados centrados en el diseño y la operación funcionales seguros, es identificar:

- Métodos a prueba de fallos para **prevenir que un AIS cause daño**.
- Medios prácticos para incluir estos mecanismos en un AIS.
- Medios prácticos para **caracterizar el rendimiento** de estos mecanismos en el contexto operativo del AIS.

P7009 es un estándar **fundamental, agnóstico en cuanto al dominio y la aplicación**. Ofrece un marco para que los diseñadores decidan qué es seguro o a prueba de fallos para su contexto específico, ya que son ellos quienes mejor entienden las consecuencias inherentes a su sistema.

**3. Desafíos Resueltos (Consenso del Grupo de Trabajo):** El Grupo de Trabajo (WG) de P7009 alcanzó consenso en temas complejos:

- **Descripciones, no Definiciones:** El WG optó por evitar definiciones prescriptivas, utilizando **descripciones** para caracterizar los términos (similar a ISO 26262). Esto permite a los adoptantes usar la interpretación más apropiada para su sector y reduce el riesgo de que el estándar sea ignorado si no se alinea con la terminología existente.
- **Autonomía:** Se trata la autonomía como un **continuo** (incluyendo sistemas semiautónomos) y no se especifica el _nivel_ de autonomía aplicable. Un AIS se describe como aquel que puede tomar decisiones sin requerir validación humana previa de las consecuencias, actuar sobre esas decisiones e incluso **adaptar y modificar su proceso de toma de decisiones** mediante el aprendizaje. El estándar es agnóstico a la tecnología de IA utilizada (simbólica o subsimbólica).
- **Seguridad a Prueba de Fallos (_Fail-Safety_):** Se reconoce que la **seguridad absoluta es inalcanzable**. La seguridad a prueba de fallos en AIS requiere que el sistema pueda alcanzar un **estado conocido que prevenga o mitigue niveles inaceptables de daño de manera determinista**. También se exige que el AIS sea **transparente** sobre por qué y cuándo ocurren los fallos (relacionado con la IA Explicable o XAI).
- **Proceso y Producto:** El estándar adopta un enfoque impulsado por **requisitos** que abarca tanto el proceso como el producto. Define **Requisitos Clave (_Key Requirements_)** obligatorios y **Propiedades Críticas (_Critical Properties_)** que deben lograrse. La demostración de la conformidad se basa en el grado en que el sistema logra las Propiedades Críticas en relación con los Requisitos Clave, permitiendo a los adoptantes determinar el grado aceptable para su contexto.

**4. Propiedades Críticas y Segregación:** El WG resolvió el debate sobre la mejor manera de expresar las capacidades de _fail-safe_ mediante la adopción de un enfoque de **Segregación por Categorización**. Esto implica el aislamiento y la separación de preocupaciones entre los elementos a prueba de fallos y la funcionalidad general. Esto es análogo al concepto de **Base de Computación de Confianza (_Trusted Computing Base_)**.

Las **Propiedades Críticas** resultantes son: **Responsabilidad (_Accountability_), Fiabilidad (_Dependability_), Interpretación (_Interpretability_) y Previsibilidad (_Predictability_)**.

**5. Desafíos Pendientes (Verificación y Diseño):** Los desafíos en curso se centran en cómo verificar y diseñar la seguridad a prueba de fallos:

- **Verificación:** Es difícil debido a la **erosión del determinismo** y a la aparición de **comportamientos emergentes** en los AIS. El enfoque de P7009 es verificar el **componente a prueba de fallos** del sistema, no la Verificación y Validación (V&V) de sistemas ciberfísicos en general. La verificación debe ayudar a reducir los fallos antes de las pruebas de campo, que son caras y requieren mucho tiempo.
- **Diseño a Prueba de Fallos (_Fail-Safe by Design_):** Para evitar que el diseño _fail-safe_ sea considerado inviable en sistemas con toma de decisiones autónoma (ADM), se promueven las **arquitecturas heterogéneas y modulares**. La modularidad permite **separar los módulos difíciles de analizar** (ej., _Machine Learning_) de otros que utilizan IA Simbólica, para los cuales se pueden proporcionar garantías más sólidas.
- **Hacia la Autoseguridad Autónoma:** Se reconoce que la simple orden de **STOP es a menudo inviable** en situaciones peligrosas. La meta es desarrollar componentes _fail-safe_ más complejos que lleven al sistema a un estado **seguro o al menos más seguro**. Esto implica que el **modo _fail-safe_ mismo emplee funcionalidad autónoma** (ej., un coche autónomo que navega a un área segura para detenerse). El aumento de la autonomía genera problemas para las técnicas de análisis de fallos y de verificación, y requiere la exposición del 'intento' del sistema para retener la confianza.

**6. Casos de Uso Ejemplares:** Dos casos de uso demuestran la aplicabilidad del estándar:

- **Dominio Altamente Regulado (Nuclear):** Un brazo robótico autónomo para cortar residuos requiere que el regulador nuclear ensamble un _safety case_. P7009 puede proporcionar la guía sobre cómo incorporar estos sistemas críticos de manera segura.
- **Dominio Poco Regulado (Satélites Autónomos):** En el sector espacial comercial, donde las directrices pueden ser escasas, P7009 proporciona una guía para que las empresas implementen la funcionalidad _fail-safe_. La evidencia de cumplimiento recogida a través de P7009 servirá de base si se establece una regulación más detallada en el futuro.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones principales del _paper_ —sobre la necesidad de un nuevo estándar y la estructura del mismo— se fundamentan en las siguientes ideas clave:

1. **La Incertidumbre Intrínseca de los AIS Invalida los Estándares de Seguridad Tradicionales:** La conclusión de que se necesita un nuevo estándar se basa en la observación de que la **complejidad, diversidad e imprevisibilidad del entorno** de los AIS causan fallos y **comportamientos inciertos**, lo que hace que los estándares de seguridad tradicionales (basados en procesos normativos rigurosos) sean inadecuados. Esta necesidad motivó el desarrollo de P7009 como un **estándar fundamental de seguridad a prueba de fallos**.
2. **La Seguridad en AIS es una Propiedad Ética que Requiere Transparencia y Adaptación Determinista al Fallo:** La conclusión sobre la naturaleza del _fail-safe_ se fundamenta en el marco ético de la iniciativa IEEE. Esto se traduce en la exigencia de que, aunque el fallo es inevitable, el AIS debe ser capaz de **alcanzar un estado conocido y seguro de manera determinista** y, además, debe ser **transparente** con el usuario sobre cuándo y por qué ocurre el fallo.
3. **El Diseño _Fail-Safe_ Viable Depende de la Separación Arquitectónica de Componentes (Trusted Base):** La conclusión sobre el enfoque del diseño se fundamenta en el desafío de verificar los componentes de ML/IA opacos. La solución es el enfoque de **Segregación por Categorización**, que garantiza la seguridad al **aislar la funcionalidad a prueba de fallos** en una base de confianza que es inherentemente más pequeña y, por lo tanto, más fácil de analizar y verificar.
4. **La Siguiente Etapa de la Autoprotección Requiere Funcionalidad Autónoma en el Modo de Falla:** La conclusión sobre los desafíos futuros se fundamenta en la inviabilidad de la orden "STOP" en escenarios de alto riesgo. Se enfatiza que el **mecanismo _fail-safe_ debe ser autónomo** (navegar a un estado "más seguro" antes de detenerse), lo que requiere nuevos mecanismos de verificación y la exposición de la "intención" del sistema para mantener la confianza humana.

---

### Valor del Paper

El artículo **"Evolution of the IEEE P7009 Standard Towards Fail-Safe Design of Autonomous Systems"** es de gran valor para la comunidad de Ingeniería y Arquitectura de Sistemas Autónomos:

- **Punto de Referencia Único para la Seguridad Ética:** Ofrece la única **perspectiva colectiva y documentada** del trabajo en curso en el estándar IEEE P7009, un pilar de la iniciativa ética global del IEEE. Su valor reside en que establece el punto de referencia para un área de la tecnología que carece de regulación.
- **Sistematización de Conceptos Desafiantes:** El _paper_ sistematiza y clarifica la postura de consenso del WG sobre conceptos tradicionalmente nebulosos o polémicos, como la **autonomía** (vista como un continuo), la **seguridad a prueba de fallos** (ineludiblemente parcial) y el enfoque de la norma (basado en **descripciones** y un balance entre proceso/producto).
- **Guía para el Diseño y la Regulación:** El trabajo proporciona un marco arquitectónico esencial (Segregación por Categorización) y define las **Propiedades Críticas (Accountability, Dependability, Interpretability y Predictability)** que los diseñadores deben incorporar. Además, los casos de uso demuestran su valor tanto para **dominios altamente regulados** (donde ofrece una guía faltante) como para **dominios nuevos y no regulados** (donde ofrece la base para la autorregulación y la futura certificación).

Este _paper_ es como un **informe preliminar de la ley de ciberseguridad del futuro**. No solo establece que los Sistemas Autónomos inevitablemente fallarán, sino que, en lugar de castigar el fallo, la nueva "ley" (el estándar P7009) se centra en exigir que la arquitectura del sistema esté construida de tal manera que el **fallo sea transparente, predecible y que conduzca a un estado de seguridad determinista**. El estándar actúa como un **mandato ético** para que los ingenieros se concentren en aislar y garantizar la fiabilidad de la pequeña base de código que es vital para la seguridad.
