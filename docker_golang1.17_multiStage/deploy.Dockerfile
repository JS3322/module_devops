#application compilation container
# FROM golang:1.14.1-alpine3.11 as builder
FROM golang:1.17-alpine3.15 as builder
COPY ./main.go ./
RUN go build -o /go-app ./main.go

#executable container with compile files
FROM alpine:3.15
COPY --from=builder /go-app .
ENTRYPOINT ["./go-app"]