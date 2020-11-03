pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh '''sh "chmod +x ./jenkins/build.sh"
./jenkins/build.sh'''
      }
    }

    stage('Buzz Test') {
      steps {
        sh './jenkins/test-all.sh'
      }
    }

  }
}