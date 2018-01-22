import os

# Public ip and default port
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = 8888

# Allow to be run as root in docker
c.NotebookApp.allow_root = True
c.NotebookApp.open_browser = False

#c.NotebookApp.notebook_dir = os.getenv("NOTEBOOK_DIR","")
c.NotebookApp.notebook_dir = "/home/work/project" 

# No password at the begining
c.NotebookApp.token = ''
c.NotebookApp.password = ''
