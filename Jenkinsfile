pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                git branch: 'main', credentialsId: 'git-credentials', url: 'https://github.com/harsha-karatam/DevOps-K8s-Security.git'
            }
        }
    }
}
