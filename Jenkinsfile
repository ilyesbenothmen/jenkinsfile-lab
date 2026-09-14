pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'gcc -Wall -Wextra -O2 src/main.c -o application'
            }
        }

        stage('Test') {
            steps {
                sh './tests/test.sh'
            }
        }
        
/*        stage('Python Syntax Check') {
 	   steps {
               sh 'python3 -m py_compile python/calculator.py'
	    }
	}*/

        stage('SonarQube Analysis') {
            steps {
                script {
                    def scannerHome = tool 'SonarScanner'

                    withSonarQubeEnv('SonarQube') {
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }
        
        stage('Quality Gate') {
            steps {
                timeout(time: 5, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
    }
}
