# first build an image
docker build -t test .

# second run a container
docker container run -d -p 80:3000 test
