#! /binbash

echo "sonar-scanner \
  -Dsonar.projectKey=first-project \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://sonarqube:9000 \
  -Dsonar.login=13b6723b2827dbd4ef52210e3dbae2cefa10a1a7"
