FROM consol/centos-xfce-vnc:1.2.1

## Use root to install additional software
USER 0

# add the chrome and gecko drivers
#COPY chromedriver geckodriver /headless/

#COPY firefox /headless/firefox

# replace the existing vnc_startup script and add the new one
COPY start_drivers.sh vnc_startup.sh /dockerstartup/

## Install 7zip, gedit, wget, OpenJDK8
#RUN yum -y install p7zip p7zip-plugins gedit wget java-1.8.0-openjdk java-1.8.0-openjdk-devel \
#    && yum clean all

## switch back to default user
USER 1984
