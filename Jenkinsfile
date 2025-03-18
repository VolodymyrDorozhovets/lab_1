pipeline
{
    agent any

    stages
    {
        stage('Start')
        {
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
    }
}

