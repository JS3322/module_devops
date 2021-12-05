#!/bin/sh

// 경로에 test.war 확인
if [ -f /home/project/test.war ]; then
        // 배포 시작 문구
        echo "Start Deploy"
else
        // 파일 업로드 알람
        echo "You must upload admin.war at /home/onemall/ "
        //sh exit && error code 1 (success 0)
        exit 1
fi // if문 종료


// tc_cnt = 톰캣 수
#tc_cnt='ps -ef|grep tomcat|grep -v grep|grep -v vi|wc -l'
#if [ $tc_cnt -gt 0 ]; then
        // shutdown.sh = tomcat shut down
        shutdown.sh
        echo "Tomcat Server Shutdown"
#else
#       echo "Tomcat not Running"
#fi

// 기존의 test 프로젝트 폴더를 삭제
rm -rf /home/project/htdocs/test/
echo "remove origin test"

// 지금까지 root 권한으로 진행했고 test 프로젝트를 담당할 유저인 test로 폴더를 만들기
// su [계정] -c "명령"
// 한 번에 여러 개의 명렁을 내릴 땐 "명령; 명령"처럼 세미콜론으로 구분
su test -c "mkdir /home/project/htdocs/test"
echo "Make admin folder"


// *check
if [ -f /home/project/test.war ]; then
        // war파일을 tomcat이 바라보는 경로로 이동
        su test -c "mv /home/project/test.war /home/project/htdocs/test"
        // 압축풀기 
        su test -c "unzip /home/project/htdocs/test/test.war -d /home/project/htdocs/test"
        echo "unzip test.war"

        //root로 톰캣을 구동
        startup.sh
        echo "Tomcat Server Start"
else
        echo "file not exist"
fi