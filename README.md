[![Docker Automated buil](https://img.shields.io/docker/automated/enriquegrodrigo/docker-pydata.svg)](https://hub.docker.com/r/enriquegrodrigo/docker-pydata/)
[![Docker Build Statu](https://img.shields.io/docker/build/enriquegrodrigo/docker-pydata.svg)](https://hub.docker.com/r/enriquegrodrigo/docker-pydata/)
# docker-pydata

This is a base base image for mantaining python data science consistency between 
developments. 

## Docker Hub

One can easily obatin the latest image with the default packages using
```
docker pull enriquegrodrigo/docker-pydata:latest
```

## Building the image 

For building the image:

```
git clone https://github.com/enriquegrodrigo/docker-pydata.git
docker build -t="Name of the image"
```

If you want to add more requirements, you can use a `requirements.txt` file in the 
same folder as the `Dockerfile` and they will be added to the image. 

## Usage

For accessing the folder through Jupyter Notebook:

	docker run --rm -it -v $(pwd)/:/home/work/project -p 8888:8888 enriquegrodrigo/docker-pydata

For executing a python application:

	docker run --rm -it -v $(pwd)/:/home/work/project -p 8888:8888 enriquegrodrigo/docker-pydata python app.py



