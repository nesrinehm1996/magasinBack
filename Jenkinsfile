pipeline {
environment {
registry = "salimberrima"
registryCredential = 'fd2b5514-02a3-465e-b20c-cee88537a313'
dockerImage = ''
}
agent any
stages {


stage('Cloning our Git') {
steps {
git 'https://github.com/nesrinehm1996/magasinBack.git'
}
}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
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
