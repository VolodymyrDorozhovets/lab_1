pipeline {
    agent any

    environment {
        webhookUrl = sh(script: 'hcp vault-secrets secrets open teams_microsoft_webhook | grep "Value:" | awk \'{print $2}\'', returnStdout: true).trim()
    }

    stages {
        stage('Start') {
            steps {
                echo 'Start Lab_7'
            }
        }

        stage('Build nginx/custom') {
            steps {
                sh 'docker build -t nginx/custom:latest .'
            }
        }

        stage('Deploy nginx/custom') {
            steps {
                sh 'docker run -d -p 80:80 nginx/custom:latest'
            }
        }

        stage('Finish') {
            steps {
                echo 'Finish Lab_3'
            }
        }
        
        stage('Verify webhookUrl') {
            steps {
                echo "Webhook URL: ${webhookUrl}"  // Виведення значення webhookUrl
            }
        }
    }

    post {
        success {
            office365ConnectorSend(
                webhookUrl: webhookUrl,
                message: "✅ Build success!",
                status: "Success",
                color: "00FF00"
            )
        }

        failure {
            office365ConnectorSend(
                webhookUrl: webhookUrl,
                message: "❌ Build failed!",
                status: "Failure",
                color: "FF0000"
            )
        }
    }
}

