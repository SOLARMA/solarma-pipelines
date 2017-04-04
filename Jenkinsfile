#!groovy

// See https://github.com/volumio/Build

pipeline {
  agent any
  environment {
    TERM = 'linux'
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '2'))
  }
  stages {
    stage('Build custom-image:local') {
      agent { label 'docker' }
      steps {
        sh 'docker build -t volumio-buildenv:local docker/'
      }
    }
    stage('Build') {
      agent { 
        docker {
          image 'volumio-buildenv:local'
          args '-u 0:0'
        }
      }
      steps {
        git (url: 'https://github.com/volumio/Build')

        // sh "TERM=linux ./build.sh -b armv7 -d udooneo -v 2.0"
        sh "id && pwd && ./build.sh -b armv7 -d udooneo -v 2.0"
      }
    }
  }
}

// EOF
