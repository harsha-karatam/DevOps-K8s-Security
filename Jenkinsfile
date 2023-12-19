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
            withSonarQubeEnv('sonar6') {
              sh 'mvn sonar:sonar -Dsonar.host.url=http://10.0.1.74:9000 -Dsonar.token=sqa_1461c37082c8f48ea454c7af20f5e2808685f773'
            }
            timeout(time: 2, unit: 'MINUTES') {    
                script {
                  waitForQualityGate abortPipeline: true
                }
          }
        }
       }
    }
}

