rm tmp/pids/server.pid
docker-compose -f docker-compose.yml up
docker-compose rm -f
