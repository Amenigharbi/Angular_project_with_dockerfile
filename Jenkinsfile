pipeline {
    agent any
    
    stages {
        stage('deploy') {          
            steps {
                script {
                    sh 'ansible-playbook docker-deploy.yml'
                }
            }
        }
    }
}
