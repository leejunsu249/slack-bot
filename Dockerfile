FROM golang:1.19.5 

WORKDIR /go/src/app 
COPY go.mod go.sum main.go .
RUN go mod download

ENV COLOR=${COLOR}
ENV URL=${URL}
ENV RESULT=${RESULT}
ENV NUMBER=${NUMBER}
ENV JOBNAME=${JOBNAME}


ENTRYPOINT ["/app"]
