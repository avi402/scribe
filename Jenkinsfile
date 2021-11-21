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

     def server = Artifactory.server 'artrifactory' 
        def uploadSpec = """{
        "files": [
            {
                "pattern": "/var/lib/jenkins/workspace/Scribe/*.json",
                "target": "avi-repo/"
            }
        ]
    }"""
    server.upload(uploadSpec)
   }
}       
    }
}

  

