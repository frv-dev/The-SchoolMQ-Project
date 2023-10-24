BASE_DIRECTORY=${PWD}/school_platform

if [ ! -d "${BASE_DIRECTORY}/vendor" ]; then
    php composer install
fi

php -S 0.0.0.0:8080
