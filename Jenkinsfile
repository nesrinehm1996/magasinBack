pipeline{
    agent any
    stages{
      
       stage('Hello') {
                steps {
                   echo 'Hello World'
                    
                }
                
            }   
        stage("git pull"){
            steps{
              
                git branch: 'stockBack', 
                credentialsId: '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', 
                url: 'https://github.com/nesrinehm1996/magasinBack.git'
                    
                }
                
            }
            stage('Testing maven') {
                steps {
                    sh 'mvn -version'
                    
                }
                
            }
}
