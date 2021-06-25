properties([pipelineTriggers([githubPush()])])
pipeline {
    agent { label 'master' }
      stages {
        stage("Clone Code") {
            steps {
                script {
                checkout scm
                }
            }
        }
        stage('Building Image') {
            steps{
                script {
                    sh "docker build . -t wahiddin/landingpage:${BUILD_NUMBER}"
                }
            }
        }
        stage('Push Image') {
            steps{
                script {
                    sh "docker push wahiddin/landingpage:${BUILD_NUMBER}"
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps{
                script {
                        sh "kubectl set image deployment/landing-page landing-page=wahiddin/landingpage:${BUILD_NUMBER}"
                }
            }
        }
     }
   }
