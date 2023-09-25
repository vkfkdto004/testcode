// node {
//     def app

//     stage('Clone repository') {
      

//         checkout scm
//     }

//     stage('Build image') {
  
//        app = docker.build("kimwooseop/test")
//     }

//     stage('Test image') {
  

//         app.inside {
//             sh 'echo "Tests passed"'
//         }
//     }

//     stage('Push image') {
        
//         docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
//             app.push("${env.BUILD_NUMBER}")
//         }
//     }
    
//     stage('Trigger ManifestUpdate') {
//                 echo "triggering updatemanifestjob"
//                 build job: 'updatemanifest', parameters: [string(name: 'DOCKERTAG', value: env.BUILD_NUMBER)]
//         }
// }

pipeline {
    agent any

    stages {
        stage('준비') {
            steps {
                // 필요한 전처리 작업을 수행합니다.
            }
        }
        stage('Nginx 빌드') {
            steps {
                script {
                    // Nginx Docker 이미지를 빌드하는 명령어를 실행합니다.
                    sh 'docker build -t kimwooseop/test:latest .'
                }
            }
        }
        stage('테스트') {
            steps {
                // 필요한 테스트 작업을 수행합니다.
            }
        }
        stage('배포') {
            steps {
                // 필요한 배포 작업을 수행합니다.
            }
        }
    }

    post {
        success {
            echo '빌드 성공! 이미지를 성공적으로 생성하였습니다.'
        }
        failure {
            echo '빌드 실패. 문제가 발생했습니다.'
        }
    }
}

