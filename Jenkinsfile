pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
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
                sh 'docker build -t nourhengh01/achatProject:1.0.0 .'
            }
        }
        stage("Login dokerHub") {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW |sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage("Push") {
            steps {
                sh 'sudo docker push nourhengh01/achatProject:1.0.0'
            }
        }
       
    }
} 
