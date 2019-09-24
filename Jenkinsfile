pipeline {
  agent {
      docker { image '12.10-alpine'}
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
