pipeline {
    agent any
   stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
       stage ('SonarQube Analyses') {
        steps {
            withSonarQubeEnv('sonar10.3') {
                sh 'mvn sonar:sonar -Dsonar.host.url=htto://http://10.0.1.74:9000 -Dsonar.login=admin -Dsonar.password=Harsha11@123'
            }
        }
       }
    }
}
