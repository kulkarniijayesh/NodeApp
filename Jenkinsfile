pipeline {
  agent {
      docker { image 'node:12.10-alpine'}
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
