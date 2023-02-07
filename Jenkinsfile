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

  }
}