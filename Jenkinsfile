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
            }
        }
     stage ('Bulding docker docker image') {
            steps {
                echo "build docker image"
                sh 'docker build -t npm .'
            }
        }
     stage ('Deploy Artifacts') {
        steps{
               rtUpload (
    serverId: 'artifactory',
    spec: '''{
          "files": [
            {
              "pattern": "var/lib/jenkins/workspace/Scribe/*.json",
              "target": "avi-repo/"
            }
         ]
    }''',
 
    // Optional - Associate the uploaded files with the following custom build name and build number,
    // as build artifacts.
    // If not set, the files will be associated with the default build name and build number (i.e the
    // the Jenkins job name and number).
    buildName: 'artifactsupload',
    buildNumber: '27',
   // Optional - Only if this build is associated with a project in Artifactory, set the project key as follows.
    project: 'avi-repo'                 
    
)   
       }
   }
  }
 }
        

  

