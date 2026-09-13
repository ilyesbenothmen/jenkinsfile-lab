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
    }
}
