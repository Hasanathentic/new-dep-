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
                
                sh 'docker build -t 276448867345.dkr.ecr.ap-south-1.amazonaws.com/nginix .'
                sh 'sudo  docker tag nginix:latest 276448867345.dkr.ecr.ap-south-1.amazonaws.com/nginix:latest'
                sh 'docker push 276448867345.dkr.ecr.ap-south-1.amazonaws.com/nginix:latest '
               
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
