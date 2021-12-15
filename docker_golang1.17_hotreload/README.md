# build
docker build --tag docker_golang1.17_hotreload .

# run
docker run -p 5000:5000 -v $(pwd):/app docker_golang1.17_hotreload