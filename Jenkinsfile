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
        sh 'bash ./jenkins/test-all.sh'
      }
    }

  }
}