##### Stage 1 #####
FROM golang:alpine AS bulider

WORKDIR /go/src/app
COPY main.go .

RUN go mod init
RUN go build -o webserver .


##### Stage 2 #####
FROM scratch

WORKDIR /app
COPY --from=bulider /go/src/app/ /app/

CMD ["./webserver"]