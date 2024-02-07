git checkout master
git pull
docker build -t init-api-py .
docker run -dp 80:80 init-api-py