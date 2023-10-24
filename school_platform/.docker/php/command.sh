BASE_DIRECTORY=${PWD}/school_platform

if [ ! -d "${BASE_DIRECTORY}/vendor" ]; then
    php composer install
fi

php artisan serve --host=0.0.0.0 --port=8080
