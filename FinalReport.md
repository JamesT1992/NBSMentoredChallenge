# Final Report

Note - Any metrics and photos will be specified in (brackets), as shown in the Metrics folder in this repository.

I started off with my week 4 challenge ansible playbook.yaml, which could be used to check/install docker onto our virtual machines. I added additional functionality to this playbook by adding lines to also check/install docker-compose, in addition to just docker.

The first stage was to carry out SAST Testing with Sonarqube on port 9000. The results of this can be seen in my Metrics folder, (SAST1, SAST2, SAST3 & SAST4), as well as the initial Sonarqube Command that was used to initially spin up my Sonarqube container. This was then changed later in the project to my current sonarqube.sh, as found in my scripts folder, as this command would allow testing to be sent to any Sonarqube on localhost:9000 whilst using a pipeline in Jenkins. This did make for a difficult transition between working functionality, and being able to make the code ready for submission. This did pose some difficulties that I did have to talk through with Ben.

Secondly, Unit Testing was carried out using the pytest and pytest --cov functions. The results of which can be found within my metrics folder (PYTEST1, PYTEST2, PYTEST3 & PYTEST4). To do this as shown in my "pytest.sh" script located in my "scripts" folder, a virtual environment was created for this to be executed correctly.

Following on from this, I by creating the Dockerfiles for each of the services. I used my notes to ascertain which specific details were required as they were Python applications that we had worked with earlier in the academy. I ascertained the port numbers for each service by checking the app.py for each file.

Next, I created the docker-compose.yaml that would be used to create each of the four images for the corresponding services. This can be seen in my NBSMentoredChallenge folder under docker-compose.yaml.

The next stage was to set up a nexus artefact repository to on localhost:8081 & 8082. This was set up and allowed the built images to be pushed to this nexus artefact repository as part of the pipeline. This can be seen in my metrics folder as (NEXUS1).

The next stage on the pipeline was simply to run the images inside docker containers. The script used for this can be found in my "scripts file" as "run.sh". This used the simple "sudo docker-compose up -d" command. This started the each of the applications to create a fully functioning app as shown on metrics (App5000, App5001, App5002 & App5003)

The final challenge was to automate the whole process using Jenkins I encountered some hurdles as I needed to allow Jenkins to execute commands to had to add it to the sudo user group. As well as this I needed to ensure that it didn't request Jenkins to input passwords for each command, some of these errors can be found on metric (JENKINSFAIL1 & JENKINSFAIL2). Further to this I also encountered an error to get Sonarqube.sh script to work properly this can be seen in (JENKINSFAIL3). I tried lots of trial and error to get it working, and eventually succumbed to removing that step and testing to see if the remainder of the process works, which it did, and can be see on metric (JenkinsSuccessNoTest1 & JenkinsSuccessNoTest2). 

To attempt to overcome this final hurdle, I added some additional text to my Sonarqube.sh such as the "echo" function which after discussing with my peers and Ben, they suggested that maybe some additional functionality would have been required for it to work properly, but in its current state it allows for use by other people at time of submission if they set Sonarqube up successfully on their machine. This allowed me to seemingly fully automate the process with Jenkins as shsown in metrics (JenkinsFinished1 & JenkinsFinished2).


# Feedback Questions

# Why are we doing this?
(Answered as if I were working in DevOps project)
We are using containers for these apps as they are quick to put up and take down as well as being very lightweight and non-cumbersome on our machines. Being able to spin up applications in containers ensures that they can be self-sufficient in the sense that anyone can down the repository, install the requirements and the applications will work, there is not reliance on programs, software etc. on a host device for it to work.

The reason we use automation is to reduce the amount of hours and resources needed to execute applications. These tools that products like Jenkins offer such as polling allows us to continually check for updates without having to take the whole application down continually to update. It helps build towards agile working in the devops space through continuous integration and continuous delivery.

Testing such as SAST testing is carried out as a security measure to check the integrity of the code, outlining areas we can improve and potential areas of susceptability. This is key in ensuring a long standing piece of code that can stand up to modern security threats.

# How I expected the challenge to go.
(Answered as me)
I expected the challenge to be tough, as I believe the idea was to encompass everything that we had learnt over the first four weeks and deliver a piece of work without the security of having continual teacher and peer support. 

# What went well?
(Answered as me)
Some elements of the build went smoother than others, and some required some checking in with peers as well as revisiting the learning material. An example of this was with Sonarqube and the Jenkins pipeline. However, the areas that went well were the building, running and pushing of the applications. What went especially well, and what I really began to appreciate, was the practical functionality of using ansible and how it can be helpful in checking/installing programs. 

# What didn't go as planned?
(Answered as me)
As above, the testing was particularly tough, from the Unit Testing using pytest through to the Sonarqube SAST testing. As stated in the report, I believe the difficulty with the SAST testing was trying to find a balance between delivering a submission that was fit for use by others, and actually managing to get the code to work, as there were some options that had to be configured manually in the application, and we did not have the knowledge to configure it via a script. The Unit Testing was less cumbersome in the sense I just had to revisit learning material to refamiliarize myself with the commands etc required to successfully build a virtual environment to carry out the testing.

# Possible improvements for future challenges.
(Answered as if I were working in a DevOps project)
Possible improvements for future challenges would be to be able to push the understanding around application configuration through scripts, in the sense that Ben made me aware that although currently above our skill set there is a way to configure options for sonarqube and nexus etc via a script. This would allow the application to be wholly functional purely through the downloading of the repository.

(Answered as me)
I would definitely take more screen shots of the process as I went through. To begin with I spent a lot of time focused on getting everything to run, that when I did run into issues rather than take the time to screenshot and document them I just continued troubleshooting until I fixed the issue. In retrospect it would have been nice to see some of the issues I managed to overcome as I can now only really recall some of the larger ones that have been mentioned in this report.
