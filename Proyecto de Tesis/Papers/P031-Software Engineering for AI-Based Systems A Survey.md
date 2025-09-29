#CompletarCita 
Lectura basada en [[(Silverio Martinez) Software Engineering for AI-Based Systems A Survey.pdf]]



### Resumen y Análisis Clave del Paper: "Software Engineering for AI-Based Systems: A Survey"

Este documento es un **estudio de mapeo sistemático (Systematic Mapping Study - SMS)**, lo que significa que su objetivo es proporcionar una visión panorámica, amplia y estructurada de toda el área de investigación de la Ingeniería de Software para Sistemas Basados en IA (SE4AI). Es una revisión exhaustiva que analiza **248 estudios publicados entre 2010 y 2020** para mapear el estado del arte, identificar tendencias, enfoques y desafíos.

#### Metodología

La fortaleza principal de este paper es su **metodología rigurosa y a gran escala**. Los autores utilizaron una estrategia de búsqueda híbrida, combinando una búsqueda automática en la base de datos Scopus con un método de "bola de nieve" (snowballing) para asegurar una cobertura amplia de la literatura. Cada artículo fue revisado por al menos dos investigadores para garantizar la fiabilidad del proceso de selección. Para clasificar los enfoques y desafíos, utilizaron como base las áreas de conocimiento de la guía **SWEBOK (Software Engineering Body of Knowledge)**, lo que proporciona un marco estandarizado y reconocido.

#### Ideas Clave y Hallazgos Principales

1. **SE4AI es un Campo de Investigación Emergente y en Rápida Expansión:** El análisis bibliométrico muestra que más de dos tercios de las publicaciones en esta área son de 2018 en adelante, con un crecimiento casi exponencial cada año. Esto indica que es un campo muy activo y en plena formación. También destaca la alta participación de la industria (40.7% de los papers), lo que subraya la relevancia práctica del tema.
    
2. **Foco Desproporcionado en Calidad y Testing:** Al clasificar los 248 estudios en las áreas de SWEBOK, el paper revela una concentración masiva en dos áreas:
    
    - **Software Testing:** Con **115 estudios**, es, con diferencia, el área más investigada. El foco principal está en la generación de casos de prueba y en el uso de técnicas como el _metamorphic testing_.
    - **Software Quality:** Con **59 estudios**, es la segunda área más popular. Las propiedades de calidad más estudiadas son la **confiabilidad (dependability) y la seguridad (safety)**, especialmente en el contexto de sistemas ciberfísicos como los vehículos autónomos. Esto sugiere que la comunidad investigadora está muy centrada en cómo verificar y validar el comportamiento de los sistemas de IA.
3. **El Gran Olvidado: el Mantenimiento de Software:** En marcado contraste con el punto anterior, el área de **mantenimiento de software está severamente desatendida, con solo 6 estudios** identificados. Esto representa una importante brecha de investigación, ya que los sistemas de IA, una vez desplegados, requieren un mantenimiento y una evolución continuos que son diferentes a los de los sistemas tradicionales.
    
4. **El Desafío Central y Recurrente: los Datos:** A lo largo de todas las áreas de la ingeniería de software, los **problemas relacionados con los datos son el tipo de desafío más recurrente**. Esto abarca todo el ciclo de vida: desde el uso de datos como fuente de requisitos, la dependencia de los algoritmos en la calidad de los datos de entrenamiento, hasta las dificultades para obtener datos suficientes para las pruebas y la necesidad de re-entrenar modelos cuando los datos cambian.
    
5. **Caos Terminológico y Falta de Estandarización:** El estudio encontró una gran variedad de términos para referirse a los sistemas de IA, lo que dificulta la comparación y generalización de los resultados. Los autores proponen una taxonomía y definiciones más claras (p. ej., diferenciar entre "componente de IA" y "sistema basado en IA") para aportar claridad al campo.
    
6. **Insuficiencia de los Marcos de Ingeniería de Software Tradicionales:** Una conclusión implícita es que los marcos existentes como SWEBOK no son totalmente adecuados para clasificar los desafíos de los sistemas de IA. Los autores tuvieron que proponer nuevas categorías (como "Software Runtime Behaviour" o "Data-related issues") para poder clasificar adecuadamente todos los desafíos encontrados, lo que evidencia la naturaleza única de la ingeniería para sistemas de IA.
    

#### Utilidad para tu Tesis

Este paper es extremadamente útil y podría ser una pieza central para tu tesis por varias razones:

- **Estado del Arte Exhaustivo:** Te proporciona una visión completa y cuantificada del campo. Es la referencia perfecta para el capítulo de revisión de la literatura de tu tesis, ya que resume el trabajo de cientos de otros papers.
- **Identificación Clara de Brechas de Investigación:** El paper no solo describe lo que se ha hecho, sino que, más importante aún, **señala explícitamente lo que falta por hacer**. Áreas como el **mantenimiento de software**, requisitos para la explicabilidad, o la ingeniería de software para dominios menos explorados que el automotriz son brechas claras donde tu tesis podría hacer una contribución original.
- **Justificación de tu Investigación:** Puedes usar sus hallazgos para justificar la relevancia de tu propio trabajo. Por ejemplo, si tu tesis es sobre el mantenimiento de modelos de ML, puedes citar este paper para demostrar que es un área desatendida y de gran importancia.
- **Marco Conceptual y Metodológico:** Ofrece un marco sólido (basado en SWEBOK) para clasificar y entender los diferentes aspectos de la ingeniería de software para IA. La metodología del propio paper es un ejemplo de cómo realizar un estudio de mapeo sistemático de alta calidad.