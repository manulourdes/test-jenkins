pipeline{
    agent any
    
    parameters{
        string(name: 'SPEC', defaultValue: "cypress/e2e/features/**", description: "descripcion")
        choice(name: 'BROWSER', choices: ["chrome", "edge", "firefox"], description: "test")
    }

    options { 
        ansiColor('xterm') 
        }

    stages{
        stage('building'){
            steps{
                echo "Building the application"
            }
            
        }
        
        stage('Testing'){
            steps{
                bat "npm i"
                bat "npx cypress run NO_COLOR=1 --browser ${BROWSER} --spec ${SPEC}"
            }
        }
        stage('Deploying'){
            steps{
                echo "deploying the application"
            }
            
        }
    }
}