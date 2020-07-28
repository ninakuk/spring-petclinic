pipeline
{
    agent any

    stages
    {
        stage('Build Image')
        {
            steps
            { 
                bat "mvn -B -DskipTests clean package" 
                bat "copy .\\target\\*.jar  ."
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