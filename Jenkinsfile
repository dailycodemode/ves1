pipeline {
//   environment {
//     registry = "gustavoapolinario/docker-test"
//     registryCredential = ‘dockerhub’
//   } kubernetes-innovation/Docker-images/Ubi7_7.7 with Ansimble,Terraform,ChefInspec/
// https://git.version1.com/scm/scp/kubernetes-innovation.git
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://git.version1.com/scm/scp/kubernetes-innovation.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          sh 'echo --version'
        }
      }
    }
  }
}
