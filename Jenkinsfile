pipeline {
    agent any
    stages {

        stage ('build'){
            steps{
                script{
                    sh 'docker build -t angular-app .'
                }
            }
        }
        stage ('deploy'){
            steps{
                script{
                    sh 'ansible-playbook -i hosts docker_deploy.yml'
                }
            }
        }
     
    }
}
