if docker ps | grep -o simulation_app_1 ; then
  docker exec -it simulation_app_1 bash
else
  echo "run ./docker/start_app.sh first"
fi
