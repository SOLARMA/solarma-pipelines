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
          // Run container as root and with CAP_SYS_ADMIN capability
          // See http://stackoverflow.com/questions/36553617/how-do-i-mount-bind-inside-a-docker-container
          args '-u 0:0 --privileged --cap-add=SYS_ADMIN'
        }
      }
      steps {
        // git (url: 'https://github.com/volumio/Build')
        git (url: 'https://github.com/SOLARMA/volumio-Build')
        
        // DEBUG https://github.com/SOLARMA/solarma-pipelines/issues/1
        sh 'mount'
        sh 'which mount'
        sh 'ls -la $(which mount)'
        sh 'ls -la /dev'
        // sh 'ls -la build/armv7/root/dev'
        // sh 'mount /dev ${PWD}/build/armv7/root/dev -o bind && mount && umount ${PWD}/build/armv7/root/dev'

        // sh "TERM=linux ./build.sh -b armv7 -d udooneo -v 2.0"
        sh "id && pwd && bash -xe ./build.sh -b armv7 -d udooneo -v 2.0"
      }
    }
  }
}

// EOF
