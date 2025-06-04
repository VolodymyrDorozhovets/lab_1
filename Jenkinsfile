pipeline
{
    agent any

    stages
    {
        stage('Start')
        {
<<<<<<< HEAD
<<<<<<< HEAD
            steps {echo 'Lab_1: nginx/custom'}
=======
            steps { echo 'Start Lab_3' }
>>>>>>> Lab_3
        }

        stage('Build nginx/custom')
        {
<<<<<<< HEAD
            steps {sh 'docker build -t nginx/custom:latest .'}
        }

        stage('Test nginx/custom')
        {
            steps {echo 'Pass'}
        }

        stage('Deploy nginx/custom')
        {
            steps {sh "docker run -d -p 80:80 nginx/custom:latest"}
        }

	stage('Finish')
	{
	    steps {echo 'Finish'}
	}
    }
}
=======
            steps { echo 'Lab_2: started by GitHub' }
        }

    stage('Image build')
    {
        steps
        {
            sh "docker build -t labs:latest ."
            sh "docker tag labs volodymyrdorozhovets/labs:latest"
            sh "docker tag labs volodymyrdorozhovets/labs:$BUILD_NUMBER"
        }
    }

    stage('Push to registry')
    {
        steps
        {
            withDockerRegistry([ credentialsId: "volodya_docker_access", url: "" ])
            {
                sh "docker push volodymyrdorozhovets/labs:latest"
                sh "docker push volodymyrdorozhovets/labs:$BUILD_NUMBER"
            }
        }
    }

    stage('Deploy image')
    {
        steps { sh "docker run -d -p 80:80 volodymyrdorozhovets/labs" }
    }

    stage('Finish')
    {
        steps { echo "Finish" }
    }

    }
}

>>>>>>> Lab_2
=======
            steps { sh 'docker build -t nginx/custom:latest .' }
        }

        stage('Deploy nginx/custom')
        {
            steps { sh 'docker run -d -p 80:80 nginx/custom:latest' }
        }

        stage('Finish')
        {
            steps { echo 'Finish Lab_3' }
        }
    }

    post
    {
        success
        {
            office365ConnectorSend(
                webhookUrl: 'https://lpnu.webhook.office.com/webhookb2/603b91a6-aa98-4803-9908-2efd3ebe2dc3@7631cd62-5187-4e15-8b8e-ef653e366e7a/JenkinsCI/c9feaeb5c0ac46fbb5e721b57d7cf565/a6c64572-9f27-481f-8779-ce4ae8f95568/V2cTMKQPKYUpfSqRdZ2vxyrxj7FP2qvayb2ZULjos5akg1',
                message: "✅ Build success!",
                status: "Success",
                color: "00FF00"
            )
        }

        failure
        {
            office365ConnectorSend(
                webhookUrl: 'https://lpnu.webhook.office.com/webhookb2/603b91a6-aa98-4803-9908-2efd3ebe2dc3@7631cd62-5187-4e15-8b8e-ef653e366e7a/JenkinsCI/c9feaeb5c0ac46fbb5e721b57d7cf565/a6c64572-9f27-481f-8779-ce4ae8f95568/V2cTMKQPKYUpfSqRdZ2vxyrxj7FP2qvayb2ZULjos5akg1',
                message: "❌ Build failed!",
                status: "Failure",
                color: "FF0000"
            )
        }
    }
}
>>>>>>> Lab_3
