pipeline {
  agent {
      dockerfile
      { 
          label 'webapp-container'
          filename 'Dockerfile-webapp'
      }
  }
  stages {
      stage('Pulling code') {
          agent { label 'webapp-container' }
          steps {
              sh 'pwd'
              sh 'git clone https://github.com/kulkarniijayesh/NodeApp.git'
              
          }
        }
        stage('Installing dependancies'){
            agent { label 'webapp-container' }
            steps {
                sh 'pwd'
                sh 'npm install'
            }
    
        }
        stage('running application'){
            agent { label 'webapp-container' }
            steps{
                sh 'pwd'
                sh 'npm start' 
            }
        }
        
      
  }
}
