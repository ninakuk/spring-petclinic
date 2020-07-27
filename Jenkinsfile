pipeline
{
    agent any

    stages
    {
        /*stage('Clone from git')
        {
            git 'https://github.com/ninakuk/spring-petclinic.git'
        }*/

        stage('Build Image')
        {
            steps
            {   
                bat "docker build . -t petclinicwebapp:${env.BUILD_ID}"
            }
        }

        stage('Run Container')
        {
            steps
            {
            bat "docker run -p 8383:8080 petclinicwebapp:${env.BUILD_ID}"
            }
        }

    }
}