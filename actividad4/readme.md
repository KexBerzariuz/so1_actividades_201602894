# Proceso de instalacion de un servicio 


#### Crear el archivo .service en el directorio donde se encuentren los servicios del sistema para este ejemplo se usa el directorio /etc/systemd/system/

ejemplo de un servicio simple que ejecuta un bash dando como resultado el saludo y la hora y fecha actual


```
[unit]
Description = Saludo  //descripcion del servicio
After=systend-user-sessions.service  //esto indica se ejecutara cuando el usuario lo llame
[Service]
Type = simple //como es simple lo que va a hacer es ejecutar lo que esta en el atributo execstart
ExecStart = /home/kexberzariuz/Sopes1/Clase/hola.sh
```


### ejecutar el service 

```
sudo systemctl start Saludo.service
```
