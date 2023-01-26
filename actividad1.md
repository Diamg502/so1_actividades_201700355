ACTIVIDAD #1

- Tipos de Kernel
1. **Kernel** monolítico: Un kernel monolítico es una arquitectura de sistema operativo en la que todo el sistema operativo funciona en el espacio del kernel. El modelo monolítico se diferencia de otras arquitecturas de sistemas operativos (como la arquitectura de micronúcleo) en que solo define una interfaz virtual de alto nivel sobre el hardware de la computadora
1. **Microkernel:** Es un minimalista. núcleo diseñado para ser lo más pequeño posible. Contiene solo el código básico necesario para comunicarse con hardware y cargar un sistema operativo.
1. **Kernel** **híbrido:** Ejecuta algunos servicios en el espacio del núcleo para reducir la sobrecarga de rendimiento de un microkernel tradicional, mientras sigue ejecutando el código del núcleo como servidores en el espacio del usuario
- User vs Kernel Mode

|**User Mode**|**Kernel Mode**|
| :- | :- |
|En el modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema.|En modo usuario, el programa de aplicación se ejecuta y se inicia.|
|En el modo Kernel, todo el sistema operativo podría dejar de funcionar si se produce una interrupción.|En el modo de usuario, un solo proceso falla si se produce una interrupción|
|El modo kernel también se conoce como modo maestro, modo privilegiado o modo de sistema.|El modo de usuario también se conoce como modo sin privilegios, modo restringido o modo esclavo.|
|En el modo kernel, todos los procesos comparten un único espacio de direcciones virtuales.|En el modo de usuario, todos los procesos obtienen un espacio de direcciones virtuales separado.|
|En el modo kernel, las aplicaciones tienen más privilegios en comparación con el modo usuario.|Mientras que en modo usuario las aplicaciones tienen menos privilegios.|
|El bit de modo del modo kernel es 0|Mientras que el modo de usuario necesita acceder a los programas del kernel, ya que no puede acceder directamente a ellos.|
|Como el modo kernel puede acceder tanto a los programas de usuario como a los programas del kernel, no hay restricciones.|Mientras; El bit de modo del modo de usuario es 1.|

