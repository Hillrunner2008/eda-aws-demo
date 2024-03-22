pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Provision EC2 with Terraform') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }

        stage('Build JAR with Maven') {
            steps {
                script {
                    sh 'mvn clean package'
                }
            }
        }

        stage('Deploy with Ansible') {
            steps {
                script {
                //    sh 'ansible-playbook -i ansible/inventory ansible/playbook.yml'
                      echo 'Ansible deployment step will go here'
                }
            }
        }
    }
}
