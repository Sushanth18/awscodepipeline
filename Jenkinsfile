pipeline {
    agent any

    def tomcatWeb = 'C:\\sushanth_workspace\\software\\apache-tomcat-9.0.5\\webapps'
    def tomcatBin = 'C:\\sushanth_workspace\\software\\apache-tomcat-9.0.5\\bin'
    def tomcatStatus = ''
    stages {
        stage('SCM Checkout'){
            steps {
                git 'https://github.com/Sushanth18/awscodepipeline.git'
            }
        }
        stage('Compile-Package-create-war-file'){
            steps {
                def mvnHome = tool name: 'maven-3', type: 'maven'
                bat "mvn clean install"
            }
        }

        stage('Deploy to Tomcat'){
            steps {
                bat "copy target\\ROOT.war \"${tomcatWeb}\\ROOT.war\""
            }
        }
        stage('Start Tomcat Server') {
            steps {
                sleep(time: 5, unit: "SECONDS")
                bat "${tomcatBin}\\startup.bat"
                sleep(time: 100, unit: "SECONDS")
            }
        }
    }
}