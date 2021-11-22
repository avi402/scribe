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
             sh    '$(docker login scribe-docker.artifactory)'
             sh    'docker tag 1.0 artprod.mycompany/scibe-docker-local:latest'  
             sh     'docker push artprod.mycompany/scribe-docker-local:latest' 
     
        }  
      }
    }  
}
    
        

  

