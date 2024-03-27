pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'bonjour'
      }
    }

    stage('Checkout1') {
      steps {
        checkout scm
      }
    }

    stage('test') {
      steps {
        dir(path: 'client') {
          sh 'npm install'
          sh 'npm test'
        }

      }
    }

  }
}