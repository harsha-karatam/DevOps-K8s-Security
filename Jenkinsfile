pipeline {
    agent any
    
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage ('SonarQube Analysis') {
            steps {
                    withSonarQubeEnv('sonar6') {
                        sh 'mvn sonar:sonar -Dsonar.host.url=http://10.0.1.74:9000 -Dsonar.login=admin -Dsonar.password=Harsha11@123'
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




