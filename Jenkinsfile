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
                
                sh 'sudo docker build -t public.ecr.aws/c9e0d4u8/httpds .'
                sh 'sudo docker tag httpds:latest public.ecr.aws/c9e0d4u8/httpds:latest'
                sh 'sudo docker push public.ecr.aws/c9e0d4u8/httpds '
               
            }
        }
      
        stage('kubectl deploy'){ 
       steps
        {
          sh 'sudo kubectl apply -f httpd.yaml'
          sh 'sudo kubectl get nodes'
          sh 'sudo kubectl get svc'
          sh 'sudo kubectl get ns'
          sh 'sudo kubectl get svc'
         
           
        }
      } 
    }
}
