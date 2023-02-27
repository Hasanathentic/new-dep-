pipeline {
    agent any

    stages {
         stage ('git clone') {
            steps {
        echo "code is building"
         git 'https://github.com/Hasanathentic/new-dep-.git'
            }
        }
        
        stage('build docker image') {
            steps {
                echo "build docker image"
                sh 'sudo aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 357631352941.dkr.ecr.ap-south-1.amazonaws.com'
                sh 'sudo docker build -t nginx .'
                sh 'sudo docker tag nginx:latest 357631352941.dkr.ecr.ap-south-1.amazonaws.com/nginx:latest'
                sh 'sudo docker push 357631352941.dkr.ecr.ap-south-1.amazonaws.com/nginx:latest'
               
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
