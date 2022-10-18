pipeline {
    agent any

    stages{
        stage("git pull"){
            steps{
              
                git branch: 'Fournisseur', 
                credentialsId: '14', 
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
         
    stage("SonarQube analysis"){
            steps{
            withSonarQubeEnv('sonarqube-8.9.7') {  
                sh 'mvn sonar:sonar'
                sh 'mvn test -Dmaven.test.failure.ignore=true'
                             
                }
             }
                
            }
     
     
     
     
}
  }
