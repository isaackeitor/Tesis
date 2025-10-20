# Plantilla LaTeX para Tesis - UVG

Esta es una plantilla LaTeX para trabajos de graduación de la Universidad del Valle de Guatemala, basada en la plantilla del Megaproyecto_Tesis-draft.

## Estructura del proyecto

### Archivos principales
- `z-main.tex` - Archivo principal que compila todo el documento
- `0-datos_estudiante.tex` - Datos personales del estudiante y configuración
- `1-opciones_adicionales.tex` - Opciones de formato adicionales
- `2-paquetes_y_comandos_usuario.tex` - Paquetes y comandos personalizados

### Archivos de contenido
- `a-prefacio.tex` - Prefacio (agradecimientos, dedicatorias)
- `b-resumen.tex` - Resumen en español
- `c-abstract.tex` - Abstract en inglés
- `d-introduccion.tex` - Capítulo de introducción
- `e-antecedentes.tex` - Capítulo de antecedentes
- `f-justificacion.tex` - Capítulo de justificación
- `g-objetivos.tex` - Capítulo de objetivos
- `h-alcance.tex` - Capítulo de alcance
- `i-marco_teorico.tex` - Capítulo de marco teórico
- `j-metodologia.tex` - Capítulo de metodología
- `k-resultados.tex` - Capítulo de resultados
- `l-analisis_de_resultados.tex` - Capítulo de análisis de resultados
- `m-discusion_de_resultados.tex` - Capítulo de discusión de resultados
- `o-anexos.tex` - Anexos
- `p-glosario.tex` - Definiciones para el glosario
- `n-bibliografia.bib` - Referencias bibliográficas

### Carpetas
- `plantilla/` - Archivos gráficos de la plantilla (logos, fondos)
- `figuras/` - Tus figuras e imágenes
- `imagenes/` - Carpeta adicional para imágenes

## Cómo empezar

1. **Personaliza tus datos**: Edita el archivo `0-datos_estudiante.tex` con tu información personal
2. **Escribe tu contenido**: Edita cada archivo de capítulo según tu proyecto
3. **Agrega referencias**: Incluye tus referencias en `n-bibliografia.bib`
4. **Compila**: Ejecuta `pdflatex z-main.tex` (puede requerir múltiples pasadas)

## Compilación

Para compilar correctamente el documento:

```bash
pdflatex z-main.tex
biber z-main
makeglossaries z-main
pdflatex z-main.tex
pdflatex z-main.tex
```

O usar tu editor LaTeX favorito que maneje la compilación automáticamente.

## Notas importantes

- Todos los archivos de contenido tienen el comentario `% !TEX root = z-main.tex` para que los editores reconozcan el archivo principal
- La plantilla usa el sistema de bibliografía `biblatex` con `biber`
- Las imágenes se buscan en las carpetas `figuras/`, `imgs/` e `imagenes/`
- El formato sigue las normas de la UVG para trabajos de graduación

## Personalización

- Para cambiar el formato de párrafos, modifica la línea `\def \parpordefecto` en `0-datos_estudiante.tex`
- Para usar formato APA de referencias, descomenta `\def \usarAPA` en `0-datos_estudiante.tex`
- Para versión de impresión, descomenta `\def \printver` en `0-datos_estudiante.tex`

¡Buena suerte con tu tesis!