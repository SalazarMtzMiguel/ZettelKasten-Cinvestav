#CitaLatex 
@inproceedings{Salama2015StabilityofSelf-Adaptive,
  title = {Stability of Self-Adaptive Software Architectures},
  url = {http://dx.doi.org/10.1109/ASE.2015.93},
  DOI = {10.1109/ase.2015.93},
  booktitle = {2015 30th IEEE/ACM International Conference on Automated Software Engineering (ASE)},
  publisher = {IEEE},
  author = {Salama,  Maria},
  year = {2015},
  month = nov,
  pages = {886–889}
}

Referencia del archivo original: `(Maria Salama) Stability of Self-Adaptive Software Architectures.pdf` [[(Maria Salama) Stability of Self-Adaptive Software Architectures.pdf]]

El documento seleccionado es el artículo de investigación **"Stability of Self-Adaptive Software Architectures"** (Estabilidad de las Arquitecturas de Software Autoadaptativo), escrito por Maria Salama.

Este trabajo de investigación propone la noción de **estabilidad conductual en tiempo de ejecución (_run-time behavioural stability_)** como un criterio primario para analizar y evaluar sistemáticamente la capacidad de una arquitectura de _software_ autoadaptativo (SaS) para mantener la robustez y cumplir con los atributos de calidad requeridos a largo plazo, a pesar de la incertidumbre del entorno.

A continuación, se presenta un resumen claro y completo del artículo, se identifican las ideas clave que sustentan sus conclusiones y se determina el valor del _paper_.

### Resumen Completo del Documento

**1. Contexto y Motivación (La Necesidad de Estabilidad):** Los sistemas de _software_ modernos son cada vez más complejos, heterogéneos y operan en entornos impredecibles, lo que impulsa la necesidad de **software de larga duración (_long-lived software_)** debido al alto costo de construcción de estos sistemas. La arquitectura de _software_ tiene un efecto profundo en la vida operativa y la calidad del servicio del _software_.

La **Estabilidad Arquitectónica** (_Architectural Stability_) se refiere al grado en que la arquitectura puede soportar cambios en los requisitos (funcionales y no funcionales) y el entorno operativo, mientras reduce la probabilidad de deriva y obsolescencia arquitectónica (_architectural drift and phasing-out_).

**2. Evolución del Concepto de Estabilidad:** Históricamente, la estabilidad arquitectónica se definía desde diferentes perspectivas:

- Inicialmente, como un concepto que reflejaba la integridad de la estructura de la arquitectura, evaluada durante la **etapa de diseño (_design-time_)**.
- Con la complejidad moderna y la evolución de la arquitectura, el concepto se amplía para incluir el **dinamismo en tiempo de ejecución (_run-time dynamism_)**.
- En el contexto del _software_ autoadaptativo, la estabilidad definida en tiempo de diseño no puede perdurar mientras el sistema se adapta continuamente a los cambios.

**3. El Nuevo Enfoque: Estabilidad Conductual en Tiempo de Ejecución:** El trabajo argumenta que, mientras que la estabilidad estructural y funcional se abordó explícitamente en el tiempo de diseño, no existe un marco genérico para analizar y evaluar la estabilidad de las arquitecturas de _software_ durante la ejecución.

La investigación propone centrarse en la noción de **estabilidad conductual en tiempo de ejecución (_run-time behavioural stability_)**:

- **Definición:** La capacidad de la arquitectura para **cumplir con los cambiantes requisitos de calidad** durante el tiempo de ejecución (adaptación).
- **Objetivo a Largo Plazo:** Mantener la arquitectura robusta a largo plazo, cumpliendo no solo los requisitos de calidad actuales, sino también los inciertos requisitos futuros, para un _software_ de vida más larga.

**4. El Marco Propuesto para la Estabilidad (Stability Framework):** La solución propuesta es un marco sistemático para caracterizar, razonar y gestionar la estabilidad de las arquitecturas durante el tiempo de ejecución (Figura 1). Este marco busca mejorar el proceso de adaptación en tiempo de ejecución.

Las tareas clave del enfoque para resolver las preguntas de investigación son:

1. **Análisis de la Estabilidad Arquitectónica:** Proponer una **taxonomía** para caracterizar la estabilidad arquitectónica, describiendo sus facetas a través de (i) atributos, (ii) amenazas y (iii) medios de realización.
2. **Modelado de Objetivos en Tiempo de Ejecución (_Run-time goals_):** Modelar el conocimiento de requisitos de calidad y comportamiento (ej., cargas de trabajo, requisitos ambientales, recursos computacionales limitados). Este modelado permite una **relación simbiótica** con la arquitectura para tomar decisiones de adaptación más precisas.
3. **Modelado y Gestión de _Trade-offs_ en Tiempo de Ejecución:** Se propone el uso de la **Teoría de Juegos** para seleccionar la estrategia de adaptación. Se evaluarán las estrategias de adaptación por sus valores de recompensa (_pay-off values_), seleccionando una estrategia que apoye la gestión de _trade-offs_ entre diferentes requisitos de calidad bajo incertidumbre y restricciones ambientales.
4. **Medición y Evaluación de la Estabilidad Arquitectónica:** Esto tiene dos vertientes: (i) medir el efecto de la estrategia de adaptación en los atributos de calidad, y (ii) evaluar la estabilidad utilizando la **verificación probabilística de modelos (_probabilistic model-checking_)**. La verificación se basa en datos históricos agregados en un modelo probabilístico del comportamiento del sistema para evaluar si se satisfacen las propiedades de calidad.

**5. Evaluación y Contribuciones Esperadas:** El trabajo se centra en la adaptación a nivel arquitectónico y se evaluará utilizando el concepto de **auto-conciencia (_self-awareness_)**. El caso de estudio principal para la evaluación es la arquitectura de **auto-escalamiento en la nube (_cloud auto-scaling_)**, que es sensible a la Calidad de Servicio (QoS), presenta elasticidad en la demanda y ejemplifica múltiples _trade-offs_.

Las contribuciones esperadas incluyen una **taxonomía** para caracterizar la estabilidad y un **método sólido con un marco de implementación prototipo** para analizar y evaluar la estabilidad durante el tiempo de ejecución y gestionar los _trade-offs_ consecuentes. La **novedad** reside en la caracterización sistemática de la estabilidad en tiempo de ejecución y el uso de la **Teoría de Juegos** para gestionar _trade-offs_ bajo incertidumbre.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la necesidad de un nuevo marco para evaluar la estabilidad de SaSs y la elección de las herramientas (Teoría de Juegos y _Model-Checking_) se fundamentan en las siguientes ideas clave:

1. **La Estabilidad Arquitectónica de un SaS es una Propiedad Dinámica a Largo Plazo, No Estática:** La conclusión de que la estabilidad debe ser redefinida se fundamenta en el argumento de que la complejidad y la incertidumbre del entorno moderno hacen que la estabilidad estructural de diseño-tiempo sea insuficiente. Para lograr un _software_ de larga duración, la estabilidad debe ser vista como una **cualidad de tiempo de ejecución (_run-time quality_)** que debe ser monitoreada y mantenida continuamente. El objetivo no es solo satisfacer los requisitos actuales, sino dejar la arquitectura **robusta a largo plazo** frente a futuros cambios inciertos.
2. **La Gestión Óptima de _Trade-offs_ bajo Incertidumbre Requiere Enfoques Estratégicos (Teoría de Juegos):** La conclusión sobre la necesidad de la Teoría de Juegos se basa en la complejidad inherente de los SaSs al encontrarse _trade-offs_ al intentar cumplir múltiples objetivos de calidad en tiempo de ejecución. La Teoría de Juegos proporciona una herramienta para tomar una **decisión estratégica** bajo la incertidumbre, evaluando las posibles recompensas de las estrategias de adaptación para gestionar de manera efectiva los _trade-offs_ entre diferentes requisitos de calidad.
3. **La Evaluación de la Estabilidad a Largo Plazo Requiere Métodos de Verificación Formal y Datos Históricos (Probabilistic Model-Checking):** La conclusión de que se requiere un método de evaluación sofisticado se fundamenta en la necesidad de **verificar la confiabilidad a largo plazo**. El uso de la **verificación probabilística de modelos** se propone para utilizar **datos históricos** agregados para evaluar si un conjunto de atributos de calidad se satisfacen durante la operación, permitiendo así una evaluación continua de si el sistema puede mantener un servicio confiable a pesar de los cambios y la incertidumbre.

---

### Valor del Paper

El valor del artículo **"Stability of Self-Adaptive Software Architectures"** es alto y sienta las bases para una nueva línea de investigación en la arquitectura de _software_ autoadaptativo:

- **Definición y Marco Conceptual Novedoso:** El trabajo establece y caracteriza formalmente el concepto de **estabilidad conductual en tiempo de ejecución**. Este concepto llena una brecha de conocimiento al proporcionar un enfoque sistemático para abordar la estabilidad, que anteriormente solo se consideraba implícitamente o en la fase de diseño.
- **Integración de la Teoría de Juegos:** Propone una aplicación novedosa de la **Teoría de Juegos** para la **gestión de _trade-offs_ arquitectónicos** en tiempo de ejecución bajo incertidumbre. Esto promete mejorar la calidad del proceso de adaptación, informando la elección de estrategias que mantengan la arquitectura estable a largo plazo.
- **Marco de Evaluación Riguroso:** El _paper_ esboza un plan de evaluación robusto, que incluye el desarrollo de una **taxonomía**, modelado de objetivos y un enfoque basado en la **verificación probabilística de modelos** para la medición de la estabilidad.

El concepto de estabilidad en este _paper_ es como el **mantenimiento predictivo** de un puente. No basta con saber que el diseño inicial era fuerte (estabilidad en tiempo de diseño). Este trabajo propone un sistema que **monitorea continuamente** la vibración y el uso del puente (estabilidad conductual en tiempo de ejecución), utiliza modelos avanzados (Teoría de Juegos) para decidir si es mejor cerrar un carril (reduciendo el rendimiento) o permitir el paso de camiones más pesados (manteniendo la utilidad) cuando hay un terremoto (incertidumbre), asegurando que la estructura **perdure por décadas** y no solo por un año.
