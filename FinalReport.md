# Final Report

Note - Any metrics and photos will be specified in (brackets)

I started off with my week 4 challenge ansible playbook.yaml, which could be used to check/install docker onto our virtual machines. I added additional functionality to this playbook by adding lines to also check/install docker-compose, in addition to just docker.

The first stage was to carry out SAST Testing with Sonarqube on port 9000. The results of this can be seen in my Metrics folder, (SAST1, SAST2, SAST3 & SAST4), as well as the initial Sonarqube Command that was used to initially spin up my Sonarqube container. This was then changed later in the project to my current sonarqube.sh, as found in my scripts folder, as this command would allow testing to be sent to any Sonarqube on localhost:9000 whilst using a pipeline in Jenkins. This did make for a difficult transition between working functionality, and being able to make the code ready for submission. This did pose some difficulties that I did have to talk through with Ben.

Secondly, Unit Testing was carried out using the pytest and pytest --cov functions. The results of which can be found within my metrics folder (PYTEST1, PYTEST2, PYTEST3 & PYTEST4). To do this as shown in my "pytest.sh" script located in my "scripts" folder, a virtual environment was created for this to be executed correctly.

Following on from this, I by creating the Dockerfiles for each of the services. I used my notes to ascertain which specific details were required as they were Python applications that we had worked with earlier in the academy. I ascertained the port numbers for each service by checking the app.py for each file.

Next, I created the docker-compose.yaml that would be used to create each of the four images for the corresponding services. This can be seen in my NBSMentoredChallenge folder under docker-compose.yaml.

The next stage was to set up a nexus artefact repository to on localhost:8081 & 8082. This was set up and allowed the built images to be pushed to this nexus artefact repository as part of the pipeline. This can be seen in my metrics folder as (NEXUS1).

The next stage on the pipeline was simply to run the images inside docker containers. The script used for this can be found in my "scripts file" as "run.sh". This used the simple "sudo docker-compose up -d" command. This started the each of the applications to create a fully functioning app as shown on metrics (App5000, App5001, App5002 & App5003)

The final challenge was to automate the whole process using Jenkins I encountered some hurdles as I needed to allow Jenkins to execute commands to had to add it to the sudo user group. As well as this I needed to ensure that it didn't request Jenkins to input passwords for each command, some of these errors can be found on metric (JENKINSFAIL1 & JENKINSFAIL2). Further to this I also encountered an error to get Sonarqube.sh script to work properly this can be seen in (JENKINSFAIL3). I tried lots of trial and error to get it working, and eventually succumbed to removing that step and testing to see if the remainder of the process works, which it did, and can be see on metric (JenkinsSuccessNoTest1 & JenkinsSuccessNoTest2). 

To attempt to overcome this final hurdle, I added some additional text to my Sonarqube.sh such as the "echo" function which after discussing with my peers and Ben, they suggested that maybe some additional functionality would have been required for it to work properly, but in its current state it allows for use by other people at time of submission if they set Sonarqube up successfully on their machine. This allowed me to seemingly fully automate the process with Jenkins as shsown in metrics (JenkinsFinished1 & JenkinsFinished2).
