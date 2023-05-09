pipeline {
    agent any
    tools{
        maven 'apache-maven-3.6.3'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ashish429/Devops-']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t ashish429/Devops- .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   bat 'docker login -u ashishshukla03 -p "Ashish@123"'
                   bat 'docker push ashish429/Devops-'
                }
            }
        }
    }
    
}
