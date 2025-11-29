#CitaLatex 
@article{Pescaru2017Softwaretool,
  title = {Software tool used for automated design of customizable product},
  volume = {137},
  ISSN = {2261-236X},
  url = {http://dx.doi.org/10.1051/matecconf/201713706003},
  DOI = {10.1051/matecconf/201713706003},
  journal = {MATEC Web of Conferences},
  publisher = {EDP Sciences},
  author = {Pescaru,  Roxana and Kyratsis,  Panagiotis and Oancea,  Gheorghe},
  editor = {Balc,  N.},
  year = {2017},
  pages = {06003}
}

Referencia del archivo original: `(Roxana Pescaru) Software tool used for automated design of customizable product.pdf` [[(Roxana Pescaru) Software tool used for automated design of customizable product.pdf]]

El documento seleccionado es el artículo **"Software tool used for automated design of customizable product"** (Herramienta de _software_ utilizada para el diseño automatizado de productos personalizables), escrito por Roxana Pescaru, Panagiotis Kyratsis y Gheorghe Oancea.

Este trabajo presenta una **herramienta de _software_ original** desarrollada para implementar una metodología de diseño automatizado asociada a un producto personalizable de la **industria del calzado** (_footwear_). La herramienta combina la **ingeniería inversa** (_Reverse Engineering_, RE) con el **diseño paramétrico** para generar modelos CAD sólidos de manera automática.

### Resumen Completo del Documento

**1. Problema y Contexto (Diseño de Productos Personalizables):** La Ingeniería Inversa (RE) es una tecnología común en diversos campos (automotriz, aeroespacial, medicina, vestimenta y calzado) que se define como la reconstrucción de un objeto mediante procesos de medición, análisis y prueba. Para productos con formas complejas y curvas, como el calzado, la metodología de diseño implica la creación de modelos paramétricos utilizando _software_ comercial. El objetivo del artículo es presentar una herramienta que implementa una metodología específica desarrollada por los autores para obtener el modelo CAD de un producto de calzado personalizable de **forma automática**.

**2. La Herramienta de _Software_ y su Arquitectura:** La herramienta fue desarrollada utilizando **Visual Basic para Aplicaciones (VBA)** y está integrada en el entorno del _software_ comercial **CATIA**.

- **Interfaz y Entorno:** La interfaz gráfica (GUI) se diseñó en el entorno de Visual Basic y se lanza desde CATIA. Esta interfaz permite la introducción de los **parámetros característicos del pie humano** y del producto de calzado, mostrando el tipo de producto y el pie humano correspondiente de forma gráfica.
- **Módulos Interrelacionados:** El flujo de trabajo (mostrado en la Fig. 2 en la fuente) requiere dos módulos interrelacionados para obtener el producto final:
    1. **Módulo VBA (Introducción de Datos):** Recibe los valores numéricos que representan los parámetros de personalización del calzado.
    2. **Módulo CATIA (Modificación del Producto):** Modifica el producto utilizando el entorno CATIA, de acuerdo con los valores ingresados.
- **Manejo de Parámetros (Tablas de Diseño):** Para facilitar la introducción de los parámetros necesarios para la obtención automatizada de curvas/superficies en CATIA, los autores utilizaron el **método de la tabla de diseño (_design table_)**. Los valores de los parámetros se almacenan en un archivo asociado de **Microsoft Excel**. CATIA detecta automáticamente los cambios en el archivo de Excel y actualiza la pieza según los nuevos valores.

**3. Pruebas de la Herramienta (Caso de Estudio):** Para probar la herramienta, se siguió un proceso de varios pasos:

1. Lanzar CATIA.
2. Abrir el archivo base "Parameterized_boot.CATPart" (generado utilizando el algoritmo de los autores).
3. Ingresar los datos de personalización del pie humano y de la bota en la ventana que se muestra automáticamente (ej. valores por defecto y valores modificados para la longitud del pie, altura del tacón, diámetro del tobillo, etc.).
4. Presionar el botón "Data processing" (Procesamiento de datos); los datos se escriben automáticamente en el archivo Excel "Design_table1".
5. El diseñador observa cómo los componentes del objeto se **modifican automáticamente** de acuerdo con los nuevos datos.

El resultado final es un **modelo CAD paramétrico sólido**. Se muestran dos ejemplos de botas obtenidas: una con valores por defecto y otra con valores modificados, ilustrando el proceso de personalización.

**4. Conclusión:** El _paper_ concluye que la herramienta de _software_ desarrollada es un éxito para el diseño automatizado de productos con un alto nivel de personalización (calzado), para los cuales inicialmente no había documentación disponible. La herramienta fue validada para un producto que puede diseñarse automáticamente de acuerdo con los datos numéricos ingresados por el usuario.

---

### Ideas Clave que Fundamentan las Conclusiones

Las conclusiones sobre la utilidad y el éxito de la herramienta de _software_ se fundamentan en las siguientes ideas clave:

1. **La Metodología de Diseño Automatizado es Viable a través de la Integración de RE y Diseño Paramétrico:** La conclusión se basa en que el diseño automatizado de productos complejos (con muchas curvas) se logra combinando la **Ingeniería Inversa** con la capacidad del **diseño paramétrico** para definir las formas del calzado.
2. **La Arquitectura Basada en VBA/CATIA/Excel Permite la Operacionalización del Diseño Automatizado mediante Tablas de Diseño:** El éxito de la automatización se basa en la integración de la lógica de programación (VBA) con la capacidad de modelado 3D (CATIA) y la gestión de datos externos (Excel). La clave es el uso del **método de la tabla de diseño** para asociar los parámetros del modelo CAD en CATIA con los datos numéricos de personalización almacenados externamente.
3. **La Interfaz Intuitiva con Entrada de Datos Numéricos de Alto Nivel es Crucial para la Usabilidad en la Personalización:** La conclusión de que el proceso es "fácil de usar" se fundamenta en que el diseñador solo necesita **ingresar los parámetros característicos del pie y la bota** en la GUI de la herramienta. La herramienta se encarga del flujo de información y la actualización automática de la geometría sin intervención manual en el modelado CAD.

---

### Valor del Paper

El artículo **"Software tool used for automated design of customizable product"** tiene un valor práctico y metodológico específico para la ingeniería de diseño y la industria del calzado:

- **Solución Práctica y Operacional:** El _paper_ presenta una **solución de _software_ completamente implementada y probada** que resuelve el desafío de la personalización rápida de productos con geometrías complejas, un requisito clave en industrias como la del calzado.
- **Modelo de Integración de Herramientas:** Proporciona un ejemplo claro de cómo integrar _software_ comercial especializado (CATIA) con un lenguaje de programación (VBA) y herramientas de gestión de datos (Excel) para crear una **herramienta de diseño automatizada**. Esta metodología puede ser replicada para otros productos personalizables.
- **Demostración de la Eficacia del Diseño Paramétrico Asistido:** La validación del proceso de prueba, que muestra cómo la modificación de parámetros clave genera automáticamente un nuevo modelo CAD sólido, demuestra la **viabilidad técnica** de su enfoque de automatización.

El marco es como tener un **zapatero experto digital**. En lugar de que el zapatero (_diseñador_) mida el pie del cliente y luego pase horas ajustando y rehaciendo el molde manualmente, esta herramienta permite que el diseñador simplemente ingrese las **mediciones clave** (longitud del pie, altura del tobillo, etc.) en un formulario digital, y el _software_ automáticamente produce el modelo CAD perfecto para el zapato personalizado en segundos.
