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
        sh './jenkins/test-all.sh'
      }
    }

  }
}