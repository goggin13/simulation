if docker ps | grep -o simulation-app-1 ; then
  docker exec -it simulation-app-1 bash
else
  echo "run ./docker/start_app.sh first"
fi
