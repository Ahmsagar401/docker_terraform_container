pipeline {
    agent { dockerfile true }
    stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf docker_terraform_repo'
                sh 'git clone https://github.com/Ahmsagar401/docker_terraform_repo.git'
            }
        }
        stage('Test') {
            steps {
                sh 'terraform --version'
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }   
    }
}
