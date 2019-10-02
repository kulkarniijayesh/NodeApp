pipeline {
  agent {
      dockerfile
      { 
          filename 'Dockerfile-webapp'
          args '-p 8082:5656'
      }
  }
  environment {
        HOME = '.'
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
                sh 'cd NodeApp && mkdir lib && ./node_modules/.bin/babel server.js --out-dir ./lib/'
                sh 'mv server.js server-dev.js' 
                sh 'mv ./lib/server.js server.js'
                sh 'pm2 start server.js'
                sh 'pm2 list' 
            }
        }
        
      
  }
  post {
      always {
          cleanWs()
      }
  }
}
