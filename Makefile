# hello-world:
# 	@echo "Hello from make"
install: 
	@go mod vendor

all: 
	tes build

test: 	
	@echo "test"

run: 
	main.go
	@main.go

build:
	@go build -o  main.go

