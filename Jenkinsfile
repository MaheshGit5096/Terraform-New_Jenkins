pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MaheshGit5096/Terraform-New_Jenkins.git'
            }
        }

        stage('Terraform init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage('Apply / Destroy') {
            steps {
                script {
                    sh 'terraform apply --auto-approve'
                    
                }
            }
        }
    }
}

