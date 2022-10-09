# 간단하기에 컴포즈 파일에서 설정할 수 있으나 도커파일에 작성하는 것이 더욱 명확하다.
FROM composer:latest

WORKDIR /var/www/html

# --ignore-platform-reqs -> 일부 종속성 누락에도 무시하고 실행
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]