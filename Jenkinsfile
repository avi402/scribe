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
        stage( 'upload artifacts to artifactory') {
            steps {
              echo "deploy package to artifactory"             
             sh    '$(docker login scribe-docker.artifactory --password-stdin)'
             sh    'docker tag 1.0 scribe-docker.artifactory/scibe-docker-local:latest'  
             sh     'docker push scribe-docker.artifactory/scribe-docker-local:latest' 
     
        }  
      }
    }  
}
    
        

  

