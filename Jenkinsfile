pipeline {
    agent any

    stages{
        stage("git pull"){
            steps{
              
                git branch: ' reglementBack', 
                credentialsId: '77438253-b979-4be6-89a3-8924755556c7', 
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
