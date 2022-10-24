pipeline {
    agent any
    
    environment {
        registry = "nourhengh01/achat-project"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }

    stages {
        stage("git pull"){
            steps{
              
                git branch: 'stockBack', 
                credentialsId: '8ed45dcf-662c-4b7a-b716-2c5b1b4b111f', 
                url: 'https://github.com/nesrinehm1996/magasinBack.git'
                    
                }
                
            }
         stage("Building image") {
            steps {
            script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
            }
        }
        stage('Deploy our image') {
        steps{
        script {
        docker.withRegistry( '', registryCredential ) {
        dockerImage.push()
        }
        }
        }
        }
        
       
    }
} 
