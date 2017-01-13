FROM centos:7
MAINTAINER Yuya Asato <328@328.moe>

RUN yum install -y epel-release make wget unzip vim
RUN yum install -y python-pip rst2pdf fontconfig pandoc
RUN pip install pip --upgrade
RUN pip install sphinx
WORKDIR /root
RUN wget http://download.forest.impress.co.jp/pub/library/i/ipafont/10483/IPAfont00303.zip
RUN wget http://jaist.dl.sourceforge.jp/vlgothic/44715/VLGothic-20091202.zip
RUN unzip IPAfont00303.zip
RUN unzip VLGothic-20091202.zip
RUN cp IPAfont00303/*.ttf /usr/share/fonts/
RUN cp VLGothic/*.ttf /usr/share/fonts/

RUN mkdir /documents
WORKDIR /documents

CMD sleep 10000000000
