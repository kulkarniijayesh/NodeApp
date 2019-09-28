pipeline {
  agent {
      dockerfile
      { 
          filename 'Dockerfile-webapp'
      }
  }
  stages {
      stage('Pulling code') {
          steps {
              sh 'pwd'
              sh 'ls /etc/*-release'
              sh 'git clone https://github.com/kulkarniijayesh/NodeApp.git'
              
          }
        }
        stage('Installing dependancies'){
            steps {
                sh 'pwd'
                sh 'ls /etc/*-release'
                sh 'cd NodeApp && npm install'
            }
    
        } 
        stage('running application'){
            steps{
                sh 'pwd'
                sh 'ls /etc/*-release'
                sh 'npm start' 
            }
        }
        
      
  }
}
