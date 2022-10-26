pipeline{
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('742f9082-3c5f-4170-85e6-decda4b606d9')
	}
    stages{
        stage("git pull"){
            steps{


                git branch: 'facture_branches',
                credentialsId: '60527384-563b-4df0-85b8-10954cf21222',
                url: 'https://github.com/nesrinehm1996/magasinBack.git'

                }

            }
          stage("MVN COMPILE"){
            steps{

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
         stage('Docker Build') {

			steps {
				sh 'docker build -t raed12345/tpAchatproject .'
			}
		}
        
       
		stage('Docker Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		} 
	    
	      
        
        
        	stage('Push') {

			steps {
				sh 'docker push raed12345/tpAchatproject'
			}
		}

              stage('Docker Compose'){
            steps{
                script{
                    sh 'docker-compose up -d'
                }
            }
       
        }

      
       


    }
}
