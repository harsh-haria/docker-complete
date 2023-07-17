FROM python

WORKDIR /

COPY /python-app/ /

CMD ["python", "bmi.py"]