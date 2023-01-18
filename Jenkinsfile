pipeline {
    agent any

    stages{
        stage("create zip file"){
            steps{
            zip middlewasreScript$-{BUILD_NUMBER}.zip *  --exclude Jenkinsfile README.md 
            }
        }
        
     }
}
    