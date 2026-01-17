tidy:
	go mod tidy
	hugo mod tidy

refresh:
	rm -rf public resources go.sum .hugo_build.lock themes
	hugo mod clean
	make tidy
	hugo mod get
