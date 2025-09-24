#CitaLatex 
@article{shojaee2025illusion,
  title = {The Illusion of Thinking: Understanding the Strengths and Limitations of Reasoning Models via the Lens of Problem Complexity},
  author = {Shojaee, Parshin and Mirzadeh, Iman and Alizadeh, Keivan and Horton, Maxwell and Bengio, Samy and Farajtabar, Mehrdad},
  journal = {arXiv preprint},
  year = {2025},
  month = {jun},
  url = {https://arxiv.org/abs/2506.06941},
  archiveprefix = {arXiv},
  eprint = {2506.06941},
  primaryclass = {cs.AI}
}
Basado en el paper [[(Apple) The illusion of thinking.pdf]]

El documento narra las diferencias clave de lo que son los LLM (Large lenguaje Models) y los LRM (Large Reasoning Models), como los de OpenAI o1/o3, DeepSeek R1, Claude 3.7 Sonnet Thinking, Gemini Thinking. (Revisar citas 1,2,3,4,5)

Para problemas de composicion simple, los LLM estandar demuestran eficiencia y precision, pero cuanto mas complejo el problema los modelos de razonamiento tienen ventaja.

El documento busca lo siguiente:
Evaluar el rendimiento de estos modelos con benchmarks y experimientos diseñados y controlados para evaluar el rendimiento segun la complejidad de los problemas.
Identificar limites de los LRM, puesto que despues de una cantidad de tokens y un nivel de complejidad hay una decaida de resultados positivos.
Limitantes en los modelos al ejecutar computacion exacta, incluyendo su falla desde la especificacion explicita de algoritmos.

Los LRM muestran comportamientos emergentes como la discrepancia entre sus trazos y las respuestas finales asi como la eficiencia de lo que los investigadores llaman como "el fenomeno del sobrepensamiento", donde los modelos comienzan a balbusear, salidas redundantes incluso despues de encontrar la solucion.

Despues se muestran resultados de los experimentos se muestra un ejemplo:
![[graficas de perdida de precision LRM.png]]
Todo varia dependiendo de la complejidad del problema.
Con casos asi se puede llegar a lo que se denomina como "sobrepensamiento", es un desperdicio de poder computacional puesto que se busco primero por multiples opciones incorrectas hasta llegar a la correcta (o correctas).

## Conclusiones

El paper solo usa unos experimentos en concreto, no es algo tan general pero si precisa en que, entre mas compleja la tarea, peores respuestas se tendra, en el caso de la torre de hanoi, se le sumistro el algoritmo completo y aun asi su respuesta no fue satisfactoria.

Limitaciones
Los experimientos fueron puntuales y especificos, y no refleja completamente las tareas del mundo real, o el razonamiento de problemas complejos.
