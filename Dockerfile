FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/rgielen/docker-data-minimal
RUN cp /go/src/github.com/rgielen/docker-data-minimal/Dockerfile /go
CMD docker build -t rgielen/docker-data-minimal /go

