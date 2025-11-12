#!/bin/bash

# 1. Definir variables iniciales
# El script comenzará la numeración en 36, por lo que el primer ID será P036
START_NUM=36
COUNT=$START_NUM 
ARCHIVO_ENTRADA="text.txt"
CARPETA_SALIDA="archivos_markdown_papers"

# 2. Crear el directorio de salida
mkdir -p "$CARPETA_SALIDA"
echo "Carpeta de salida creada: $CARPETA_SALIDA"
echo "-----------------------------------"

#!/bin/bash

# ... (Pasos 1 a 3: Definición de variables y creación de directorio) ...

# Leer el archivo de entrada línea por línea (robusto ante espacios)
while IFS= read -r FILENAME
do
    # 4. TRATAMIENTO DEL NOMBRE DEL ARCHIVO: Extracción del Título
    # a. Título con espacios para el contenido del archivo
    TITLE_WITH_SPACES=$(echo "$FILENAME" | sed -E 's/^\(.*\)\s*//; s/\.pdf$|\.PDF$//i')
    
    # b. Título seguro con guiones para el nombre del archivo
    #    (Este se usa SÓLO para el nombre del archivo en el sistema)
    SAFE_TITLE=$(echo "$TITLE_WITH_SPACES" | tr ' ' '-')

    # 5. Formatear el ID secuencial
    ID_NUMBER=$(printf "%03d" "$COUNT")
    ID_PREFIX="P"
    PAPER_ID="${ID_PREFIX}${ID_NUMBER}"

    # 6. Construir el nuevo nombre de archivo Markdown
    #    Formato: P036-An-aproach-for-the-evolutionary-discovery.md
    #    ***USAMOS $SAFE_TITLE AQUÍ para los guiones en el nombre del archivo***
    NEW_MD_FILE="${CARPETA_SALIDA}/${PAPER_ID}-${SAFE_TITLE}.md"

    # 7. Crear el archivo Markdown con contenido inicial (Título del paper)
    #    ***USAMOS $TITLE_WITH_SPACES AQUÍ para un encabezado limpio y legible***
    echo "# ${PAPER_ID} - ${TITLE_WITH_SPACES}" > "$NEW_MD_FILE"
    echo "" >> "$NEW_MD_FILE"
    echo "Referencia del archivo original: \`${FILENAME}\`" >> "$NEW_MD_FILE"
    
    echo "Creado: $NEW_MD_FILE"

    # 8. Incrementar el contador
    COUNT=$((COUNT + 1))

done < "$ARCHIVO_ENTRADA"

# ... (Final del script) ...

echo "-----------------------------------"
echo "¡Proceso finalizado! Se crearon $(($COUNT - $START_NUM)) archivos Markdown con IDs."