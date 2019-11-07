sh ./scripts/docker-build.sh
echo pushing changes to docker...
docker image tag twitch-fun-api:0.0.1 mdm373/twitch-fun-api:0.0.1
docker image push mdm373/twitch-fun-api:0.0.1