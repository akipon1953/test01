FROM python: 3.6.10
COPY ./requirement.txt /requirement.txt
COPY ./app.py /app.py
RUN pip install --no-chache-dir -r /requirement.txt
RUN ["python", "/app.py"]
