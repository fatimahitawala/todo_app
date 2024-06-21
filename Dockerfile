FROM python:3.12.3-slim
RUN mkdir /TODO_PROJECT
WORKDIR /TODO_PROJECT
ADD . /TODO_PROJECT
RUN pip install -r requirements.txt
EXPOSE 8000
CMD python manage.py runserver 0:8000