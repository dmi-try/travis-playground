pipeline {
  agent any
  stages {
    stage('Run test') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }
        
      }
      steps {
        sh '/test.sh'
      }
    }
  }
}