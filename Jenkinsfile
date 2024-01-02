pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build('adoptopenjdk/openjdk8:alpine-slim') // Replace with your image and tag
        }
      }
    }

    stage('Deploy to Minikube') {
      steps {
        script {
          sh 'minikube docker-env' // Set Docker environment for Minikube
          sh 'kubectl apply -f deployment.yaml' // Apply Kubernetes manifests
        }
      }
    }
  }
}
