pipeline{
    agent {label 'Linux'}
    stages{
        stage("git checkout")
        {
            steps{
                    git url: 'https://github.com/tinkusaini13/docker-web-cicd.git', branch: 'main'
                 }
          }
        stage("create custom image using dockerfile")
        {
            steps{
                sh "docker build -t web ."
            }
        }
       
        stage("create docker container use webserver image")
        {
            steps{
                sh "docker run  --name=nginx web /bin/bash"
            }   
            }
         stage("verify web server running or not ")
        {
            steps{
                sh "docker images"
                sh "docker ps -a"
                sh "ip a"
            }   
            }
    }
}
