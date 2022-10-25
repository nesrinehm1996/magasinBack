pipeline { 
     agent any
  
   stages{
        stage("git pull") 
        { 
            steps{ 
               git branch: 'products', 
               credentialsId: 'DhouhaAR', 
               url: 'https://github.com/chedlynacef/magasin-backend.git'
                 
            
        }
        
        }
       
        stage('MVN CLEAN') { 
            steps { 
               sh' mvn clean install -DskipTests' 
                
            }
        }
      /*  stage('MVN COMPILE') { 
                steps { 
                
                 sh 'mvn compile'
                }
                }
            
          
           stage('Build'){
            steps{
                sh 'mvn package -DskipTests'
            }
         }
 
        stage('MVN TEST') {
            steps {
                sh 'mvn test -DskipTests'
            }

        }
        
        stage('Test & Jacoco Static Analysis') {
            steps {
            junit 'src/reports/*.xml'
            jacoco()
            }
        }
        
                  stage ('MVN SONARQUBE') { 
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('sonarqube.8.9.7') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh "mvn sonar:sonar"
    }
        }
        }
        */
       

        
        
        stage('nexus deploy') {
        steps{
            sh'mvn deploy -DskipTests '
           
        }
        }
         stage('Builidng image') {
        steps{
            sh 'docker build -t tpachatproject . '
           
        }
        }
        
        stage('pushing Image'){
        steps{
             script{
          sh 'docker login -u "dhouha20" -p "94257005Dhouha" docker.io'
          sh 'docker tag tpachatproject:latest dhouha20/tpachatproject:latest'
           sh ' docker push dhouha20/tpachatproject:latest'
}
}
}
       stage('deploy image') {
        steps{
            sh 'docker-compose up -d'
           
        }
        }
        
        
        
         }
         /* post {
        always {
            junit 'src/reports/*.xml'
        }
    }*/
}
   
