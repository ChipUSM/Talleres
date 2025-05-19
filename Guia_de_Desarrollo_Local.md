# Guía de Desarrollo Local

El siguiente instructivo permite montar un entorno de desarrollo con todas las herramientas del flujo de diseño analógico open-source, así como los PDKs de las tecnologías open-source. El proecso se basa en un `contenedor` (algo similar a una máquina virtual) que contiene las herramientas y PDKs.

## 1. Requerimeintos

Se requieren, por lo menos, 15GB de espacio disponible para la instalación de la imagen. Además, dependiendo del sistema operativo, se debe instalar:

**Windows:** Docker Desktop + WSL2 + git (opcional) <br>
**Linux:** Docler Engine + git (opcional) <br>
**Mac:** Docker Desktop + git (opcional) <br>

### 1.1. Docker

Docker es el programa que se encargará de ejecutar el contenedor. En Windows, requiere *Windows Subsystem for Linux* (WSL) para funcionar.

#### Windows

Seguir las instrucciones en el sitio web de Docker [www.docker.com](https://docs.docker.com/desktop/windows/install/). Basicamente consiste en descargar el instalador, ejecutarlo y seguir las instrucciones para seleccionar WSL2. Si WSL2 no está instalado, Docker debería ofrecer instalarlo. Alternativamente, se puede instalar WSL2 desde la consola de Windows (o PowerShell) con `wsl.exe --install` o actualizarlo con `wsl.exe --update`. 

#### Linux

El proceso no es tan simple como usar `apt-get`. A continuación, se presentan las instrucciones sugeridas por Docker en su sitio web [www.docker.com](https://docs.docker.com/engine/install/ubuntu/).

1. Asegurarse de desinstalar cualquier versión anterior: 

> $ sudo apt-get remove docker docker-engine docker.io containerd runc

2. Instalar 

> $ sudo apt update <br>
> $ sudo apt-get install ca-certificates curl gnupg lsb-release <br>
> $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg <br>
> $ echo \ "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null <br>
> $ sudo apt-get update <br>
> $ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin <br>

3. Verificar la instalación con `sudo systemcl status docker`

4. Agregar un usuario para que no sea necesario ejecutar cada comando con `sudo`

> $ sudo usermod -aG docker <username>
  
5. Para terminar, probar Docker con el siguiente comando. Puede que sea necesario reiniciar el computador para que funcione.
  
> $ docker run --rm hello-world

#### Mac

Instalar Docker Desktop desde el sitio web [www.docker.com](https://docs.docker.com/desktop/install/mac-install/).
  
### 1.2. Git

Git es un programa de administración de versiones. Usar git para montar este entorno de desarrollo local es opcional, pero recomendado. El contenedor que utilizaremos se encuentra en un repositorio git y es actualizado regularmente. La ventaja de utilizar git para `clonar` el repositorio, en lugar de una simple descarga, es que facilita la actualización del contenedor.
  
#### Windows

Descargar el instalador de **Git** desde el sitio web [www.git-scm.com](https://git-scm.com/downloads) y ejecutarlo. Puede ser necesario reiniciar el computador. Por comodidad, se recomienda instalar un cliente de escritorio como [GitHub](https://desktop.github.com/) o [GitKraken](https://www.gitkraken.com/download).
  
#### Linux o Mac

Posiblemente git ya esté instalado. Si no es el caso, instalar `git` usando el administrador de paquetes correspondiente.
  
Luego, se puede configurar el nombre de usuario, dirección de correo y editor de texto de preferencia, para facilitar el uso desde la consola.
  
  > $ git config --global user.name "John Doe" <br>
  > $ git config --global user.email johndoe@example.com <br>
  > $ git config --global core.editor code <br>
  
## 2. Uso del contenedor

La imagen de contenedor que usaremos para este entorno de desarrollo se llama **iic-osic-tools**, y es mantenida por el equipo de Harald Pretl, de JKU. Esta se encuentra en GitHub en la dirección 
`https://github.com/iic-jku/iic-osic-tools.git`.
  
### 2.1. Descarga y actualización
  
Se recomienda descargar el repositorio clonándolo con Git. Esto se puede hacer facilmente desde un cliente Git o desde una terminal con:
  >  $ cd <nombre_carpeta> <br>
  >  $ git clone    https://github.com/iic-jku/iic-osic-tools.git
  
La ventaja de usar Git es que se puede actualizar la imagen facilmente, haciendo `git pull` del repositorio remoto.
  
Alternativamente, se puede ir al sitio web `https://github.com/iic-jku/iic-osic-tools.git`, seleccionar el botón verde que dice "<> Code" y luego *Download Zip*.
  
### 2.2. Ejecución

A continuación se detallan dos métodos para ejecutar el contenedor. Independiente del método, la primera vez que se ejecute el contenedor se descargará automáticamente la imagen. Lo mismo pasará cada vez que se actualice la versión local del repositorio `iic-osic-tools`. Este procedimiento puede demorarse en comenzar y tomar bastante tiempo. Si es interrumpido antes de que termine, puede que después no funcione. Ante problemas de este tipo, puede servir reiniciar el kernel de Docker y/o eliminar el contenedor `iic-osic-tools` de docker.
  
##### Interfaz gráfica con VNC

Esta opción permite visualizar el entorno de desarrollo dentro de un navegador de internet (como Firefox). Este se verá como el escritorio de una máquina virtual dentro del navegador.
  
1. Iniciar Docker Desktop (Windows o Mac)
2. Ejecutar start_vnc.bat` para Windows o `start_vnc.sh` para Linux/Mac.
3. Si es la primera vez, esperar a que la imagen se instale. 
4. Cuando se cierre la terminal, abrir `http://localhost` en un navegador y escribir la contraseña `abc123`.

Un escritorio VNC aparecerá con el logo de JKU. Se puede iniciar una terminal haciendo click derecho y seleccionando `terminal emulator`.

   
##### Interfaz gráfica con servidor X 
 
Con esta opción, el entorno de desarrollo se ve como una terminal, pero luego las herramientas que se utilicen aparecen como ventanas emergentes independientes (si es que tinene interfáz gráfica). En Windows se requiere de una aplicacion con serviror X, recomendamos [MobaXterm](https://mobaxterm.mobatek.net/download.html).
  
1. Iniciar Docker Desktop. (Windows o Mac)
2. Abrir la aplicación de servidor X. (Windows o Mac)
3. Ejecutar `start_x.bat` en Windows o `start_x.sh` en Linux/Mac.
  
Aparecerá una ventana emergente correspondiente a la terminal del contenedor. 
  
## 3. Utilización
  
  
### 3.1. Archivos
  
  El contenedor creará una carpeta en `\*nombre_de_usuario*\eda\designs`. Esta carpeta es accesible desde el *host* y desde el entorno de desarrollo, lo que permite mover archivos fácilmente hacia o desde el contenedor.
  
### 3.2. Comandos
  
  El entorno de desarrollo es basado en UNIX, de forma que funcionan los comandos habituales usados en distribuciones de Linux.
  
  A continuación se presenta una tabla con comandos comunes.
  
  |  Comando  | Descripción |
  |-----------|-------------|
  | `cd <carpeta>` | Mover la terminal a una carpeta o dirección |
  |   `ls`    | Imprimir en la terminal los nombres de carpetas y archivos contenidos en la carpeta actual |
  |  `magic`  | Ejecutar magic |
  | `xschem`  | Ejecutar Xschem ()|
  | `netgen <netlist1.spice> <netlist2.spice>` | Ejecutar Netgen (LVS) entre *netlist1* y *netlist2* |
  |      |      |
  |      |      |
  |      |      |
  |      |      |

  
