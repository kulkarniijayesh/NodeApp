pipeline {
  agent {
      docker { image 'node:alpine'}
  }
  stages {
      stage('Pulling code') {
          steps {
              sh 'git pull https://github.com/kulkarniijayesh/NodeApp.git'
              
          }
          stage('Installing dependancies'){
            steps {
              sh 'npm install'
            }
        
          }
        stage('running application'){
          steps{
            sh 'npm run' 
          }
        }
        
      }
  }
}
