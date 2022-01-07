pipeline{
    agent any
    stages {
        stage('Build') {
               steps {
               sh 'mvn package'
                    }
                 }
        stage('Build Docker Image') {
            steps {
                script {
                  sh 'docker build -t hamzamoukrim/tp-docker .'
                }
            }
        }
     
    }
}
