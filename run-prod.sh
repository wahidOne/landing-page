docker rm -f production
docker run -d --name production -p 80:80 mamat08nurahmat/landing-page
