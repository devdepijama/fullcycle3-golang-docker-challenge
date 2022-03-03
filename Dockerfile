# This is the builder stage used to compile the go source code
FROM golang:latest as builder

# Create the /app folder and move the golang source code into it
RUN mkdir /app
COPY main.go /app

# Build the previously copied source code (and generates the /app/main binary)
WORKDIR /app
RUN go build main.go

# This is the final output. Using scratch image as the bare minimal for running a binary
# And get the tiniest possible image
FROM scratch

# Copy the binary built on builder stage and run it
COPY --from=builder /app/main /
CMD ["/main"] 