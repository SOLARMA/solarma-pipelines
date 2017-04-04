// From https://jenkins.io/blog/2017/02/07/declarative-maven-project/

pipeline {
  agent any
  tools {
    maven 'Maven 3.3.9'
    jdk 'jdk8'
  }
  stages {
    stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
    stage('Build') {
      steps {
        echo 'This is a minimal pipeline.'
      }
    }
  }
}
