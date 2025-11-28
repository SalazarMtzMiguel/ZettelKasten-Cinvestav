#CitaLatex 
@INPROCEEDINGS{FedasyukDmytro2022TheUseofOntology,
  author={Fedasyuk, Dmytro and Lutsyk, Illia},
  booktitle={2022 IEEE 17th International Conference on Computer Sciences and Information Technologies (CSIT)}, 
  title={The Use of Ontology in the Process of Designing Adaptive Software Systems}, 
  year={2022},
  volume={},
  number={},
  pages={503-506},
  abstract={The analysis of approaches and methods for creating adaptive and self-adaptive software systems has been carried out. It has been determined that most approaches require reconfiguration to change the functionality of the software. An ontology of the adaptive software system has been formed, which allows to present the main components of the software without reference to the structure of the subject area. The architecture of an adaptive software system was designed, which combines the principles of component-oriented and client-server architecture. Such solution will allow the software to be dynamically adapted depending on the needs of the user. An analysis of the characteristics of the ontological model based on quality assessment metrics has been carried out.},
  keywords={Measurement;Adaptation models;Analytical models;Adaptive systems;Software architecture;Semantics;Computer architecture;ontology;architecture of software systems;adaptive software systems;self-adaptive software systems;ontology evaluation metrics},
  doi={10.1109/CSIT56902.2022.10000528},
  ISSN={2766-3639},
  month={Nov},}

Referencia del archivo original: `(Dmytro Fedasyuk) The Use of Ontology in the Process of Designing Adaptive Software Systems.pdf` [[(Dmytro Fedasyuk) The Use of Ontology in the Process of Designing Adaptive Software Systems.pdf]] 

El documento seleccionado es el artículo de investigación **"The Use of Ontology in the Process of Designing Adaptive Software Systems"** (El Uso de Ontología en el Proceso de Diseño de Sistemas de Software Adaptativos), escrito por Dmytro Fedasyuk e Illia Lutsyk.

### Resumen Completo del Documento

**1. Problema de la Adaptación Estática:** El aumento de la complejidad en el desarrollo de _software_ y el cambio constante en los requisitos de los usuarios exigen la creación de nuevos métodos para diseñar sistemas. Los enfoques basados en la **adaptación y auto-adaptación** son efectivos para manejar esta complejidad. Sin embargo, el análisis de los métodos existentes determinó que la mayoría requieren **reconfiguración del sistema** cuando se añade o cambia la funcionalidad, lo que complica el proceso de adaptación. Es crucial mejorar el proceso de diseño para sistemas adaptativos que permitan la **adaptación dinámica** a los nuevos requisitos del usuario.

**2. Solución Propuesta (Modelo Ontológico):** El objetivo de la investigación es mejorar el proceso de diseño de sistemas de _software_ adaptativos, permitiendo formar características funcionales y la interfaz gráfica **basadas en una ontología** sin necesidad de reconfiguración del sistema. Se propone un **modelo ontológico conceptual** del sistema de _software_ adaptativo.

- **Abstracción:** Este modelo ontológico permite presentar los componentes principales del _software_ **sin hacer referencia a la estructura del área temática** específica.
- **Estructura:** La meta-ontología se compone de conceptos (entidades del área temática), relaciones (conexiones entre conceptos) y propiedades (atributos que expanden la información).
- **Reglas Semánticas:** La estructura formada permite definir **Reglas SWRL** (Semantic Web Rule Language) para determinar la configuración óptima del sistema, tomando en cuenta los requisitos del usuario y los componentes disponibles del _software_.

**3. Arquitectura Propuesta:** Para proporcionar un nivel de adaptabilidad suficiente y permitir la modificación de la funcionalidad, se diseñó una arquitectura que combina los principios de la **arquitectura componente-orientada/plug-in** con la **arquitectura cliente-servidor de tres niveles**.

- **Componente-Orientada (Plug-in):** Esta solución es efectiva porque elimina el **alto acoplamiento** (_high coupling_) entre los módulos principales y adicionales del sistema. Esto permite la modificación dinámica de los elementos de la Interfaz Gráfica (GUI) y los módulos funcionales sin reconfiguración del sistema.
- **Cliente-Servidor (Tres Niveles):** La arquitectura separa la vista del sistema (Nivel de Presentación, ej. aplicación móvil) de la lógica de negocio y los datos. El Nivel de Lógica de Negocio procesa los datos y sincroniza la base de datos con la **base de conocimiento ontológico** para formar configuraciones personalizadas del _software_ y una lista de módulos funcionales necesarios.

