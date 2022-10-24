pipeline {
environment {
registry = "salimberrima"
registryCredential = 'fd2b5514-02a3-465e-b20c-cee88537a313'
dockerImage = ''
}
agent any
stages {


stage("git pull"){
            steps{
              
                git branch: 'Fournisseur', 
                credentialsId: '73bd4b1f-f1e8-48a9-93b3-3c8a2d195c60', 
                url: 'https://github.com/nesrinehm1996/magasinBack.git'
                  
                }
                
            }
 stage('Building our image') {
steps{
            
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage ('pushing Image'){
            steps{
                script{
                    sh 'docker login -u "salim.berrima@esprit.tn" -p "citycity008" docker.io'
                    sh 'docker tag dock:latest salimberrima/dock:latest'
                    sh ' docker push salimberrima/dock:latest'
                }
            }
        }


stage('Cleaning up') {
steps{
sh "docker rmi $registry:$BUILD_NUMBER"
}
}
}
}
