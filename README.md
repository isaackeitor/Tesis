# Tesis de Graduación - UVG
## Diseño e implementación de UX/UI para aplicación de Realidad Aumentada en Kaminaljuyú

Proyecto de tesis presentado por **Josué Isaac Morales González** para optar al grado de Licenciatura en Ingeniería en Ciencias de la Computación y Tecnologías de la Información.

---

## Estructura del Proyecto (Reorganizada)

Este proyecto utiliza una estructura modular y organizada para facilitar el mantenimiento y la redacción de la tesis:

```
.
├── main.tex                    # Archivo principal (NUEVA ESTRUCTURA)
├── z-main.tex                  # Archivo original (respaldo)
├── 0-datos_estudiante.tex      # Información del estudiante
├── 1-opciones_adicionales.tex  # Configuración de capítulos
├── 2-paquetes_y_comandos_usuario.tex  # Comandos personalizados
│
├── config/
│   └── packages.tex            # Paquetes LaTeX centralizados
│
├── chapters/                   # Capítulos de la tesis
│   ├── 01_introduccion.tex
│   ├── 02_antecedentes.tex
│   ├── 03_justificacion.tex
│   ├── 04_objetivos.tex
│   ├── 05_alcance.tex
│   ├── 06_marco_teorico.tex
│   ├── 07_metodologia.tex
│   ├── 08_resultados.tex
│   ├── 09_analisis_resultados.tex
│   ├── 10_discusion_resultados.tex
│   └── anexos.tex
│
├── bibliografia/
│   └── referencias.bib         # Referencias bibliográficas
│
├── figuras/                    # Imágenes del documento
│   ├── resultados/
│   │   ├── prototipos/
│   │   └── capturas-app/
│   └── ...
│
├── plantilla/                  # Logos y recursos de UVG
│   ├── escudoUVGnegro.eps
│   ├── logoUVGblanco.eps
│   └── portadacit.jpg
│
├── a-prefacio.tex              # Secciones preliminares
├── b-resumen.tex
├── c-abstract.tex
├── p-glosario.tex              # Glosario (opcional)
│
└── compilar.sh                 # Script de compilación

```

---

## Compilación

### Método 1: Script automatizado (recomendado)
```bash
bash compilar.sh
```
*Nota: Deberás actualizar el script para usar `main.tex` en lugar de `z-main.tex`*

### Método 2: Manual (macOS/Linux)
```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

### Método 3: Con glosario (si está activado)
```bash
pdflatex main.tex
biber main
makeglossaries main
pdflatex main.tex
pdflatex main.tex
```

### Windows PowerShell
```powershell
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

---

## Configuración del Documento

### Datos del estudiante
Edita `0-datos_estudiante.tex` para configurar:
- Nombre del estudiante
- Carné
- Título de la tesis
- Nombre del asesor
- Tribunal examinador

### Activar/Desactivar capítulos
En `1-opciones_adicionales.tex`, comenta las líneas de capítulos que no desees incluir:
```latex
\def \CAPprefacio {Prefacio}
\def \CAPantecedentes {Antecedentes}
% \def \CAPalcance {Alcance}  % Comentar para omitir
```

### Cambiar estilo de bibliografía
En `0-datos_estudiante.tex`:
- **IEEE** (por defecto): mantener comentada la línea
- **APA**: descomentar la línea:
  ```latex
  \def \usarAPA {Usar formato APA}
  ```

### Versión de impresión
Para generar versión sin portada colorida (para encuadernación):
```latex
\def \printver {Versión del documento para impresión}
```

---

## Dónde Escribir

### Capítulos principales
Edita los archivos en `chapters/`:
- `01_introduccion.tex` - Introducción del proyecto
- `02_antecedentes.tex` - Contexto histórico
- `03_justificacion.tex` - Justificación del proyecto
- `04_objetivos.tex` - Objetivos generales y específicos
- `05_alcance.tex` - Alcance y limitaciones
- `06_marco_teorico.tex` - Marco teórico y conceptual
- `07_metodologia.tex` - Metodología de investigación
- `08_resultados.tex` - Resultados obtenidos
- `09_analisis_resultados.tex` - Análisis de resultados
- `10_discusion_resultados.tex` - Discusión y conclusiones
- `anexos.tex` - Anexos del documento

### Referencias bibliográficas
Edita `bibliografia/referencias.bib` en formato BibTeX:
```bibtex
@article{autor2024,
  author  = {Apellido, Nombre},
  title   = {Título del artículo},
  journal = {Revista},
  year    = {2024},
  doi     = {10.XXXX/ejemplo}
}
```

### Imágenes
Coloca tus imágenes en `figuras/` e inclúyelas con:
```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{ruta/imagen.jpg}
    \caption{Descripción de la imagen}
    \label{fig:etiqueta}
\end{figure}
```

Referencia con: `\ref{fig:etiqueta}` o mejor aún `\cref{fig:etiqueta}` (con cleveref).

---

## Citas y Referencias

### Citar en el texto
```latex
% Formato IEEE (números)
Como mencionan \cite{autor2024}, la realidad aumentada...

% Con cleveref (automático)
Como se observa en la \cref{fig:ejemplo}...
```

### Agregar nuevas referencias
1. Abre `bibliografia/referencias.bib`
2. Agrega la entrada BibTeX
3. Usa `\cite{clave}` en el texto
4. Recompila con `biber`

---

## Ventajas de la Nueva Estructura

✅ **Organización modular**: Cada capítulo en su propio archivo
✅ **Fácil mantenimiento**: Cambios centralizados en `config/packages.tex`
✅ **Navegación clara**: Estructura de directorios intuitiva
✅ **Control de versiones**: Mejor gestión con Git
✅ **Colaboración**: Múltiples personas pueden trabajar en capítulos diferentes
✅ **Reutilización**: Plantilla fácilmente adaptable para otros proyectos

---

## Migración desde la Estructura Original

Si estabas usando `z-main.tex`, ahora puedes usar `main.tex` que tiene la nueva estructura modular:

- **Antes**: Archivos en raíz (`d-introduccion.tex`, `e-antecedentes.tex`, etc.)
- **Ahora**: Archivos en `chapters/` con nombres descriptivos (`01_introduccion.tex`, etc.)
- **Paquetes**: Antes en `z-main.tex`, ahora en `config/packages.tex`
- **Bibliografía**: Antes `n-bibliografia.bib`, ahora `bibliografia/referencias.bib`

**Los archivos originales se mantienen como respaldo** - puedes seguir usando `z-main.tex` si lo prefieres.

---

## Archivos Importantes

- **main.tex**: Archivo principal con la nueva estructura modular
- **z-main.tex**: Archivo original (conservado como respaldo)
- **config/packages.tex**: Todos los paquetes LaTeX en un solo lugar
- **compilar.sh**: Script de compilación automatizada

---

## Solución de Problemas

### Error de compilación
1. Verifica que todos los archivos `.tex` existan en `chapters/`
2. Revisa que `bibliografia/referencias.bib` esté presente
3. Asegúrate de que las imágenes existan en `figuras/`

### Referencias no definidas
```bash
# Ejecuta la secuencia completa
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

### Limpiar archivos temporales
```bash
rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.toc *.lof *.lot *.run.xml
```

---

## Contacto y Soporte

**Estudiante**: Josué Isaac Morales González
**Institución**: Universidad del Valle de Guatemala
**Facultad**: Ingeniería
**Carrera**: Ingeniería en Ciencias de la Computación y Tecnologías de la Información

---

## Licencia

Este proyecto es un trabajo académico de la Universidad del Valle de Guatemala.

**Última actualización**: Noviembre 2025
