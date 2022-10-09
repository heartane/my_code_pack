FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

# 파일명이 default.conf가 되어야 하므로 복사 후 변경해준다.
RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .

# 바인드마운트만 설정했던 구성과 소스코드를 스냅샷으로 이미지 내에 COPY
# 이를 통해 개발 기간뿐만 아니라 배포에도 문제가 없도록 만든다.