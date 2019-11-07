region=${1:---test}
if [ $region == "--prod" ]
then
    echo "building for prod"
    go build -a -ldflags '-extldflags "-static"' -o ./dist/twitch-fun-api
else
    echo "building for test"
    go build -o ./dist/twitch-fun-api
fi