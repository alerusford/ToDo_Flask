FROM python:3.10-alpine
MAINTAINER alexandr
RUN python3 -m pip install --upgrade pip
COPY . .
WORKDIR .
RUN python3 -m pip install -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
