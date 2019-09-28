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
              sh 'chmod 777 NodeApp -R'
          }
        }
        stage('Installing dependancies'){
            steps {
                sh 'pwd'
                sh 'ls /etc/*-release'
                sh 'cd NodeApp && npm install --unsafe-perm=true --allow-root'
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
