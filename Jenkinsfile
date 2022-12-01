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
                
                sh 'docker build -t public.ecr.aws/c9e0d4u8/nginix .'
                sh 'sudo docker tag public.ecr.aws/c9e0d4u8/nginix '
                sh 'sudo docker push public.ecr.aws/c9e0d4u8/nginix:latest '
               
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
