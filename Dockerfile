FROM python:latest
WORKDIR /app
COPY requirements.txt requirements.txt
EXPOSE 5000
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
CMD python3 app.py