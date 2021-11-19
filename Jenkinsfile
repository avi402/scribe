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
    }
 }

