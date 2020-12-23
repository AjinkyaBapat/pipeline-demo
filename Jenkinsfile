pipeline {
  agent any
  stages {
    stage('Fluffy Build') {
      steps {
        sh 'bash ./jenkins/build.sh'
      }
    }

    stage('Fluffy Test') {
      steps {
        sh 'chmod +x ./jenkins/test-all.sh'
      }
    }

    stage('Fluffy Deploy') {
      steps {
        sh 'chmod +x ./jenkins/deploy.sh staging'
      }
    }

  }
}