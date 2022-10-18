pipeline {
    agent any

    stages{
        stage("git pull"){
            steps{
              
                git branch: 'reglementBack', 
                credentialsId: '119d27c5-ec0b-44fb-882f-0735a2890bd1', 
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
        stage('nexus deploy') {
        steps{
            sh'mvn deploy  '
           
        }

    }
        
           
            
}

}
