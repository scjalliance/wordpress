FROM wordpress

RUN apt-get update && apt-get install -y libfreetype6-dev \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr --with-freetype-dir=/usr \
	&& docker-php-ext-install gd
