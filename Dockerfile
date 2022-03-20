FROM python:3.8
WORKDIR /app/
COPY app ./app/
RUN pip3 install --no-cache-dir -r ./app/requirements.txt
ENV FLASK_APP=app.main
CMD ["python", "-m", "flask", "run", "--port=5000"]