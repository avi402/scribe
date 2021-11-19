pipeline {
    agent any
     tools {
        maven 'mvn'
        jdk 'jdk'
    }
    stages{
        stage ('build') {
            steps {
        echo "code is building"
         sh 'mvn clean'
         sh 'mvn install'
            }
        }
        

        stage ('Bulding docker docker image') {
            steps {
                echo "build docker image"
                sh 'docker build -t npm .'
            }
        }
 stage ('Deploy Artifacts') {

      
    def server = Artifactory.server 'art' 
        def uploadSpec = """{
        "files": [
            {
                "pattern": "/var/lib/jenkins/workspace/pipeline/target/*.jar",
                "target": "naz-repo/"
            }
        ]
    }"""
    server.upload(uploadSpec)
   }
}       
        

       
}

