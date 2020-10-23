pipeline {
	agent any
	stages {
		stage("Check Docker & docker-compose is  installed/Install Docker with Ansible"){
			steps {
				sh "./scripts/playbook.yaml"
			}
		}
		stage("Perform SAST Testing with Sonarqube"){
			steps {
				sh "./scripts/sonarqube.sh"
			}
		}
		stage("Build images with docker-compose"){
			steps{
				sh "./scripts/build.sh"
			}
		}
		stage("Push image to Nexus Repository 8082"){
			steps{
				sh "./scripts/push.sh"
			}
		}
		stage("Run containers with recently build images"){
			steps{
				sh "./scripts/run.sh"
			}
		}
	}
}
