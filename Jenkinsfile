pipeline {
    agent any

    stages {
        // Stage 1: Checkout the code
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        // Stage 2: Build the Maven project
        stage('Build') {
            steps {
                script {
                    // Run Maven build command
                    sh 'mvn clean install'
                }
            }
        }                       
    }

    post {
        always {
            // Clean up or post-build actions
            echo 'Pipeline finished!'
        }
        success {
            echo 'Build successful!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
