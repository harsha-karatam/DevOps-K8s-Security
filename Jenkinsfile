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
              sh 'mvn sonar:sonar -Dsonar.host.url=http://10.0.1.74:9000 -Dsonar.token=sqb_26ec25a827aeeda9c4b64f8e834fec63de636fa5'
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

