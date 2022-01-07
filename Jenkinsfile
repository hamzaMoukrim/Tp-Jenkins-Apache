pipeline{
   
    environment {
registry = "hamzamoukrim/tp-docker"
registryCredential = 'dockerhub'
dockerImage = ''
}
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
        
        stage('Deploy Image') {
                  steps{
                   script {
                   docker.withRegistry( '', registryCredential ) {
                   sh 'docker push hamzamoukrim/tp-docker'
                   }
                   }
                   }
}
     
    }
}
