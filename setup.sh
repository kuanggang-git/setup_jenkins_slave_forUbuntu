#!/bin/sh
#
cp jenkins-slave.conf /etc/default/jenkins-slave
cp jenkins-slave.init /etc/init.d/jenkins-slave
chmod 770 /etc/init.d/jenkins-slave
update-rc.d jenkins-slave defaults
systemctl enable jenkins-slave
systemctl restart jenkins-slave
chmod 644 monitor-jenkins
cp monitor-jenkins /etc/cron.d/
systemctl restart cron
