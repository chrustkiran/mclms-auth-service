docker run -d `
  --name jenkins `
  -p 8080:8080 `
  -p 50000:50000 `
  -e DOCKER_HOST=tcp://host.docker.internal:2375 `
  -v jenkins_home:/var/jenkins_home `
  jenkins/jenkins:lts-jdk17
