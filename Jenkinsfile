pipeline {
  agent any
  environment {
        HOME = '.'
        JENKINS_NODE_COOKIE = 'dontKillMe /usr/local/bin/pm2'
    }
  stages {
        stage('Installing dependancies'){
            agent {
                dockerfile
                {
                    filename 'Dockerfile-webapp'
                    args '-p 8082:5656'
                }
            }
            steps {
                sh 'npm install --unsafe-perm=true --allow-root'
                sh 'mkdir lib && ./node_modules/.bin/babel server.js --out-dir ./lib/'
                sh 'mv server.js server-dev.js' 
                sh 'mv ./lib/server.js server.js'
                stash name: 'app-node-modules', includes: 'node_modules/**'
                stash name: 'app', includes: 'server.js'
            }
    
        } 
        stage('running application'){
            agent {
                label 'ubuntu-slave-1'
            }
            steps{
                unstash 'app-node-modules'
                unstash 'app'
                sh 'echo "fetched build artifacts."'
                sh 'pwd'
                sh 'pm2 start server.js'
                sh 'echo "started app using pm2"'
                sh 'pm2 list'
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
}
