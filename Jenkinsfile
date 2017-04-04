// See https://github.com/volumio/Build

pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git (url: 'https://github.com/volumio/Build')
      }
    }
    stage('Build') {
      steps {
        // echo 'This is a minimal pipeline.'
        sh "./build.sh -b armv7 -d udooneo -v 2.0"
      }
    }
  }
}
