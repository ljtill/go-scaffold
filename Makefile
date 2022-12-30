
build:
	@echo "=> Building..."
	@mkdir -p ./bin
	@go build -a -trimpath -buildvcs=false -o ./bin/scaffold ./src

release: clean build
	@echo "=> Releasing..."

run:
	@echo "=> Running..."
	@go run src/main.go

test:
	@echo "=> Testing..."
	@go test src/main_test.go

clean:
	@echo "=> Cleaning..."
	@rm -rf ./bin
