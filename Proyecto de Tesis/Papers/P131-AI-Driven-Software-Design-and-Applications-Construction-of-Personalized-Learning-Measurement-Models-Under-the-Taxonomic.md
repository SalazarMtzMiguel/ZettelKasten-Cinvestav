#CitaLatex 
@inproceedings{Wang2025AI-Driven,
  title = {AI-Driven Software Design and Applications: Construction of Personalized Learning Measurement Models Under the Taxonomic Development Perspective},
  url = {http://dx.doi.org/10.1109/IAEAC65194.2025.11166530},
  DOI = {10.1109/iaeac65194.2025.11166530},
  booktitle = {2025 IEEE 8th Advanced Information Technology,  Electronic and Automation Control Conference (IAEAC)},
  publisher = {IEEE},
  author = {Wang,  Shang and Tang,  Xin and Wang,  Song and Liu,  Huagang},
  year = {2025},
  month = aug,
  pages = {1085–1091}
}

Referencia del archivo original: `(Shang) AI-Driven Software Design and Applications Construction of Personalized Learning Measurement Models Under the Taxonomic.pdf` [[(Shang) AI-Driven Software Design and Applications Construction of Personalized Learning Measurement Models Under the Taxonomic.pdf]]

El documento seleccionado es el artículo **"AI-Driven Software Design and Applications: Construction of Personalized Learning Measurement Models Under the Taxonomic Development Perspective"** (Diseño de _Software_ Impulsado por IA y Aplicaciones: Construcción de Modelos de Medición de Aprendizaje Personalizado Bajo la Perspectiva de Desarrollo Taxonómico), escrito por Shang Wang, Xin Tang, Song Wang y Huagang Liu.

Este estudio describe el diseño y desarrollo de un **_software_ educativo impulsado por Inteligencia Artificial (IA)** para abordar la necesidad de recursos de aprendizaje diferenciados, especialmente para estudiantes de formación profesional.

### Resumen Completo del Documento

**1. Problema Central (Rigidez de la Educación Tradicional):** En entornos educativos tradicionales, el enfoque uniforme y estático no logra adaptarse a las necesidades de desarrollo individuales y a la considerable variación en el conocimiento previo y la capacidad de aprendizaje de los estudiantes, especialmente en la formación profesional. Esta rigidez limita las oportunidades tanto para los estudiantes avanzados como para aquellos que tienen dificultades. La **Perspectiva de Desarrollo Taxonómico (TDP)** se propone como solución, enfatizando las rutas de aprendizaje personalizadas en materias complejas como la mecánica de materiales, que se utiliza como caso de estudio.

**2. Marco de Investigación y Desarrollo de _Software_:** El estudio se estructuró en seis etapas clave para diseñar y desarrollar un _software_ educativo para PC utilizando la plataforma **PyCharm**.

- **Fundación Teórica (Modelos de Medición):** Se diseñó una **función compuesta** para evaluar las bases académicas y las capacidades de aprendizaje de los estudiantes. Esta función integra tres métricas estratificadas:
    
    1. **Fundación Académica ($Y_1$):** Combina la evaluación del profesor ($T_1$) y la puntuación equivalente ($S_1$) de los exámenes de cursos históricos.
    2. **Compromiso de Aprendizaje ($Y_2$):** Combina la evaluación del profesor ($T_2$) y las métricas de compromiso ($S_2$) extraídas de una aplicación de acompañamiento de aprendizaje.
    3. **Capacidad de Aprendizaje ($Y_3$):** Se determina por el rendimiento en preguntas desafiantes de exámenes previos.
    
    - _Datos Basales del Estudiante (SBD):_ Estos datos, recopilados de cursos anteriores (n=3), se utilizan como información de **anticipación (_feedforward_)** en el _software_ para la personalización.
- **Integración de IA (Modelo Qwen):** El modelo **Qwen AI** fue preentrenado en la plataforma **Alibaba Cloud** utilizando cuatro conjuntos de datos específicos del dominio (registros académicos estructurados, métricas de comportamiento de aprendizaje y contenido de mecánica de materiales). El preentrenamiento aseguró que el modelo pudiera generar **explicaciones estratificadas** —simplificadas para principiantes y rigurosas para avanzados— adaptando la complejidad de la salida en función de los SBD.
- **Implementación Técnica:** Se desarrolló el _software_ para PC con PyCharm, integrando la **API** para permitir la comunicación fluida y en tiempo real entre el sistema local y el modelo Qwen remoto. La **optimización del protocolo de comunicación API** fue crucial para guiar al modelo de IA a incorporar los SBD de anticipación, generando así respuestas personalizadas para diferentes perfiles de usuario.
- **Interfaz de _Software_:** La interfaz incluye un panel de **navegación de puntos de conocimiento** y un **sistema de preguntas y respuestas (Q&A)** basado en Qwen. El sistema asigna a cada estudiante una identificación única vinculada a sus valores SBD, que se pasan internamente al modelo Qwen antes de generar respuestas, asegurando una retroalimentación personalizada.

**3. Evaluación Empírica (Experimento Controlado):** Se desplegó el _software_ en un entorno de aula real, realizando un experimento controlado durante dos semanas (4 horas de clase).

- **Grupos:** Grupo de control (n=20) con instrucción tradicional y Grupo experimental (n=17) que utilizó el _software_ como herramienta suplementaria.
- **Resultados:** El grupo experimental logró una mejora en la puntuación media de **0.0452** (0.8847 vs. 0.8395).
- **Estadísticas:** La **varianza** del grupo experimental se optimizó y se redujo (de 0.0039 a 0.0025), lo que sugiere un rendimiento más consistente y una mayor estabilidad del aprendizaje.
- **Significancia:** La significación estadística de la diferencia de medias se confirmó mediante la prueba t (**t=-2.4622, p=0.0189**), rechazando la hipótesis nula.
- **Comentarios de los Estudiantes:** Los participantes elogiaron la rapidez en la resolución de problemas, el apoyo personalizado (identificación de áreas débiles) y el aumento de la motivación, lo que confirma el papel de la herramienta en el apoyo individualizado basado en datos.

**4. Conclusiones:** El _software_ demostró capacidades de tutoría altamente personalizadas, con respuestas precisas y rápidas. El estudio concluye que el marco proporciona una base sólida para futuras implementaciones de IA en la educación vocacional, promoviendo la participación y el dominio entre diversas poblaciones de estudiantes.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la eficacia del _software_ impulsado por IA y la mejora en los resultados de aprendizaje se fundamentan en las siguientes ideas clave:

1. **La Personalización Efectiva del Aprendizaje Requiere una Evaluación Integral y Estratificada del Perfil del Estudiante (SBD):** La conclusión de que el sistema es eficaz para el aprendizaje diferenciado se fundamenta en el **Diseño de los Datos Basales del Estudiante (SBD)**. El SBD no solo considera el rendimiento histórico de los exámenes ($Y_1$), sino también métricas objetivas de **compromiso ($Y_2$)** y la **capacidad de aprendizaje ($Y_3$)** (rendimiento en preguntas difíciles). Este enfoque garantiza que el _software_ pueda categorizar a los estudiantes en niveles taxonómicos (fundacional, intermedio, avanzado) y adaptar el contenido a su nivel de preparación individual.
2. **La Integración de IA Generativa debe Ser Contextualizada y Específica del Dominio (Preentrenamiento y _Feedforward_ de SBD):** La conclusión de la capacidad de tutoría personalizada se fundamenta en el proceso de integración de IA. El modelo Qwen fue **preentrenado** con cuatro conjuntos de datos de mecánica de materiales para mejorar su precisión en tareas específicas del dominio. Crucialmente, la **API se optimizó para incluir los SBD** del usuario como información de **anticipación (_feedforward_)** en cada solicitud, lo que permite al modelo generar respuestas dinámicamente adaptadas a la experiencia previa y el compromiso individual del estudiante.
3. **La Instrucción Personalizada Impulsada por IA Mejora la Consistencia (Reduce la Varianza) y la Media del Rendimiento Académico:** La conclusión sobre la superioridad del enfoque se basa en los resultados estadísticos del experimento controlado. La mejora significativa en la puntuación media (0.0452) se combina con una **reducción de la varianza** (de 0.0039 a 0.0025). Esto demuestra que la herramienta tiene la capacidad de **minimizar las disparidades** en los resultados académicos, abordando eficazmente la heterogeneidad de los estudiantes, un objetivo central de la TDP.

---

### Valor del Paper

El artículo **"AI-Driven Software Design and Applications: Construction of Personalized Learning Measurement Models Under the Taxonomic Development Perspective"** tiene un valor considerable en los campos de la Ingeniería de _Software_ Aplicada y la Tecnología Educativa por las siguientes razones:

- **Marco de Implementación Práctico y Verificado:** El estudio no es solo un concepto teórico; proporciona un **marco de _software_ completamente desarrollado y probado** que integra una plataforma de desarrollo común (PyCharm) con una solución de IA de nube (Qwen/Alibaba Cloud). Este marco de integración API/cloud-local ofrece un modelo replicable para otros sistemas de tutoría inteligente.
- **Enfoque Riguroso en la Medición de la Personalización:** La principal contribución es el **modelo de medición SBD**. Este modelo va más allá de las puntuaciones de examen simples al incorporar métricas de comportamiento (compromiso) y capacidad (rendimiento en preguntas difíciles), lo que resulta en un perfil de estudiante más rico y preciso que es fundamental para una personalización efectiva.
- **Evidencia Empírica Sólida y Cuantificada:** La realización de un **experimento controlado con análisis estadístico (prueba t)** y la demostración de la reducción de la varianza en los resultados del aprendizaje proporcionan una **evidencia empírica sólida** del impacto positivo de la IA en la educación vocacional. El resultado (mejora de la media de 0.0452 con $p<0.05$) valida el potencial transformador de la IA para estandarizar y mejorar los resultados de aprendizaje en poblaciones diversas.

Este sistema es como un **tutor académico experto que tiene un archivo secreto y detallado de cada estudiante antes de que hagan una pregunta**. En lugar de dar una respuesta genérica, el _software_ utiliza la información de anticipación (SBD) para que el modelo de IA genere una explicación que no solo sea precisa, sino que esté **calibrada a la dificultad justa** y a las áreas de debilidad conocidas del estudiante, maximizando así el impacto de cada interacción de aprendizaje.
