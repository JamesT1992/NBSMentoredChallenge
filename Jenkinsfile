pipeline {
	agent any
	stages {
		stage("Check Dockers installed/Install Docker with Ansible"){
			steps {
				sh "./scripts/playbook.yaml"
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
