pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Client Tests') {
      steps {
        dir(path: 'client') {
          bat 'npm install'
          bat 'npm test'
        }

      }
    }

    stage('Server Tests') {
      steps {
        dir(path: 'server') {
          sh 'npm install'
          sh 'export MONGODB_URI=$MONGODB_URI'
          sh 'export TOKEN_KEY=$TOKEN_KEY'
          sh 'export EMAIL=$EMAIL'
          sh 'export PASSWORD=$PASSWORD'
          sh 'npm test'
        }

      }
    }

    stage('Build Images') {
      steps {
        sh 'docker build -t rakeshpotnuru/productivity-app:client-latest client'
        sh 'docker build -t rakeshpotnuru/productivity-app:server-latest server'
      }
    }

  }
  environment {
    MONGODB_URI = credentials('mongodb-uri')
    TOKEN_KEY = credentials('token-key')
    EMAIL = credentials('email')
    PASSWORD = credentials('password')
  }
}