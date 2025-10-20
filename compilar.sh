#!/bin/bash

# Script para compilar la tesis LaTeX
# Autor: GitHub Copilot
# Fecha: $(date)

echo "🚀 Compilando tesis LaTeX..."

# Definir las rutas de los ejecutables TeX
PDFLATEX="/Library/TeX/texbin/pdflatex"
BIBER="/Library/TeX/texbin/biber"
MAKEGLOSSARIES="/Library/TeX/texbin/makeglossaries"

# Verificar que los ejecutables existen
if [ ! -f "$PDFLATEX" ]; then
    echo "❌ Error: pdflatex no encontrado en $PDFLATEX"
    echo "Por favor instala MacTeX o BasicTeX"
    exit 1
fi

# Compilación paso a paso
echo "📄 Primera compilación con pdflatex..."
$PDFLATEX z-main.tex

echo "📚 Procesando bibliografía con biber..."
$BIBER z-main

echo "📖 Generando glosario..."
$MAKEGLOSSARIES z-main

echo "📄 Segunda compilación con pdflatex..."
$PDFLATEX z-main.tex

echo "📄 Tercera compilación final con pdflatex..."
$PDFLATEX z-main.tex

# Verificar si se generó el PDF
if [ -f "z-main.pdf" ]; then
    echo "✅ ¡Compilación exitosa!"
    echo "📁 Archivo generado: z-main.pdf"
    
    # Mostrar información del archivo
    SIZE=$(ls -lh z-main.pdf | awk '{print $5}')
    echo "📊 Tamaño del archivo: $SIZE"
    
    # Preguntar si quiere abrir el PDF
    echo "¿Deseas abrir el PDF? (y/n)"
    read -r response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        open z-main.pdf
    fi
else
    echo "❌ Error: No se pudo generar z-main.pdf"
    echo "Revisa los errores en el log de compilación"
    exit 1
fi

echo "🧹 Limpiando archivos temporales..."
rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.bcf *.blg *.run.xml *.fls *.fdb_latexmk *.glo *.gls *.glg *.ist

echo "🎉 ¡Proceso completado!"