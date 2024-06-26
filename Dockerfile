FROM ccr.ccs.tencentyun.com/storezhang/alpine:3.20.0


LABEL author="storezhang<华寅>" \
email="storezhang@gmail.com" \
qq="160290688" \
wechat="storezhang" \
description="动态域名解析，支持阿里云、百度云、腾讯云、DNSPod等"


# 复制文件
COPY docker /


RUN set -ex \
    \
    \
    \
    && apk update \
    \
    # 增加执行权限，防止出现因为无执行权限导致在Docker内部无法运行的问题
    && chmod +x /etc/s6/ddns/* \
    \
    # 增加执行权限
    && chmod +x /opt/storezhang/ddns \
    \
    \
    \
    && rm -rf /var/cache/apk/*
