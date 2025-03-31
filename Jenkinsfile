pipeline
{
    agent any

    options {
        office365ConnectorWebhooks([
            webhook([
                name('Teams-O365'),
                url('https://lpnu.webhook.office.com/webhookb2/603b91a6-aa98-4803-9908-2efd3ebe2dc3@7631cd62-5187-4e15-8b8e-ef653e366e7a/JenkinsCI/c9feaeb5c0ac46fbb5e721b57d7cf565/a6c64572-9f27-481f-8779-ce4ae8f95568/V2cTMKQPKYUpfSqRdZ2vxyrxj7FP2qvayb2ZULjos5akg1'),
                startNotification(false),
                notifySuccess(true),
                notifyAborted(false),
                notifyNotBuilt(false),
                notifyUnstable(true),
                notifyFailure(true),
                notifyBackToNormal(true),
                notifyRepeatedFailure(false),
                timeout(30000)
            ])
        ])
    }

    stages
    {
        stage('Start')
        {
            steps {echo 'Start Lab_3'}
        }

        stage('Build nginx/custom')
        {
            steps {sh 'docker build -t nginx/custom:latest .'}
        }

        stage('Deploy nginx/custom')
        {
            steps {sh "docker run -d -p 80:80 nginx/custom:latest"}
        }

	stage('Finish')
	{
	    steps {echo 'Finish Lab_3'}
	}
    }
}