**4. Evaluación del Modelo Ontológico:** Se realizó un análisis de la calidad del modelo ontológico desarrollado utilizando **métricas especializadas** (jerárquicas y relacionales), como profundidad, amplitud, grado de entrelazamiento y ciclicidad.

- **Resultados de la Métrica:** Los valores obtenidos (ej., Grado de Entrelazamiento 0, Grado de Ciclicidad 0) indican que el modelo tiene una buena calidad estructural. La **ausencia de ciclicidad y de imitación múltiple** (_multiple imitation_ o entrelazamiento) sugiere un **bajo consumo de recursos** durante el procesamiento de las reglas semánticas definidas.

**5. Conclusiones:** El modelo conceptual formado y la arquitectura diseñada permiten la adaptación del _software_ tomando en cuenta tanto los requisitos del usuario como el tipo de adaptación requerida.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones de que el enfoque basado en ontología es una solución superior para la adaptación dinámica se fundamentan en las siguientes ideas clave:

1. **El Fracaso de la Adaptación Estática sin Reconfiguración:** La premisa fundamental es que la mayoría de los enfoques existentes para los sistemas auto-adaptativos tienen un problema principal: requieren **reconfiguración** para cambiar la funcionalidad. Esta limitación hace que la adaptación sea costosa e ineficiente.
2. **La Ontología Permite la Abstracción del Dominio para la Universalidad:** El uso de la ontología permite presentar los elementos y las relaciones del _software_ **sin hacer referencia a la estructura del área temática**. Esta capacidad de abstracción es lo que habilita la formación de reglas SWRL para determinar la **configuración óptima** y facilita la **modificación dinámica** del sistema, evitando el problema del alto acoplamiento y permitiendo la adaptabilidad para diferentes áreas.
3. **La Arquitectura Híbrida Garantiza la Modificación Dinámica de Módulos y GUI:** La conclusión se apoya en que la **combinación de arquitecturas** (componente-orientada/plug-in y cliente-servidor) proporciona una estructura distribuida que permite la **modificación dinámica** de los módulos funcionales y los elementos GUI, crucial para la auto-adaptación en tiempo de ejecución.
4. **La Viabilidad Metodológica es Verificada por Métricas de Calidad:** La conclusión sobre la calidad del modelo se fundamenta en la **evaluación cuantitativa**. El hecho de que el modelo ontológico diseñado muestre un **Grado de Ciclicidad cero** y un **Grado de Entrelazamiento cero** proporciona una base sólida para concluir que el proceso de evaluación de las reglas semánticas será eficiente y requerirá **bajo consumo de recursos**.

---

### Valor del Paper

El valor del artículo es alto, ya que proporciona una **solución arquitectónica y metodológica** para un desafío crítico en la ingeniería de sistemas auto-adaptativos y evolutivos:

- **Superación de la Limitación de la Reconfiguración:** El valor principal es que propone una solución que permite la adaptación dinámica de la funcionalidad y la interfaz **sin la necesidad de recompilación o reconfiguración estática**.
- **Marco de Diseño Robusto:** Ofrece un **modelo ontológico formalizado** y una **arquitectura híbrida específica** que los desarrolladores pueden replicar. Esto va más allá de un concepto teórico, proporcionando los elementos para la implementación de sistemas adaptativos universales (que no están ligados a un área temática).
- **Énfasis en la Calidad del Modelo:** El _paper_ aporta un valor adicional al incluir una **evaluación rigurosa del modelo ontológico** utilizando métricas especializadas. Esto valida que la estructura propuesta no solo es funcional, sino también **eficiente en términos de recursos** para el razonamiento semántico.

El _paper_ actúa como un plano de construcción para sistemas auto-adaptativos de próxima generación, garantizando que el sistema pueda "aprender" y "cambiar" su propia configuración sin la intervención de un ingeniero humano, basándose en un conocimiento estructurado (la ontología) y una arquitectura modular (plug-in/cliente-servidor).
