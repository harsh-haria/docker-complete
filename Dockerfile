FROM python 

WORKDIR /app

COPY . /app

CMD ["python", "rng.py"]

# run it with 'docker run -it xyz1abc'