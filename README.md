# Twitch Fun API
> Using the twitch api as an excuse to learn golang, docker & ECS stack...

## Pre-Requisits
  * aws cli
  * docker cli
  * jq

### Set-Up
* Install the pre-req's above
* In AWS Console, configure Route53, Load Balancer and ECS fargate cluster

## Scripts
### AWS Deployment
Build source, update/push to docker image, update service and start new task on ECS.
  ```
  ./scripts/ecs-update.sh
  ```
### Local Docker Run
  Build source, update docker image and run image locally on port 9000
  ```
  ./scripts/docker-run
  ```

### Local Quick Run
  Quick build and run source locally on port 443
  ```
  ./scripts/build.sh --test && ./dist/twitch-fun-api```
  ```