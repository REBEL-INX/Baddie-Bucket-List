pipeline{
    agent any
    tools {
        jfrog 'jfrog-repo-cli'
    }
    stages {
        stage ('Testing') {
            steps {
                jf '-v' 
                jf 'c show'
                jf 'rt ping'
                sh 'touch test-file'
                jf 'rt u test-file jfrog-repo-cli/'
                jf 'rt bp'
                jf 'rt dl jfrog-repo-cli/test-file'
            }
        } 
    }
}


