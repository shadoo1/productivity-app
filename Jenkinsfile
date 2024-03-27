pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building the project...'
                // Ajoutez ici les étapes de construction de votre projet
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Ajoutez ici les étapes pour exécuter les tests de votre projet
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying the project...'
                // Ajoutez ici les étapes pour déployer votre projet
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline executed successfully!'
            // Ajoutez ici les étapes à exécuter en cas de réussite de la pipeline
        }
        
        failure {
            echo 'Pipeline failed!'
            // Ajoutez ici les étapes à exécuter en cas d'échec de la pipeline
        }
    }
}
