# docker-base

Esta es la imagen base del curso. Los diferentes módulos del curso extenderán esta imagen o la 
usarán directamente (dependiendo de sus necesidades).

## Uso

Para ejecutar una libreta de Jupyter en el directorio actual:

	docker run --rm -it -v $(pwd)/:/home/work/project -p 8888:8888 cidaen/docker-base

Para ejecutar una aplicación de Python que no está en un cuaderno:

	docker run --rm -it -v $(pwd)/:/home/work/project -p 8888:8888 cidaen/docker-base python app.py


## Añadir requisitos 

Para añadir requisitos se puede modificar el fichero `requirements.txt` y construir la imagen con el comando: 

```
  docker build -t="Name of the image" .
```

Este comando se debe ejecutar en la carpeta base del repositorio.   
