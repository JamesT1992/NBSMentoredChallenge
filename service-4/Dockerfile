FROM python:3.7

WORKDIR /home/student/NBSMentoredChallenge/service-4

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5003

ENTRYPOINT ["python", "app.py"]
 
