#CitaLatex 
@INPROCEEDINGS{GuntupalliIntegratingGenerative,
  author={Guntupalli, Jayesh and Watanabe, Kentarou},
  booktitle={2024 IEEE 29th International Conference on Emerging Technologies and Factory Automation (ETFA)}, 
  title={Integrating Generative AI for Enhanced Automation in System Design Processes}, 
  year={2024},
  volume={},
  number={},
  pages={1-4},
  keywords={Generative AI;Pipelines;Prototypes;Streaming media;System analysis and design;Manufacturing automation;Generative AI;System Engineering;System Design;Large Language Model;Retrieval Augmented Generation},
  doi={10.1109/ETFA61755.2024.10710979}}


Lectura basada en [[(Jayesh Guntupalli) Integrating Generative AI for Enhanced Automation in System Design Processes.pdf]]


### Resumen Clave del Paper: Integración de IA Generativa en el Diseño de Sistemas

Este documento de investigación explora cómo la Inteligencia Artificial Generativa (Gen AI), y en particular los Modelos de Lenguaje Grandes (LLMs), pueden mejorar la eficiencia y precisión en la fase de diseño de sistemas complejos, un área tradicionalmente dependiente de la experiencia humana.

#### Problema Principal Abordado

El principal desafío no es solo generar contenido de diseño de sistemas con IA, sino **evaluar y verificar la corrección, precisión y viabilidad de los documentos de diseño (DesDocs) generados por los LLMs**. Las métricas de evaluación de LLMs existentes (como BLEU, ROUGE, BERTScore) son insuficientes para esta tarea, ya que se centran en la calidad lingüística y no pueden valorar adecuadamente principios de ingeniería, innovación, cumplimiento de normativas o viabilidad técnica. Del mismo modo, los métodos de evaluación tradicionales en ingeniería son lentos y costosos.

#### Solución Propuesta: El "SE Assistant"

Para abordar este problema, los autores proponen una herramienta llamada **"SE Assistant"**. Sus componentes clave son:

1. **Generación Mejorada con M-RAG:** La herramienta utiliza **GPT-4 junto con un pipeline de Recuperación Aumentada Multimodal (M-RAG)**. A diferencia de un RAG estándar que solo usa texto, el M-RAG puede recuperar contexto relevante de una base de datos vectorial que contiene texto, **imágenes y tablas** (como diagramas de arquitectura, patrones de diseño, etc.). Esto permite generar documentos de diseño mucho más detallados y contextualmente precisos.
2. **Sistema de Evaluación Híbrido (IA + Humano):** Esta es una de las contribuciones más importantes del paper. Proponen un flujo de evaluación novedoso que combina la inteligencia artificial y la humana:
    - **Criterios de Evaluación Dinámicos:** Un LLM genera dinámicamente los criterios de evaluación (ej. precisión técnica, viabilidad, innovación) específicos para cada DesDoc.
    - **Evaluación por Múltiples LLMs:** Se utiliza una cadena de LLMs potentes (GPT-4, Claude-2, Gemini) para evaluar el documento según los criterios generados. Sus puntuaciones se combinan en un "Evaluation Score" ponderado para mitigar sesgos.
    - **Evaluación por un Ingeniero:** Un ingeniero humano también revisa el documento, aportando su juicio crítico sobre aspectos prácticos (ej. fabricabilidad, integración) que la IA podría pasar por alto.
    - **Puntuación Combinada:** La puntuación de la IA y la del ingeniero se combinan para obtener un resultado final que se utiliza para mejorar iterativamente tanto el documento como los propios criterios de evaluación.

#### Resultados Clave

Los experimentos demostraron que el **SE Assistant con M-RAG superó significativamente a la generación con GPT-4 por sí solo y a un RAG de solo texto**. En las pruebas, el enfoque M-RAG:

- Cumplió con un mayor porcentaje de los requisitos del sistema (64% en entornos de un solo proveedor y 51% en multi-proveedor).
- Obtuvo una puntuación de evaluación combinada más alta (8.5 sobre 10), validando la calidad superior de los documentos generados.

#### **Utilidad Potencial para tu Tesis**

Este paper podría ser muy útil para tu tesis, especialmente si trabajas en áreas como la ingeniería de software, la automatización de procesos de diseño, la IA aplicada o la interacción humano-computadora. Aquí te indico algunas aplicaciones:

1. **Estado del Arte:** Proporciona una excelente referencia sobre los desafíos actuales en la aplicación de LLMs en dominios técnicos y, específicamente, en la evaluación de contenido generado por IA que va más allá de la calidad lingüística.
2. **Metodología de Evaluación:** La **propuesta de evaluación híbrida (múltiples LLMs + experto humano)** es un marco metodológico muy sólido que podrías citar, adaptar o expandir en tu propia investigación para evaluar la salida de sistemas de IA en dominios especializados.
3. **Arquitectura de Referencia:** La arquitectura del SE Assistant, que combina un LLM con un **pipeline M-RAG multimodal**, es un buen modelo a seguir si tu proyecto implica generar documentación o soluciones técnicas basadas en diversas fuentes de datos (texto, diagramas, tablas).
4. **Identificación de "Gaps" para Futura Investigación:** El paper concluye mencionando la necesidad de incorporar mecanismos de multi-agentes y una mejor integración del feedback humano. Esto podría servirte como punto de partida para definir el alcance o la contribución original de tu propia tesis.