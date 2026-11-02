pipeline {
    agent any

    stages {
	

	 stage('Check java version ') {
            steps {
               sh 'whoami' 
            }
        }	
  
          stage('Compile') {
            steps {
                sh 'hostnamectl'
            }
        }
	
	 stage('RUN ') {
            steps {
                sh 'java Hello'
            }
        }

        stage('Checkout') {
            steps {
                checkout scm
            }
        }
	
	stage('Build docker image'){
	    steps {
		sh 'docker build -t java-hello .'
	    }
	
	}

	stage('Run docker conainer'){

	    steps {
		sh 'docker run --rm java-hello'
	    }

	}

	

    }

    post {
        always {
            sh 'rm -f *.class'
        }
    }
}
