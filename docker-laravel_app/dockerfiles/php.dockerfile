# 공식 이미지 기반으로 확장을 통해 커스텀 이미지 만들기
FROM php:fpm-alpine

# 웹 사이트를 제공하는 웹 서버의 표준적인 폴더
# 구축할 모든 컨테이너가 애플리케이션을 보관하는 내부 위치
WORKDIR /var/www/html

COPY src .

# 필요한 확장 프로그램
RUN docker-php-ext-install pdo pdo_mysql

# php의 디폴트 유저가 소스 코드 폴더에 쓰기 권한을 갖도록 설정
RUN chown -R www-data:www-data /var/www/html

# CMD? ENRYPOINT?
# 해당 레이어가 없다면 베이스 이미지의 디폴트 명령이 실행된다.