FROM golang:1.11-alpine AS builder
RUN apk add --no-cache git
RUN go get github.com/mdm373/twitch-fun-api
WORKDIR /project
COPY ./scripts/build.sh ./scripts/
COPY ./main.go .
RUN CGO_ENABLED=0 GOOS=linux ./scripts/build.sh --prod
RUN ls ./dist
RUN pwd
EXPOSE 443
ENTRYPOINT ["/project/dist/twitch-fun-api"]