pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh 'bash ./jenkins/build.sh'
      }
    }

    stage('Buzz Test') {
      steps {
        sh '''chmod +x ./jenkins/test-all.sh
chmod +x ./jenkins/test-backend.sh
chmod +x ./jenkins/test-frontend.sh
chmod +x ./jenkins/test-static.sh
chmod +x ./jenkins/test-performance.sh
bash ./jenkins/test-all.sh'''
      }
    }

  }
}