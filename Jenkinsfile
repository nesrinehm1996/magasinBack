pipeline {
    agent any

    stages {
        stage("git pull"){
            steps{
              
                git branch: 'stockBack', 
                credentialsId: '8ed45dcf-662c-4b7a-b716-2c5b1b4b111f', 
                url: 'https://github.com/nesrinehm1996/magasinBack.git'
                    
                }
                
            }
        stage('nexus deploy') {
        steps{
            sh'mvn deploy  '
           
        }

    }
       
   
       
    }
} 
