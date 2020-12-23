pipeline {
  agent any
  stages {
    stage('Fluffy Build') {
      steps {
        sh 'bash ./jenkins/build.sh'
        archiveArtifacts 'target/*.jar'
      }
    }

    stage('Fluffy Test') {
      parallel {
        stage('Backend') {
          steps {
            sh 'chmod +x ./jenkins/test-backend.sh'
            junit 'target/surefire-reports/**/TEST*.xml'
          }
        }

        stage('Frontend') {
          steps {
            sh 'chmod +x ./jenkins/test-frontend.sh'
            junit 'target/test-results/**/TEST*.xml'
          }
        }

        stage('Performance') {
          steps {
            sh 'chmod +x ./jenkins/test-performance.sh'
          }
        }

        stage('Static') {
          steps {
            sh 'chmod +x ./jenkins/test-static.sh'
          }
        }

      }
    }

    stage('Fluffy Deploy') {
      steps {
        sh 'chmod +x \'./jenkins/deploy.sh staging\''
      }
    }

  }
}