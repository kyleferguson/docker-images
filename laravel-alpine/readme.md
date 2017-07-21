# Laravel alpine image

PHP 7.1 + nginx with the following:

- redis extension
- pdo for mysql and postgres
- mcrypt, mbstring, bcmath

## Configure Nginx

Add a server configuration file ending in `.conf` to `/etc/nginx/conf.d` to configure the web server to communicate with PHP FPM on localhost:9000.

For example, add `/etc/nginx/conf.d/default.conf` with the following contents (assuming your project is mounted at /var/www)
```
server {
    listen 80;

    root /var/www/public;
    index index.php index.html index.htm;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        try_files $uri /index.php =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass localhost:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}
```
