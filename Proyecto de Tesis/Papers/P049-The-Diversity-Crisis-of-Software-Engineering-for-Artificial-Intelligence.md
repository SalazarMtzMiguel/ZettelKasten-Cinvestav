#CitaLatex 
@ARTICLE{AdamsBramTheDiversityCrisis,
  author={Adams, Bram and Khomh, Foutse},
  journal={IEEE Software}, 
  title={The Diversity Crisis of Software Engineering for Artificial Intelligence}, 
  year={2020},
  volume={37},
  number={5},
  pages={104-108},
  abstract={Artificial Intelligence (AI) is experiencing a "diversity crisis."1 Several reports1-3 have shown how the breakthrough of modern AI has not yet been able to improve on existing diversity challenges regarding gender, race, geography, and other factors, neither for the end users of those products nor the companies and organizations building them. Plenty of examples have surfaced in which biased data engineering practices or existing data sets led to incorrect, painful, or sometimes even harmful consequences for unassuming end users.4 The problem is that ruling out such biases is not straightforward due to the sheer number of different bias types.5 To have a chance to eliminate as many biases as possible, most of the experts agree that the teams and organizations building AI products should be made more diverse.1-3 This harkens back to Linus' law6 for open source development ("given enough eyeballs, all bugs are shallow") but applied to the development process of AI products.},
  keywords={Companies;Software engineering;Machine learning;Artificial intelligence;Google;Industries},
  doi={10.1109/MS.2020.2975075},
  ISSN={1937-4194},
  month={Sep.},}

Referencia del archivo original: `(Bram Adams) The Diversity Crisis of Software Engineering for Artificial Intelligence.pdf` [[(Bram Adams) The Diversity Crisis of Software Engineering for Artificial Intelligence.pdf]]
# ==IRRELEVANTE==
El documento seleccionado es el artículo **"The Diversity Crisis of Software Engineering for Artificial Intelligence"** (La Crisis de Diversidad de la Ingeniería de Software para la Inteligencia Artificial), escrito por Bram Adams y Foutse Khomh.

A continuación, se presenta un resumen claro y completo del _paper_, la identificación de las ideas clave que sustentan sus conclusiones y la determinación de su valor.

### Resumen Completo del Documento

El artículo argumenta que la Inteligencia Artificial (AI) está experimentando una "crisis de diversidad" que se extiende más allá de los usuarios finales y las organizaciones, impactando negativamente la evolución y la calidad del _software_ de AI.

**1. La Crisis de Diversidad Existente:** Los autores señalan que, a pesar de los avances de la AI moderna, persisten serios desafíos de diversidad en cuanto a género, raza y geografía. La falta de diversidad en los equipos de desarrollo es un problema reconocido, ya que puede llevar a **prácticas sesgadas de ingeniería de datos** o al uso de conjuntos de datos existentes que causan **consecuencias incorrectas, dolorosas o incluso dañinas** para los usuarios finales. La mayoría de los expertos concuerdan en que para eliminar la mayor cantidad posible de sesgos, los equipos que construyen productos de AI deben ser más diversos.

Los datos demuestran la falta de diversidad:

- Los expertos en AI residen principalmente en América del Norte, el Reino Unido, Francia y Alemania.
- Menos de una de cada cinco autoras en las principales conferencias de AI son mujeres, un porcentaje que coincide con la proporción de profesorado de AI femenino estimado.
- Las empresas y organizaciones de AI no son diversas, y la discriminación persiste en la contratación y promoción.

**2. Investigación Empírica (Metodología):** El _paper_ se basa en un estudio empírico realizado a partir de su publicación en MSR 2018. Se analizaron 598 colaboradores centrales de los 20 _frameworks_ de _machine learning_ (ML) de código abierto más populares (10 impulsados por empresas y 10 impulsados por la comunidad), seleccionados de un conjunto inicial de 104 _frameworks_.

**3. Dos Fuentes Adicionales de Sesgo (Resultados):** El estudio identificó dos fuentes adicionales de sesgo en los proyectos de _software_ de AI, que podrían ampliar la brecha entre las principales empresas tecnológicas y el resto:

- **Dominio de las Empresas (Company Dominance):**
    
    - Aunque el desarrollo de _frameworks_ de ML de código abierto fue inicialmente impulsado por la comunidad, **desde 2013 el número de _frameworks_ respaldados por empresas ha superado** a los impulsados por la comunidad.
    - La cantidad de **usuarios (adopters)** de _frameworks_ de ML respaldados por empresas supera ampliamente a los de los _frameworks_ impulsados por la comunidad.
    - Un análisis exhaustivo reveló que todos los _frameworks_ impulsados por la comunidad que surgieron desde 2014 **se construyen sobre soluciones impulsadas por empresas**.
    - Los _frameworks_ de ML impulsados por empresas a menudo están **optimizados y desplegados para ofertas de nube comerciales**, lo que genera el riesgo de atrapar a los usuarios y desarrolladores en plataformas comerciales, en lugar de permanecer accesibles desde diversos tipos de infraestructuras.
- **Especialización de Habilidades (Skill Specialization):**
    
    - El desarrollo de ML está impulsado actualmente por **personal altamente especializado**.
    - Los profesionales involucrados típicamente poseen un **Ph.D.** y tienen experiencia en laboratorios de I+D o en equipos de productos de innovación.
    - Este **alto umbral de entrada** (_high entry bar_) puede tener un efecto adverso en la innovación.
    - En los equipos impulsados por empresas, investigadores e ingenieros profesionales contribuyen por igual, pero la contribución de los investigadores académicos se limita a menudo al diseño y entrenamiento de modelos, **contribuyendo rara vez al desarrollo o la producción de código**.

**4. Consecuencias y Soluciones Propuestas:** Esta falta de diversidad a nivel de _software_ puede tener varias consecuencias:

- Puede llevar a una **escasez de personal cualificado**.
- Aumenta la necesidad de comunicación debido a los roles especializados, pero la dominancia de las empresas hace que el proceso de desarrollo sea **menos transparente**. Un ejemplo es el bot "tensorflow-gardener" que oculta los nombres de los empleados de Google al hacer _recommits_ de cambios internos en el repositorio público. La transparencia es esencial para tecnologías que controlan cada vez más nuestras vidas.
- Un contribuidor menos diverso y más sesgado podría correlacionarse con una **menor calidad de código** o mayores costos para alcanzar cierta calidad (haciendo referencia a la Ley de Linus).

Las soluciones propuestas requieren una visión a largo plazo y se centran en:

1. Abordar la **falta de formación en AI** de los potenciales contribuyentes mediante la inclusión de cursos de AI en los currículos universitarios y la organización de talleres.
2. Liderar un esfuerzo de **estandarización** por parte de un consorcio neutral, ya que la proliferación de _frameworks_ respaldados por diferentes compañías (cada una con su propia terminología y agenda) es un problema.
3. Abrazar procesos de desarrollo más **abiertos** (como MLOps) para aumentar la transparencia, la colaboración entre _stakeholders_ y la confianza en las tecnologías de AI.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones del _paper_ —que la crisis de diversidad de la AI es profunda y se manifiesta en la estructura y el personal de los proyectos de _software_— se basan en las siguientes ideas clave extraídas de la evidencia empírica:

1. **La Concentración de Poder en la Ingeniería de Software de ML:** La conclusión de la **dominancia empresarial** se fundamenta en la evidencia cuantitativa de que, desde 2013, las empresas no solo han superado a la comunidad en la creación de _frameworks_, sino que también **todos los _frameworks_ comunitarios recientes dependen de soluciones empresariales**. Esto centraliza el control tecnológico y de infraestructura (optimización para la nube comercial).
2. **La Barrera de Entrada Académica (Ph.D. / Experiencia R&D):** La conclusión sobre la falta de diversidad de habilidades y la posible amenaza a la innovación se basa en la observación de que la inmensa mayoría de los desarrolladores centrales son **profesionales altamente cualificados con doctorados y experiencia en I+D**. Este alto umbral de entrada restringe el grupo de talentos y potencialmente limita la diversidad de casos de uso y creatividad.
3. **La Crisis de la Transparencia como Riesgo Social:** El argumento de que estos desafíos son motivo de preocupación se fundamenta en la observación de que el dominio de las empresas puede conducir a **procesos de desarrollo opacos** (como el bot 'tensorflow-gardener' que oculta información sobre los contribuyentes). Dado que estas tecnologías controlan cada vez más aspectos de nuestras vidas, la **falta de transparencia** representa un riesgo social y ético significativo.

---

### Valor del Paper

El valor del _paper_ "The Diversity Crisis of Software Engineering for Artificial Intelligence" es considerable, ya que **extiende el debate sobre la diversidad de la AI** desde las discusiones sobre sesgos en los datos hacia las estructuras de desarrollo de _software_ subyacentes.

- **Identificación de Nuevas Fuentes de Sesgo:** El principal valor reside en la identificación empírica de dos fuentes de sesgo relacionadas con la **ingeniería de _software_** (dominio de la empresa y alta especialización de habilidades) que no suelen estar cubiertas en los informes sobre sesgos algorítmicos.
- **Fundamentación Empírica Cuantitativa:** El estudio proporciona un análisis sistemático y una **base de datos empírica** (598 colaboradores de 20 _frameworks_ populares) para respaldar sus afirmaciones, utilizando métricas como el número de _stars_ de GitHub y el análisis de perfiles de LinkedIn/Google Scholar.
- **Relevancia para la Estandarización y la Gobernanza:** El artículo ofrece una dirección crucial para la industria y la academia al abogar por la **estandarización** de los _frameworks_ de ML por parte de un consorcio neutral. Esto es vital para romper el "bloqueo" en las plataformas comerciales y garantizar que las tecnologías de AI sigan siendo accesibles y justas.

El _paper_ actúa como una advertencia: si la diversidad en el desarrollo de _software_ de AI no mejora (en términos de género, raza, geografía o experiencia), el problema de los sesgos algorítmicos persistirá, pero se exacerbará por la **opacidad** y la **alta barrera de entrada** de las herramientas subyacentes, lo que socavará tanto la calidad del código como la confianza social en la AI.
