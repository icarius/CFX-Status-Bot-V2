FROM python:3.12-alpine3.19
RUN mkdir /app
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY ./bot.py .
CMD [ "python", "./bot.py"]
