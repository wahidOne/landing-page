docker rm -f landing-page
docker build -t . mamat08nurahmat/landing-page
docker run -d -p 80:80 --name landing-page mamat08nurahmat/landing-page
