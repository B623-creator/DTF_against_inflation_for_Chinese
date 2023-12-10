FROM jupyter/scipy-notebook

WORKDIR /home/jovyan

COPY requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt

COPY src/ ./src/

COPY data ./data/

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.default_url=/src/Hedge_Against_inflation_Tool.ipynb", "--NotebookApp.token=''"]
