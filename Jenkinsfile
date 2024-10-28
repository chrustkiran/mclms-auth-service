pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        sh 'echo hello'
        sh 'echo world'
        sh 'git fetch'
        sh 'git branch'
        sh 'git checkout main'
        sh 'docker build -t auth .'
      }
    }
  }
}