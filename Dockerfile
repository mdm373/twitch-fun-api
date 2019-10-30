FROM golang:1.11-alpine AS builder
RUN apk add --no-cache git
RUN go get github.com/mdm373/twitch-fun-api
WORKDIR /project
RUN CGO_ENABLED=0 GOOS=linux ./scripts/build --prod

FROM scratch
ENTRYPOINT ["dist/twitch-fun-api"]
