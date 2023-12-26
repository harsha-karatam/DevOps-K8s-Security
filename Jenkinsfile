pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Checkout your source code from version control system
                // Example: git checkout
                
                // Build your Maven project
                sh 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image using the Dockerfile
                script {
                    dockerImage = docker.build('adoptopenjdk/openjdk8:alpine-slim:dockerimage', '-f path/to/Dockerfile .')
                }
            }
        }

        stage('Deploy Container') {
            steps {
                // Run the Docker container using the built image
                script {
                    dockerImage.run('-d -p 8090:8080') // Example: Map container port 8080 to host port 8080
                }
            }
        }
    }

    post {
        success {
            // Clean up resources if necessary
            sh 'docker system prune -f'
        }
    }
}
