pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        checkout scmGit(
            branches: [[name: 'main']],
            userRemoteConfigs: [[credentialsId:  'ghb',
                url: 'https://github.com/chrustkiran/mclms-auth-service.git']])
        def lastCommit = sh 'git log --format="%H" -n 1'
        sh 'docker build -t auth-service:${lastCommit}'
      }
    }

  }
}