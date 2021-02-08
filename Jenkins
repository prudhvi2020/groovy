pipeline {
    agent any
    stages {
        stage('Submit Stack') {
            steps {
            sh "aws cloudformation create-stack --stack-name ecinstance10 --template-body file://s3.yaml --region 'us-west-2'"
              }
             }
            }
            }
