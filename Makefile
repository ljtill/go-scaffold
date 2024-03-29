build-darwin:
	@echo "=> Building for macOS (amd64)..."
	@GOOS=darwin GOARCH=amd64 \
		go build -a -trimpath -buildvcs=false -o ./bin/scaffold-darwin-amd64 ./
	@echo "=> Building for macOS (arm64)..."
	@GOOS=darwin GOARCH=arm64 \
		go build -a -trimpath -buildvcs=false -o ./bin/scaffold-darwin-arm64 ./

build-linux:
	@echo "=> Building for Linux (amd64)..."
	@GOOS=linux GOARCH=amd64 \
		go build -a -trimpath -buildvcs=false -o ./bin/scaffold-linux-amd64 ./
	@echo "=> Building for Linux (arm64)..."
	@GOOS=linux GOARCH=arm64 \
		go build -a -trimpath -buildvcs=false -o ./bin/scaffold-linux-arm64 ./

build-windows:
	@echo "=> Building for Windows (amd64)..."
	@GOOS=windows GOARCH=amd64 \
		go build -a -trimpath -buildvcs=false -o ./bin/scaffold-windows-amd64 ./
	@echo "=> Building for Windows (arm64)..."
	@GOOS=windows GOARCH=arm64 \
		go build -a -trimpath -buildvcs=false -o ./bin/scaffold-windows-arm64 ./

build:
	@echo "=> Building..."
	@mkdir -p ./bin
	@go build -a -trimpath -buildvcs=false -o ./bin/scaffold ./

release: clean build
	@echo "=> Releasing..."

run:
	@echo "=> Running..."
	@go run ./

test:
	@echo "=> Testing..."
	@go test ./

clean:
	@echo "=> Cleaning..."
	@rm -rf ./bin
