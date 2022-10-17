pipeline {
    agent any

    stages{
        stage("git pull"){
            steps{
              
                git branch: 'Fournisseur', 
                credentialsId: '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', 
                url: 'https://github.com/nesrinehm1996/magasinBack.git'
                    
                }
                
            }
            
        stage('MVN COMPILE') {
                steps {
                sh 'mvn clean compile'
                    
                }
                
            }
        stage('clean'){
                steps{
                sh 'mvn clean package'
                    
                }
                
            }  
        stage('MVN TEST') {
                steps {
                sh 'mvn clean test'
                    
                }
                
            }  
        stage('build'){
            steps{
                sh 'mvn install package'
            }
         }
         
        stage('SonarQube analysis') {

        steps{
        withSonarQubeEnv('sonarserver') { 
      
        sh "mvn sonar:sonar"
    }
        }
        }
        
  
        
            
            
}

}
