#!/bin/bash
echo Hello World

rm -rf /etc/yum.repos.d/*

echo '[test]

name=test

baseurl=http://classroom.example.com/content/rhel7.0/x86_64/dvd/

enable=1

gpgcheck=0'> /etc/yum.repos.d/rhel_dvd.repo

echo 当前yum可用软件数量

yum repolist | tail -1

yum -y install vsftpd &> /dev/null

systemctl restart vsftpd

systemctl enable vsftpd

echo 服务成功开启
