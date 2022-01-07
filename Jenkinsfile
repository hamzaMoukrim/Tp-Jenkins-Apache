pipeline{
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build') {
               steps {
               sh 'mvn package'
                    }
                 }
        stage('Build Docker Image') {
            steps {
                script {
                  sh 'docker build -t hamzamoukrim/Tp-Docker .'
                }
            }
        }
     
    }
}
