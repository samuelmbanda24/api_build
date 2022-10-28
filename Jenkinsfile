pipeline {
    agent any
    stages {

        stage('login') {
            steps {
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 941066304506.dkr.ecr.us-east-1.amazonaws.com'
            }
        }

        stage('build') {
            steps {
                sh 'docker build -t jen_api_test .'
            }
        } 

      stage('tag') {
            steps {
                sh 'docker tag jen_api_test:latest 941066304506.dkr.ecr.us-east-1.amazonaws.com/jen_api_test:latest'
            }
        } 

         stage('push') {
            steps {
                sh 'docker push 941066304506.dkr.ecr.us-east-1.amazonaws.com/jen_api_test:latest'
            }
        }    
    }
}