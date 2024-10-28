pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        sh '''sh \'git checkout main\'
sh \'git pull origin main\'
'''
      }
    }

  }
}