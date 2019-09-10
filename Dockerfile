FROM python:3.6
WORKDIR /app

COPY requirements.txt /app
RUN conda install pytorch torchvision cuda90 -c pytorch
RUN pip install -r requirements.txt
COPY smartmeat-api.py /app
