FROM python:3-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --root-user-action=ignore requests -r requirements.txt
COPY . .

CMD gunicorn app:app -b 0.0.0.0:8000
