git checkout master
git pull
docker stop init-api-py-ctnr
docker build -t init-api-py-img .
docker run --name init-api-py-ctnr -dp 80:80 init-api-py-img
