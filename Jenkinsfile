pipeline{
    agent any
    
    parameters{
        string(name: 'SPEC', defaultValue: "cypress/e2e/features/**" description: "descripcion")
        choice(name: 'BROWSER', choice["chrome", "edge", "firefox"], description: "test")
    }

    options{
        ansiColor('xterm')
    }

    stages{
        stage('Deploying'){
            echo "Building the application"
        }
    }
}