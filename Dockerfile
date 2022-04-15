FROM golang:1.18-alpine as build-stage
WORKDIR /go/src/example
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY dockerize.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

FROM scratch
COPY --from=build-stage /go/src/example/main /
CMD ["/main"]
