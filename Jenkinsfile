pipeline {
    agent any

    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/Hasanathentic/new-dep-.git'
            }
        }
        
        stage('build docker docker image') {
            steps {
                echo "build docker image"
                sh 'sudo aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/t9i9j9a8'
                sh 'sudo docker build -t nginx .'
                sh 'sudo docker tag nginx:latest public.ecr.aws/t9i9j9a8/nginx:1.22'
                sh 'sudo docker push public.ecr.aws/t9i9j9a8/nginx:1.22'
               
            }
        }
      
        stage('kubectl deploy'){ 
       steps
        {
          sh 'sudo kubectl apply -f nginx.yaml'
          sh 'sudo kubectl get nodes'
          sh 'sudo kubectl get svc'
          sh 'sudo kubectl get ns'
         
           
        }
      } 
    }
}
