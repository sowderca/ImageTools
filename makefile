windows:
	GOOS=windows GOARCH=amd64 CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ go build -ldflags="-H windowsgui" -o bin/ImageTools.exe

darwin:
	go build -o bin/ImageTools.app

linux:
	GOOS=linux GOARCH=amd64 go build -o bin/ImageTools

clean:
	@rm ./bin/*

