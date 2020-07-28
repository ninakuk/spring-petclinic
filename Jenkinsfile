pipeline
{
    agent
    {   
        node
        {
            label 'novi-path'
            customWorkspace 'C:\Users\Nina Kukuljan\Desktop\spring-petclinic'
        }
    }

    stages
    {
        /*stage('Clone from git')
        {
            steps
            {
            git 'https://github.com/ninakuk/spring-petclinic.git'
            }
        }*/


        stage('Build Image')
        {
            steps
            {   
                /*bat "mvn clean package"*/
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