# Actividad 3

Debido al problema que hay a la hora de unificar react con nginx debido a que nginx esta diseñado de la forma de que al buscar una pagina la busca en el directorio mientras que react la maneja virtual

## Solucion

se tiene que configurar un archivo nginx.conf en el cual la ocnfiguracion que se desea añadir que todos los directorios url busque el index.html que siempre crea react 
```
try_files $uri /index.html;   
```
quedando de esta manera el archivo

```
server {
    listen       80;
    server_name  localhost;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
        try_files $uri /index.html;                 
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
```

para en el caso que se quiera crear un contenedor se procede a copiar la configuracion creada a la localizacion donde tiene guardada su configuracion el nginx 

```
COPY nginx.conf /etc/nginx/conf.d/default.conf
```
