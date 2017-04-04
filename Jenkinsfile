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
        sh 'docker build -t custom-image:local .'
      }
    }
    stage('Checkout') {
      steps {
        git (url: 'https://github.com/volumio/Build')
      }
    }
    stage('Build') {
      agent { 
        docker {
          image 'custom-image:local'
          args '-u 0:0'
        }
      }
      steps {
        // echo 'This is a minimal pipeline.'
        // sh "TERM=linux ./build.sh -b armv7 -d udooneo -v 2.0"
        sh "id && pwd && ./build.sh -b armv7 -d udooneo -v 2.0"
      }
    }
  }
}

// EOF
