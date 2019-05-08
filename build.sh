docker build -t mamat08nurahmat/landing-page .
docker login -u mamat08nurahmat -p 'Nurahmat-19'
docker push mamat08nurahmat/landing-page
#docker run -d -p 80:80 --name landing-page mamat08nurahmat/landing-page
