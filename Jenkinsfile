// See https://github.com/volumio/Build

pipeline {
  agent {
    dockerfile true
  }
  environment {
    TERM = 'linux'
  }
  stages {
    stage('Checkout') {
      steps {
        git (url: 'https://github.com/volumio/Build')
      }
    }
    stage('Build') {
      steps {
        // echo 'This is a minimal pipeline.'
        // sh "TERM=linux ./build.sh -b armv7 -d udooneo -v 2.0"
        sh "./build.sh -b armv7 -d udooneo -v 2.0"
      }
    }
  }
}

// EOF
