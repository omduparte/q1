pipeline {
    agent any

    stages {	
  

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
