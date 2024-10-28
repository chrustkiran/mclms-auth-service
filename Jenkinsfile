pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        sh 'git checkout main'
        sh  'git pull origin main'
      }
    }
  }
}