pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage("git pull"){
            steps{
              
                git branch: 'stockBack', 
                credentialsId: '8ed45dcf-662c-4b7a-b716-2c5b1b4b111f', 
                url: 'https://github.com/nesrinehm1996/magasinBack.git'
                    
                }
                
            }
        stage('MVN COMPILE') {
                steps {
                    sh 'mvn clean compile'
                    
                }
                
            }
        stage('MVN CLEAN'){
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
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('sonarqube-8.9.7') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh "mvn sonar:sonar"
    }
        }
        }
            
       
    }
} 
