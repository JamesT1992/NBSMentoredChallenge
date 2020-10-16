FROM python:3.7

WORKDIR /home/student/NBSMentoredChallenge/service-3

COPY . .

RUN pip install -r ./requirements.txt

EXPOSE 5002

ENTRYPOINT ["python", "app.py"]
 
