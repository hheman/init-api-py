git checkout master
git pull

echo "Rebuilding ..."
docker-compose down
sleep 5s
docker-compose build
docker-compose up -d
echo "... done"
