pipeline {
	agent any
	stages {
		stage("Check and Install Docker with Ansible"){
			steps {
				sh "./scripts/playbook.yaml"
			}
		}
		stage("Build images with docker-compose"){
			steps{
				sh "./scripts/build.sh"
			}
		}
		stage("Run containers with recently build images"){
			steps{
				sh "./scripts/run.sh"
			}
		}
	}
}
