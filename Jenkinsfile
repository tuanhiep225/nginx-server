pipeline {
  agent any
  stages {
    stage('Remove old images') {
      steps {
        sh 'docker container rm -f nginx-server || true'
        sh 'docker image rm -f nginx-server || true'
        sh 'docker rmi -f $(docker images --filter "dangling=true" -q --no-trunc) || true'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t nginx-server:latest .'
      }
    }
    stage('Run image') {
      steps {
      sh '''docker run \\
      --network=host \\
			--name nginx-server \\
			-d \\
			-p 80:80 \\
      -p 443:443 \\
			nginx-server'''
      
      }
    }
  }
}