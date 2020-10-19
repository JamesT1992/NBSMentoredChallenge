#! /bin/bash

sudo docker run -d -p 8081:8081 -p 8082:8082 --name nexus sonatype/nexus3
