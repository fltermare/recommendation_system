FROM python:3.6-slim-buster

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app
RUN pip install -U pip
RUN pip install -r requirements.txt

ADD ./SavedModel /app/SavedModel
COPY collab_mapped.csv /app
COPY recommendation.ipynb /app

EXPOSE 8888/tcp
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
