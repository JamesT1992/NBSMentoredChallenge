FROM python:3.7

WORKDIR /home/student/NBSMentoredChallenge/service-4

COPY . .

RUN pip install -r ./requirements.txt

EXPOSE 5003

ENTRYPOINT ["python", "app.py"]
 
