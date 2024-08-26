pipeline {
    agent any
    
    stages {
        stage('deploy') {          
            steps {
                script {
                    sh 'ansible-playbook -i hosts docker_deploy.yml'
                }
            }
        }
    }
}
