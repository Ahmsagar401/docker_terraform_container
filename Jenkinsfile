pipeline {
    agent { Dockerfile true }
    stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf docker_terraform_container'
                sh 'git clone https://github.com/Ahmsagar401/docker_repo.git'
            }
        }
        stage('Test') {
            steps {
                sh 'terraform --version'
            }
        }
        stage('
    }
}
