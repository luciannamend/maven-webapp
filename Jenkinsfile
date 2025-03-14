pipeline {
    agent any

    environment {
        MAVEN_HOME = "C:/Program Files/apache-maven-3.9.9" 
        JAVA_HOME = "C:/Program Files/Java/jdk-17" 
        DOCKER_IMAGE = "luciannamend/maven-webapp"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/luciannamend/maven-webapp.git' 
		        bat 'git pull origin master'
            }
        }

        stage('Build Maven Project') {
            steps {
                script {
                    echo "Building the Maven project..."
                    bat "mvn clean install"
                }
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([string(credentialsId: 'DOCKER_USER', variable: 'DOCKER_USER'), string(credentialsId: 'DOCKER_PWD', variable: 'DOCKER_PWD')]) {
    		    bat 'docker login -u $DOCKER_USER --password-stdin'
		}                
            }
        }

        stage('Docker Build Image') {
            steps {
                bat 'docker build -t $DOCKER_IMAGE .'
            }
        }


        stage('Docker Push Image') {
            steps {
                bat 'docker push $DOCKER_IMAGE'
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
