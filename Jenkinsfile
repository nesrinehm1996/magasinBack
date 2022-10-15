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
                credentialsId: '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'; 
                
            }
        }
       
    }
} 
