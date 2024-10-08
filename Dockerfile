FROM docker.io/library/nginx
#把设置好的nginx配置文件提前放在源码的目录里，copy到image里
COPY ./nginx/default.conf /etc/nginx/
#删除image里静态文件目录原本的内容，复制编译后的内容进去
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/shop /usr/share/nginx/html/