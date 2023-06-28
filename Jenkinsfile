pipeline {
    agent any

    tools {
  maven 'm1'
}
stages {
  stage('clone') {
    steps {
     git branch: 'main', credentialsId: 'sshkeyforgit', url: 'https://github.com/githubforram/demo2.git'
    }
  }

  stage('build') {
    steps {
     sh 'mvn clean install'
    }
  }

  stage('test') {
    steps {
      sh 'mvn test'
    }

    post {
      always {
            archiveArtifacts artifacts: 'target/**.jar', followSymlinks: false
            junit 'target/surefire-reports/*.*xml'
      }
    }
  }
  stage('run') {
    steps {
        sh 'javac -jar /home/adi/demo2/demo2/target/demo2-0.0.1-SNAPSHOT.jar'
    }
}
}
}
