FROM wordpress

RUN apt-get update && apt-get install -y libfreetype6-dev \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr --with-freetype-dir=/usr \
	&& docker-php-ext-install gd

RUN touch /usr/local/etc/php/conf.d/uploads.ini \
	&& echo "upload_max_filesize = 50M;" >> /usr/local/etc/php/conf.d/uploads.ini
