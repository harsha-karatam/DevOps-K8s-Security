pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build('my-nginx-7fbf685c4d-9rnmg') // Replace with your image and tag
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
