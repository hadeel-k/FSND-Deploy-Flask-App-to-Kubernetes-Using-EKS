FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install pytest
RUN pip install PyJWT
RUN pip install Flask
RUN pip install gunicorn
RUN pip install --upgrade --force-reinstall -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]