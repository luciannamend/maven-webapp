pipeline {
    agent any

    environment {
        MAVEN_HOME = "C:\Program Files\apache-maven-3.9.9" 
        JAVA_HOME = "C:\Program Files\Java" 
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/luciannamend/maven-webapp.git' 
            }
        }

        stage('Build') {
            steps {
                script {
                    echo "Building the Maven project..."
                    bat "mvn clean install"
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    echo "Running tests..."
                    bat "mvn test"
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    echo "Packaging the application..."
                    bat "mvn package"
                }
            }
        }        
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
