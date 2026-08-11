|# Manual de Redacción Crítica: Tesis de Maestría en Ciencias

**Objetivo del documento:** Destruir los malos hábitos de escritura técnica y establecer el rigor necesario para una tesis de ingeniería de software enfocada en sistemas multiagente y auto-diseño.

---

## 1. Filosofía de la Tesis (Lo que los evaluadores buscan)
Tu comité, incluyendo a investigadores exigentes como el Dr. Mario Siller y la Dra. Giovana Perez-Carrillo, no va a leer tu tesis para aprender qué es un agente o qué es un algoritmo. La van a leer para **juzgar si tu propuesta resuelve el problema que planteaste**. 

* **Regla de Oro:** Cada párrafo que no defienda tu hipótesis, que no explique tu metodología, o que no analice tus resultados, es "grasa". Córtala.
* **Cero Afirmaciones sin Respaldo:** Prohibido escribir cosas como "La inteligencia artificial ha avanzado mucho". Escribe: "La integración de Modelos de Lenguaje Grande (LLMs) en flujos de trabajo multiagente ha reducido el tiempo de desarrollo en un X% (Autor, 2024)".

---

## 2. Anatomía Crítica por Capítulos

### Capítulo 1: Introducción (El Contrato)
Aquí firmas un contrato con el lector. Si prometes "Cero Intervención Humana", más te vale que el Capítulo 5 demuestre exactamente eso.
* **Planteamiento del Problema (1.1):** No hables del problema a nivel filosófico. Hazlo técnico y doloroso. ¿Cuánto tiempo se pierde diseñando algoritmos manualmente? ¿Cuáles son las tasas de error? ¿Por qué los sistemas actuales fallan?
* **La Hipótesis (1.4):** Escríbela como una afirmación matemática o lógica que pueda ser destruida. 
  * *Débil:* "Un sistema multiagente puede diseñar algoritmos automáticamente".
  * *Fuerte:* "Un marco conceptual basado en sistemas multiagente utilizando roles definidos en Prometheus, logra automatizar la selección y diseño de algoritmos con una precisión superior al X% y cero intervención humana en la fase de generación".

### Capítulo 2: Marco Teórico (El Arsenal)
Esto no es un glosario ni un tutorial. Es el arsenal matemático y computacional que usaste para construir tu propuesta.
* **Sé formal:** Cuando hables de la "Ontología para selección automática de algoritmos" (2.5), no des una definición de Wikipedia. Usa notación formal. Define las entidades, las relaciones y las propiedades de tu ontología matemáticamente.
* **Asume un lector experto:** No expliques qué es el código fuente o qué es un bucle. Ve directo a la teoría de Sistemas de Auto-Ingeniería (SES) (2.1).

### Capítulo 3: Estado del Arte (El Campo de Batalla)
Aquí es donde justificas por qué tu tesis merece existir. Si otros ya resolvieron el problema, tu tesis no tiene sentido.
* **Usa tu Revisión Sistemática (RSL):** Ya que hiciste una RSL, aplica la metodología PRISMA. Muestra tu diagrama de flujo: cuántos *papers* encontraste, cuántos descartaste y por qué.
* **Critica, no resumas:** No escribas: "El autor X hizo Y". Escribe: "Aunque el autor X logró Y, su enfoque requiere una fase de etiquetado manual exhaustiva, lo cual viola el principio de cero intervención humana que esta tesis busca resolver".
* **La Matriz Comparativa:** El cierre del capítulo debe ser una tabla donde las columnas sean los trabajos de otros (IA, bio-inspirados, agentes) y tu propuesta. Las filas deben ser las características deseables (Autonomía total, Escalabilidad, Soporte de arquitecturas complejas). Tu propuesta debe tener "palomita" en todas, y los demás deben mostrar carencias.

### Capítulo 4: La Propuesta (Tu Contribución Científica)
Este es el corazón de la tesis. Si te roban la computadora, este capítulo debería ser suficiente para que otro ingeniero reconstruya tu sistema exacto.
* **Arquitectura Transparente:** Si estás utilizando frameworks como MetaGPT para simular los roles de ingeniería, debes documentar la anatomía exacta de cada agente. 
* **Flujos de Comunicación:** ¿Cómo pasa la información del Agente Analista al Agente Desarrollador? Usa diagramas de secuencia UML detallados. ¿Qué pasa si el código generado falla? Explica el bucle de retroalimentación (feedback loop) para la auto-corrección.
* **Caja Blanca, no Caja Negra:** Prohibido decir "el agente diseña el algoritmo". Debes explicar el *prompting* sistémico, la gestión de memoria del agente y los mecanismos de validación interna.

### Capítulo 5: Experimentación y Análisis (El Tribunal)
La ciencia de la computación sin reproducibilidad es ficción. Aquí demuestras que no estás mintiendo.
* **Entorno de Pruebas Restringido:** Sé brutalmente honesto sobre tus limitaciones. Especifica que la simulación se ejecutó localmente en una PC con una RTX 3080 de 10GB de VRAM. Esto es crucial porque:
  1. Justifica por qué utilizaste ciertas versiones cuantizadas de LLMs (como DeepSeek-R1 o Qwen vía Ollama).
  2. Afecta directamente la ventana de contexto (*context window*) disponible para los agentes. Analiza críticamente cómo esta limitación de 10GB de VRAM impactó la memoria de los agentes a la hora de retener la arquitectura del software.
* **Casos de Estudio (5.2.1):** No uses un "Hola Mundo" para probar tu sistema. Usa un problema de diseño algorítmico real y complejo. 
* **Métricas Duras:** Mide la latencia de inferencia, la cantidad de *tokens* consumidos, la tasa de éxito de compilación a la primera (*first-pass rate*), y los ciclos de corrección necesarios.

### Capítulo 6: Conclusiones (El Veredicto)
* **Responde a la Hipótesis:** El primer párrafo debe decir explícitamente: "Los resultados obtenidos en el Capítulo 5 demuestran que la hipótesis planteada es [aceptada/rechazada/aceptada parcialmente] debido a...".
* **Trabajo Futuro (6.3):** No pongas obviedades. Propón cómo escalar el sistema en hardware empresarial (fuera de la limitación de la 3080), cómo integrar validación formal, o cómo expandir la ontología.

---

## 3. Reglas de Estilo Inquebrantables
1. **Voz Activa vs. Pasiva:** En español académico moderno, se prefiere la tercera persona del singular o el plural mayestático. En lugar de "Nosotros desarrollamos un sistema", usa "En este trabajo se desarrolló un sistema".
2. **Cero Paja:** Elimina palabras como "muy", "bastante", "increíblemente". Deja que los datos hablen. (Ej. No digas "el algoritmo es muy rápido", di "el algoritmo converge en 2.4 segundos").
3. **Imágenes y Tablas Autónomas:** Cada figura y tabla debe explicarse por sí sola en su pie de foto. Si un lector solo mira las imágenes, debería entender el 80% de tu tesis.
4. **Citas Rigurosas:** Todo reclamo de rendimiento, técnica establecida o estadística debe llevar su cita en formato APA o IEEE (según el estándar del CINVESTAV). Si no es un descubrimiento tuyo, cítalo.