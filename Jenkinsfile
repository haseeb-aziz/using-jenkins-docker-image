node
{
    def app

    stage('Clone repository') {

        checkout scm
    }

    stage('Build image') {

        def imageExists = sh(script: "docker images -a webapp-image", returnStdout: true)
        sh 'docker rmi webapp-image'
        app = docker.build("webapp-image")
      
    }
    
    stage('Run Container') {
   
//         script {
         
//     if(imageExists){
//         // build the image
//     }
// }
        
        
        // sh '''if [ $( docker ps -a | grep html_docker_jenkins_ci_cd ) ]; then
        //         docker stop html_docker_jenkins_ci_cd
        //         docker rm html_docker_jenkins_ci_cd
        //         docker run --name html_docker_jenkins_ci_cd -p 8008:80 -d html-docker-jenkins-ci-cd
        //         else
        //         docker run --name html_docker_jenkins_ci_cd -p 8008:80 -d html-docker-jenkins-ci-cd
        ///       fi'''
        def containerExists = sh(script: "docker ps -a -f name=webapp", returnStdout: true) 
        


        if(containerExists){
            
    
            
        
        
//         if[docker stop webapp || true && docker rm webapp || true]
        
//            //sh 'docker rmi -f html-docker-jenkins-ci-cd'
//            sh 'docker rm -f webapp &>/dev/null && echo 'Removed old container''
             
            sh 'docker stop webapp'
            sh 'docker rm -f webapp'
            //sh 'docker rmi webapp-image'
            sh 'docker run --name webapp -p 8008:80 -d html-docker-jenkins-ci-cd'
            
            //sh 'docker stop html_docker_jenkins_ci_cd'
            //sh 'docker rm html_docker_jenkins_ci_cd'
        }

        else
            sh 'docker run --name webapp -p 8008:80 -d webapp-image'   
    }
  
}
