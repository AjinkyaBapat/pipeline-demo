pipeline {
  agent any
  stages {
    stage('Buzz Build') {
      steps {
        sh '''sh "chmod +x -R ${env.WORKSPACE}"
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