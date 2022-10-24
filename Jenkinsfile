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
 stage('Build docker image'){
            steps{
                script{
                    sh '-S root docker build -t dock .'
                }
            }
        
           }
stage('Deploy our image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push()
}
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
