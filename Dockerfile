FROM python:3.6
LABEL version="1.0"


RUN apt-get update ; \
    apt-get install -y graphviz

COPY default.requirements.txt /req/
RUN pip3 install -r /req/default.requirements.txt

COPY requirements.txt /req/
RUN pip3 install -r /req/requirements.txt

COPY jupyter_notebook_config.py /config/config.py

VOLUME /home/work/project 

WORKDIR /home/work/project


EXPOSE 8888


CMD ["jupyter", "notebook", "--config", "/config/config.py"]
