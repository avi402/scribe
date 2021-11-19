pipeline {
    agent any
     tools {
        maven 'Mvn'
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
    

