#CitaLatex 
@article{Lu2023SoftwareEngineering,
  title = {Software Engineering for Responsible AI},
  volume = {56},
  ISSN = {1558-0814},
  url = {http://dx.doi.org/10.1109/MC.2023.3242055},
  DOI = {10.1109/mc.2023.3242055},
  number = {4},
  journal = {Computer},
  publisher = {Institute of Electrical and Electronics Engineers (IEEE)},
  author = {Lu,  Qinghua and Zhu,  Liming and Whittle,  Jon and Michael,  James Bret},
  year = {2023},
  month = apr,
  pages = {13–16}
}

Referencia del archivo original: `(Qinghua Lu) Software Engineering for Responsible AI.pdf` [[(Qinghua Lu) Software Engineering for Responsible AI.pdf]]

El documento seleccionado es el artículo de introducción de los editores invitados, titulado **"Software Engineering for Responsible AI"** (Ingeniería de Software para la IA Responsable), publicado en _Computer, vol. 56, no. 4_. Los autores son Qinghua Lu, Liming Zhu, Jon Whittle y James Bret Michael.

Este trabajo introduce un número especial dedicado a las metodologías a nivel de sistema que son necesarias para la **operacionalización de la IA Responsable** (Responsible AI, o RAI), abordando los desafíos que las características únicas de los sistemas de IA plantean a los enfoques tradicionales de la Ingeniería de _Software_.

### Resumen Completo del Documento (Introducción de Editores Invitados)

**1. Contexto y la Necesidad de la IA Responsable (RAI):** La Inteligencia Artificial (IA) sigue demostrando un impacto positivo y ha logrado una adopción generalizada en industrias intensivas en datos. El valor del mercado global de IA fue de 93.5 mil millones de dólares en 2021 y se prevé un crecimiento anual del 38.1% hasta 2030. Para materializar plenamente estos beneficios, es crucial que los sistemas de IA sean **desarrollados de manera responsable** y cuenten con la confianza de los ciudadanos y comunidades que dependen de ellos.

La **IA Responsable** se define como el desarrollo y uso de sistemas de IA que benefician a individuos, grupos y a la sociedad en general, mientras **minimizan el riesgo de consecuencias negativas**.

**2. Desafíos de la Operacionalización de la RAI:** Aunque numerosos principios éticos de alto nivel han sido publicados por gobiernos y empresas, estos solos no garantizan la confiabilidad (_trustworthiness_) de los sistemas de IA. El principal desafío es la **operacionalización** de estos principios (es decir, llevarlos de la teoría a la práctica de ingeniería).

- **Insuficiencia del Enfoque Algorítmico:** Se han realizado esfuerzos significativos en soluciones a **nivel de algoritmo**, que se centran principalmente en un subconjunto de principios éticos que son _matemáticamente abordables_ (como la privacidad y la equidad o _fairness_).
- **Problema de la Cobertura del Ciclo de Vida:** Los problemas de la IA Responsable pueden surgir en **cualquier etapa del ciclo de vida de desarrollo** y abarcar múltiples componentes del sistema, incluyendo aquellos que no son de IA.
- **Brecha con la Ingeniería de _Software_:** Existe una **falta de vínculo** entre las preocupaciones de RAI y los procesos tradicionales de desarrollo de _software_.
- **Insuficiencia de Métodos Existentes:** Las características únicas de los sistemas de IA plantean **nuevos desafíos** que no pueden abordarse solo mediante extensiones de los métodos existentes de Ingeniería de _Software_.

**3. Solución Propuesta (Enfoque a Nivel de Sistema):** Se requieren nuevos enfoques de ingeniería de _software_ para desarrollar sistemas de IA de manera responsable. Este número especial se enfoca en **métodos a nivel de sistema** (_system-level methods_) que pueden usarse para operacionalizar la IA Responsable.

**4. Artículos Destacados en el Número Especial:** Los editores invitados presentan un resumen de los siete artículos aceptados, cubriendo diversas áreas de la ingeniería de _software_ para RAI:

- **Ingeniería de Requisitos (RE) (Maalej et al. A1):** Se discuten seis áreas de atención, incluyendo los niveles aceptables de requisitos de calidad, el prototipado centrado en datos y usuarios, y cómo los requisitos sirven de base para la calidad y prueba de la IA.
- **Atributos de Calidad de la IA Confiable (Li et al. A2):** Se resumen 17 atributos de calidad de la IA confiable y se establece un marco de cinco categorías, identificando brechas de investigación.
- **Arquitectura de _Software_ (Bao et al. A3):** Se propone una arquitectura de _software_ de cuatro niveles para la digitalización de dibujos industriales, centrada en el aprendizaje federado, evaluada por criterios como precisión, transferibilidad de estilo, rendimiento y usabilidad.
- **Explicabilidad (XAI) (Li et al. A4):** Se propone un nuevo método de XAI para garantizar la consistencia y reducir el consumo de tiempo, definiendo la consistencia mediante distancias de resumen de explicación.
- **Rendición de Cuentas (_Accountability_) (Raja y Zhou A5):** Se analiza el concepto de rendición de cuentas en la IA, su necesidad, los factores que la afectan y sus tres niveles distintos, señalando desafíos.
- **Equidad (_Fairness_) (Badran et al. A6):** Se evalúan tres algoritmos de preprocesamiento de equidad (Reweighing, LFR, Optimized Preprocessing) y se explora la viabilidad de combinarlos (_ensembling_) para abordar las compensaciones entre equidad y precisión.
- **Sistemas Ciberfísicos-Sociales (CPSS) (Zhang et al. A7):** Se propone un marco de diseño a nivel de sistema impulsado por datos que consta de un módulo de diseño (para optimización continua) y un módulo analítico (para análisis de datos multimodales) para abordar consideraciones éticas y legales en los CPSS.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de los editores invitados, que enfatizan la necesidad de una Ingeniería de _Software_ renovada para la RAI, se fundamentan en las siguientes ideas clave:

1. **Los Principios Éticos de Alto Nivel son Necesarios pero Insuficientes; la RAÍ Requiere Operacionalización a Través de la Ingeniería de _Software_:** La conclusión sobre la insuficiencia de los marcos éticos se basa en que, si bien estos principios proporcionan pautas generales, **no garantizan la confiabilidad** de los sistemas. El desafío es la **complejidad de operacionalizar** estos valores (ej., el valor centrado en el ser humano) a lo largo de todo el ciclo de vida del sistema.
2. **Los Problemas de la RAÍ Exceden el Nivel Algorítmico y Abarcan el Sistema Completo, Incluyendo Componentes No-IA:** La conclusión que justifica el enfoque a nivel de sistema se basa en la limitación de las soluciones centradas en las matemáticas (como la privacidad y la equidad). Los problemas de la RAI pueden surgir en **cualquier fase de desarrollo** y extenderse a través de múltiples **componentes de _software_ que no son de IA**.
3. **Las Características Únicas de la IA Implican que los Enfoques Tradicionales de Ingeniería de _Software_ son Insuficientes y Exigen Nuevas Metodologías:** La conclusión de que se requieren "nuevos enfoques de ingeniería de _software_" se fundamenta en que las **características únicas de la IA** presentan desafíos que no pueden ser abordados únicamente mediante la extensión de métodos existentes. Por lo tanto, el foco debe estar en los métodos a nivel de sistema para una operacionalización efectiva de la RAI.

---

### Valor del Paper (Introducción de Editores Invitados)

Este documento, como introducción de los editores invitados, es de **alto valor estratégico y conceptual** para la Ingeniería de _Software_ y la IA:

- **Definición y Delimitación del Problema:** Define claramente la **brecha crítica** entre los principios éticos de la IA (teoría) y la implementación práctica (ingeniería de _software_), posicionando la **operacionalización** como el desafío central.
- **Marco de Investigación Estructurado:** El artículo establece formalmente la necesidad de centrarse en **métodos a nivel de sistema** y luego clasifica las contribuciones de siete artículos específicos, proporcionando un **mapa estructurado** de las áreas de investigación clave (requisitos, arquitectura, explicabilidad, equidad, _accountability_) dentro del dominio de la Ingeniería de _Software_ para la RAI.
- **Catalizador para el Cambio de Paradigma:** Subraya que las soluciones no pueden ser meras extensiones de los métodos de ingeniería de _software_ existentes, sino que requieren **nuevos enfoques** debido a las características únicas de la IA. Esto sirve como una llamada a la acción para que la comunidad de ingeniería de _software_ se adapte al desarrollo de sistemas autónomos y confiables.

El trabajo es comparable a la **carta de presentación de una nueva disciplina de ingeniería**. Reconoce que construir un puente que incluya una carretera (código tradicional) y un carril de drones (código de IA) no puede hacerse solo con las normas de construcción de carreteras. En su lugar, exige un **nuevo conjunto de reglas de ingeniería** (_métodos a nivel de sistema_) para garantizar que tanto la carretera como el carril de drones, y sus interacciones, operen de manera segura y ética para el público (IA Responsable).
