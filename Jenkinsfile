pipeline {
    agent any
          
    stages {
        stage('clone') {          
            steps {
                checkout scm
            }
        }
        stage('SonarQube analysis') {
            environment {
                SCANNER_HOME = tool 'SonarQube Scanner'
            } 
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh "${SCANNER_HOME}/bin/sonar-scanner -X \
                          -Dsonar.projectKey=hello \
                          -Dsonar.sources=. \
                          -Dsonar.host.url=http://192.168.1.166:9000 \
                          -Dsonar.token=sqp_44b4537485f40e9b236e1541ebd78e9b28586080"
                }
            }
        }
        stage('Install Dependencies') {
            steps {
                script {
                    // Install Node.js dependencies using npm
                    sh 'npm install'
                }
            }
        }
        stage('Run Application') {
            steps {
                script {
                    // Run your Node.js application
                    sh 'npm start'
                }
            }
        }
    
    }

}
