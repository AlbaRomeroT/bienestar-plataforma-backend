pipeline {
    agent any
    tools {
        nodejs 'node' 
    }
    stages {
    
        stage('Preparation') { // for display purposes
            steps {
                git branch: 'develop', url: 'https://github.com/AlbaRomeroT/bienestar-plataforma-backend.git'
            }
     
        }
        stage('Build') {
             steps {
                 sh 'npm --version'
                 sh 'rm -rf node_modules'
                 sh 'npm install'
                 echo BRANCH_NAME
            }
            
        }
        stage('test') {
             steps {
                  sh 'npm run test'
                  
             }
            
        }
        stage("results"){
             steps {
                cucumber fileIncludePattern: 'report/cucumber_report.json', sortingMethod: 'ALPHABETICAL' 
            }
        }
    }
}
}
