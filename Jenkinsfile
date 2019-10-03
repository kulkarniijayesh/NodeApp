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
                stash includes: '../NodeApp/**', name: 'app' 
            }
    
        } 
        stage('running application'){
            agent {
                label 'master'
            }
            steps{
                unstash 'app'
                sh 'ls'
                //sh 'docker rmi node-app-deploy-image && docker rm nodeapp'
                //sh 'docker -t node-app-deploy-image -f Dockerfile-deploy .'
                //sh 'docker run -d --name nodeapp -p 8082:8083 node-app-deploy-image'
                
                //sh 'pwd'
                //sh 'ls /etc/*-release'
                //sh 'cd NodeApp && mkdir lib && ./node_modules/.bin/babel server.js --out-dir ./lib/'
                //sh 'mv server.js server-dev.js' 
                //sh 'cd NodeApp && mv ./lib/server.js server.js'
                //sh 'cd NodeApp && pm2 start server.js'
                //sh 'pm2 list' 
                //sh 'echo "successfully started NodeApp on port 8082"'
            }
        }
        
      
  }
  post {
      always {
          cleanWs()
      }
  }
}
