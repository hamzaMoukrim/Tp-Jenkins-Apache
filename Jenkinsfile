pipeline{
   
    environment {
registry = "marone1822/tp-docker"
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
                  sh 'docker build -t marone1822/tp-docker .'
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
