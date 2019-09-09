FROM redis:5.0-alpine

USER liujian:staff

RUN set -ex \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata
    # && echo 1 > /proc/sys/vm/overcommit_memory \
    # && echo 2048 > /proc/sys/net/core/somaxconn
    # && echo never > /sys/kernel/mm/transparent_hugepage/enabled

CMD ["redis-server", "/usr/local/redis/redis.conf"]
