build:
	docker build -t lamp .

run:
	docker run -p "80:80" -it lamp /bin/bash