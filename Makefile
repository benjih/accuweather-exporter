docker-build:
	docker buildx build --push  -t benjih/accuweather-exporter:`git rev-parse --short HEAD` . \
		--platform linux/arm/v7,linux/arm64/v8,linux/amd64

docker-push:
	docker tag benjih/accuweather:`git rev-parse --short HEAD` benjih/accuweather:latest
	docker push benjih/accuweather:`git rev-parse --short HEAD`
	docker push benjih/accuweather:latest

docker-release: docker-build docker-release
