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
                echo "buid docker image"
                sh 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 276448867345.dkr.ecr.ap-south-1.amazonaws.com'
                sh 'sudo docker build -t 276448867345.dkr.ecr.ap-south-1.amazonaws.com/nginix .'
                sh 'sudo docker tag 276448867345.dkr.ecr.region.amazonaws.com/nginx:latest'
                sh 'sudo docker push 276448867345.dkr.ecr.ap-south-1.amazonaws.com/nginx:2 '
               
            }
        }
      
        stage('kubectl deploy'){ 
       steps
        {
          sh 'sudo kubectl apply -f nginx.yaml'
          sh 'sudo kubectl get nodes'
          sh 'sudo kubectl get svc'
          sh 'sudo kubectl get ns'
          sh 'sudo kubectl get svc'
         
           
        }
      } 
    }
}
