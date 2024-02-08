git checkout master
git pull
echo "Stopping docker container ..."
docker stop init-api-py-ctnr
echo "... stopped"
sleep 5s

echo "Removing docker container ..."
docker rm -f init-api-py-ctnr
echo "... removed"
sleep 5s

echo "Building docker image ..."
docker build -t init-api-py-img --build-arg db_password=$DB_PASSWORD .

echo "Creating docker container ..."
docker run --name init-api-py-ctnr -dp 80:80 init-api-py-img
