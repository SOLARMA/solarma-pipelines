// From https://jenkins.io/blog/2017/02/07/declarative-maven-project/

pipeline {
  agent any
  tools {
      maven 'Maven 3.5.0'
      jdk 'jdk8'
  }
  stages {
      stage('Initialize') {
            steps {
                sh 'printenv JAVA_HOME'
                sh 'printenv M2_HOME'
                sh 'printenv PATH'
            }
      }
      stage('Checkout') {
          steps {
              echo 'TODO: Checkout'
              git(url: 'https://github.com/bitwiseman/junit-plugin')
          }
      }
      stage('Build') {
          steps {
              sh 'mvn -Dmaven.test.failure.ignore=true install'
          }
          post {
              success {
                  junit 'target/surefire-reports/**/*.xml' 
              }
          }
      }
  }
}
