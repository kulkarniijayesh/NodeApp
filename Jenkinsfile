pipeline {
  agent {
      docker { image 'node:alpine'}
  }
  stages {
      stage('Pulling code') {
          steps {
              sh 'pwd'
              sh 'git clone https://github.com/kulkarniijayesh/NodeApp.git'
              
          }
        }
        stage('Installing dependancies'){
            steps {
                sh 'pwd'
                sh 'npm install'
            }
    
        }
        stage('running application'){
            steps{
                sh 'pwd'
                sh 'npm start' 
            }
        }
        
      
  }
}
