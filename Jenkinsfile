pipeline {
    agent any
    
    stages {
        stage('deploy') {          
            steps {
                script {
                    sh 'ansible-playbook docker_deploy.yml'
                }
            }
        }
    }
}
