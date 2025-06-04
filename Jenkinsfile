pipeline
{
    agent any

    stages
    {
        stage('Start')
        {
<<<<<<< HEAD
            steps {echo 'Lab_1: nginx/custom'}
        }

        stage('Build nginx/custom')
        {
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
