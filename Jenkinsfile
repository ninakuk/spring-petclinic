pipeline
{
    agent any

    stages
    {
        stage('Clone from git')
        {
            git 'https://github.com/ninakuk/spring-petclinic.git'
        }

        stage('Build Image')
        {
            steps
            {   //bat 'mvn clean package'
                bat "docker build . -t petclinicwebapp:${env.BUILD_ID}"
            }
        }

        stage('Run Container')
        {
            bat "docker run -p 8282:8080 petclinicwebapp:${env.BUILD_ID}"
        }

    }
}