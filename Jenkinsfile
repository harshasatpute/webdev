pipeline {

    agent any
    
         tools {

            maven '3.6.3'

     }

     stages {

        stage('Code Pull') {

            steps {

                   checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/harshasatpute/webdev.git']])         


            }

     }

 



        stage(' Dockerfile Build '){

                steps {

                         sh 'docker login -u "9764080588" -p "A1@2tpute" docker.io'

                         sh 'cd /var/lib/jenkins/workspace/project1'

                         sh 'docker image build -t $JOB_NAME:v1.$BUILD_ID .'

                         sh 'docker image tag $JOB_NAME:v1.$BUILD_ID 9764080588/project-sample:v1.$BUILD_ID'

                         sh 'docker image tag $JOB_NAME:v1.$BUILD_ID 9764080588/project-sample:latest'

                         sh 'docker image push 9764080588/project-sample:v1.$BUILD_ID'

                         sh 'docker image push 9764080588/project-sample:latest'

                        // sh 'docker image rmi $JOB_NAME:v1.$BUILD_ID 9764080588/project-sample:v1.$BUILD_ID 9764080588/project-sample:latest'
                         sh 'docker run -d --name myweb3 -p 8082:80 9764080588/project-sample'
 
                               }

                       }
         
               }

        } 

    

 

 
