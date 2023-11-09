FROM python:3.8

WORKDIR /code

COPY requirements.txt .

RUN pip3 install -r requirements.txt

RUN apt-get update && apt-get install -y libgl1-mesa-glx

COPY . .

EXPOSE 5001

ENTRYPOINT [ "gunicorn" , app:app]
