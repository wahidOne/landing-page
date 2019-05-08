docker rm -f testing
docker run -d --name testing -p 8080:80 -v "$PWD":/usr/local/apache2/htdocs/ mamat08nurahmat/landing-page
