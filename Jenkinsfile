pipeline {
  agent any
  stages {
    stage('Pull Code ') {
      steps {
        git(url: 'https://github.com/itzrahulyadav/docker-intro-app.git', branch: 'main')
      }
    }

    stage('List all the files') {
      steps {
        sh 'ls -ltr'
      }
    }

    stage('create a docker image') {
      steps {
        sh 'docker build -t simple_app .'
      }
    }

    stage('Run docker container') {
      steps {
        sh 'docker run -d -p 80:80 simple_app'
      }
    }

  }
}