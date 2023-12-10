FROM jupyter/scipy-notebook

WORKDIR /home/jovyan

COPY requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt

COPY src/ ./src/
COPY data ./data/

EXPOSE 8888

COPY start-notebook.sh /usr/local/bin/

CMD ["start-notebook.sh", "--NotebookApp.token=''"]
