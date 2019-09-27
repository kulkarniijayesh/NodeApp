pipeline {
  agent {
      docker { image 'node:alpine'}
  }
  stages {
      stage('Test Nodejs') {
          steps {
              sh 'node --version'
              sh 'uname -a'
              
          }
      }
  }
}
