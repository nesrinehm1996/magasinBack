pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        stage('Checkout GIT') {
            steps {
               echo 'Pulling...';
                git branch: 'stockBack', 
                url: 'https://github.com/nesrinehm1996/magasinBack'
                credentialsId: '8ed45dcf-662c-4b7a-b716-2c5b1b4b111f'; 
                
            }
        }
       
    }
} 
