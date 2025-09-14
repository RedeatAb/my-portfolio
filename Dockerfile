FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt 

RUN pip install werkzeug>=3.0.3 setuptools>=78.1.1

EXPOSE 5001

ENV FLASK_APP=app.py

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5001"]