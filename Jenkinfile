pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                sh 'javac q1.java'
            }
        }

        stage('Execute') {
            steps {
                sh 'java q1'
            }
        }
    }

    post {
        always {
            sh 'rm -f *.class'
        }
    }
}
