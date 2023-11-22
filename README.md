# Taller 2
Esta rama reune los archivos asociados al taller 2 de ChipUSM, titulado 'Diseño Analógico'. Esto incluye: enunciado, insumos y resultados.

Para empezar, instalar las herramientas del flujo analógico open-source (Xschem, Magic y netgen) y el PDK de la tecnología open-source SKY130. Para hacer esto, se sugiere utilizar un contenedor con todo lo necesario en Docker, siguiendo las instrucciones en el documento ["Guía de Desarrollo Local"](https://github.com/ChipUSM/Talleres/blob/taller_2/Guia_de_Desarrollo_Local.md).

Luego descargar los insumos. También se pueden clonar directamente en el contenedor con `git clone --branch taller_2 https://github.com/ChipUSM/Talleres`

Regresar a rama main: https://github.com/ChipUSM/Talleres/tree/main


## Problemas usuales


### Visual Studio Code no actualiza el explorador de archivos

A veces, vscode tarda demasiado en actualizar la lista de archivos, o simplemente no la actualiza.
Ante esto, hay que forzar el refresco del explorador. Esto se puede hacer de dos maneras:

1. Con el símbolo 🔁 en la parte superior del explorador
2. Abrir el panel de comandos (Ctrl^P) y luego anotar "Refresh Explorer"
