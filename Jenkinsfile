pipeline{
    agent any
    
    parameters{
        string(name: 'SPEC', defaultValue: "cypress/e2e/features/**", description: "descripcion")
        choice(name: 'BROWSER', choices: ["chrome", "edge", "firefox"], description: "test")
    }

    stages{
        stage('building'){
            steps{
                echo "Building the application"
            }
            
        }
        
        stage('Testing'){
            steps{
                sh "npm i"
                sh "npx cypress run --browser ${BROWSER} --spec ${SPEC}}"
            }
        }
        stage('Deploying'){
            steps{
                echo "deploying the application"
            }
            
        }
    }
}