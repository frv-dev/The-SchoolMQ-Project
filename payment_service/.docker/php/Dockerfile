FROM php:8.2-alpine

ARG user
ARG uid
ARG gid

# Get latest composer version
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user
RUN addgroup -S -g $gid $user
RUN adduser -S -D -u $uid -s /sbin/nologin -h /home/$user $user www-data,root
RUN chown -R $user:$user /home/$user

# Add composer directory
RUN mkdir -p /home/$user/.composer
