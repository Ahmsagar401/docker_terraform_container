pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'terraform --version'
            }
        }
        stage('Checkout') {
            steps {
                sh 'rm -rf docker_terraform_repo'
                sh 'git clone https://github.com/Ahmsagar401/docker_terraform_repo.git'
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
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
        stage('Terraform Destroy') {
            steps {
                script {
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }
}
