pipeline {
    agent any
    tools {
         nodejs 'nodejs'
     }
     
    stages{
        stage ('build') {
            steps {
        echo "code is building"
         sh 'npm install' 
         sh 'tar czf Node.tar.gz node_modules index.js package.json  app.json'
         sh 'npm test'       
                
            }
        }
     stage ('Bulding docker docker image') {
            steps {
                echo "build docker image"
                sh 'docker build -t npm .'
                sh 'tar czf Node.tar.gz node_modules index.js package.json  app.json'
                sh 'npm test'
            }
        }
     stage ('Upload') {
            steps {
                rtUpload (
                    buildName: 'jfrog',
                    buildNumber: '34',
                    serverId: 'artifactory', // Obtain an Artifactory server instance, defined in Jenkins --> Manage:
                    spec: '''{
                              "files": [
                                 {
                                  "pattern": "var/lib/jenkins/workspace/Scribe/*.json",
                                  "target": "avi-repo/"
                                  
                                } 
                             ]
                        }'''    
                    )
            }
        }
  }
 }
        

  

