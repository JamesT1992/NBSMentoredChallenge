FROM python:3.7

WORKDIR /home/student/NBSMentoredChallenge/service-2

COPY . .

RUN pip install -r ./requirements.txt

EXPOSE 5001

ENTRYPOINT ["python", "app.py"]
 
