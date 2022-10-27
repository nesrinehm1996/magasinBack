pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS=credentials('DockerHub')
    }

    stages {
        stage("git pull"){
            steps{
              
                git branch: 'CategorieProduit', 
                credentialsId: '58958cd6-aceb-4fdd-af59-f536304559a6', 
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

        stage("Building image") {
            steps {
                sh 'docker build -t ghassenmoallaa/categorieproduit . '
            }
        }
        stage('Docker Login') {

			steps {
				sh 'echo $DockerHub_CREDENTIALS_PSW | docker login -u ghassenmoallaa -p ghassen1998 docker.io'
			}
		} 
        stage('Push') {

			steps {
				sh 'docker push ghassenmoallaa/categorieproduit'
			}
	}
		stage('deploy docker-compose'){
            steps{
                script{
                    sh 'docker-compose up -d'
                }
            }
       
        }   
   
	
       
    }

} 