FROM centos:latest
MAINTAINER coolrajnish.sharma@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/ocean-vibes.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ocean-vibes.zip
RUN cp -rvf templatemo_554_ocean_vibes/* .
RUN rm -rf __MACOSX templatemo_554_ocean_vibes ocean-vibes.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
