pipeline {
    agent any
    stages {
        stage('SCM Checkout'){
            steps {
                git 'https://github.com/Sushanth18/awscodepipeline.git'
            }
        }
        stage('Compile-Package-create-war-file'){
            steps {
                bat "mvn clean install"
            }
        }

        stage('Deploy to Tomcat'){
            steps {
                bat "copy target\\ROOT.war \"C:\\sushanth_workspace\\software\\apache-tomcat-9.0.5\\webapps\\ROOT.war\""
            }
        }
        stage('Start Tomcat') {
            steps {
                sleep(time: 5, unit: "SECONDS")
                bat "C:\\sushanth_workspace\\software\\apache-tomcat-9.0.5\\bin\\startup.bat"
                sleep(time: 100, unit: "SECONDS")
            }
        }
    }
}

