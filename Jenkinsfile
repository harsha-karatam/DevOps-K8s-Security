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
                        sh 'mvn sonar:sonar -Dsonar.host.url=http://10.0.1.74:9000 -Dsonar.token=sqp_cbc0770b7f57af73f65c4d168de370e562108017'
                    }
                    
                }
            }
        }
    }




