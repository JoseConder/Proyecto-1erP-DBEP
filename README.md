Proyecto del primer parcial

Getting Started

Como proyecto del primer parcial vamos a realizar una aplicación que nos ayude a aprender acerca de las diferentes metodologías de desarrollo ágil de software.
  *Opción -a 
    Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:
    SCRUM
    X.P.
    Kanban
    Crystal
*Opción -t
    Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:
    Cascada
    Espiral
    Modelo V
    
2. Una vez seleccionado un tema en específico deberá de mostrar las siguientes opciones:
Usted está en la sección ${nombre de la sección}, seleccione la opción que desea utilizar.
    Agregar información
    Buscar
    Eliminar información
    Leer base de información.
    
3. La idea de este sub menú es almacenar información en archivos con extensión .inf (uno por cada metodología) el cual tendrá la siguiente estructura:
    [concepto(1)] .- Definición.
    [concepto(2)] .- Definición.
    [concepto(3)] .- Definición.
    [concepto(n)] .- Definición.
    Ejemplo:
      [sprint] .-  Es el nombre que va a recibir cada uno de los ciclos o iteraciones que vamos a tener dentro de dentro de un proyecto
      [burndown chart] .- es una representación gráfica del trabajo por hacer en un proyecto en el tiempo.
      [product owner] .- -El P.O. se asegura de que el equipo Scrum trabaje de forma adecuada desde la perspectiva del negocio
      
4. Al agregar información se debe solicitar el identificador del concepto y la definición al guardarlo se debe de formatear y anexar al final del archivo.

5. Al ejecutar la opción buscar deberá solicitar el elemento a buscar dentro del archivo (se debe ubicar el identificador utilizando expresiones regulares).

6. Al eliminar información debe solicitarnos el concepto y quitarlo del archivo.

7. Al seleccionar leer la base de información nos debe de imprimir en pantalla el contenido del archivo.

8. Al terminar la ejecución de un comando debe pedirnos una siguiente opción, volver al menú anterior o terminar la ejecución.

9. Empaque en una imagen de docker su aplicación bash, deberá al ejecutarse un contenedor lanzar inmediatamente su aplicación.

Prerequisites

Conocer bash y línea de comandos de linux
Conocer y manejar git
conocer y manejar Docker

Installing
Si se usara el script PPDBP23.sh solo entonces para correrlo es ./PPDPBP -a o ./PPDBP -t 
Descargar la imagen del contenedor del proyecto y correr el contenedor

Built With

Linux
Nano
Git
Docker

Authors

Anahí Peinado Villalobos 353262
José Eduardo Conde Hernández 299506

Acknowledgments
Luis Antonio Ramirez Martinez



