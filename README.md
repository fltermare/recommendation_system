# Basic Recommendation System
Implement collaborative filtering based recommendation system

## Run with
- [Local Python Env](#local-python-env)
- [Docker](#docker)


## Local Python Env
### Only tested on the following versions
- Python 3.6.9
- Python 3.8.5

Create a virtual environment first and run the following commands
```sh
pip install -U pip
pip install -r requirements.txt

jupyter notebook
```

## Docker
Install Docker first and run the following commands
```sh
docker build -t recommendation .
docker run --rm -it -p 8888:8888 recommendation
```
