FROM consol/centos-xfce-vnc:1.2.1

## Use root to install additional software
USER 0

COPY chromedriver geckodriver /headless

## Install 7zip, gedit, wget, OpenJDK8
#RUN yum -y install p7zip p7zip-plugins gedit wget java-1.8.0-openjdk java-1.8.0-openjdk-devel \
#    && yum clean all

## switch back to default user
USER 1984
