# build
docker build --tag docker_golang1.17_hotreload .

# run
docker run --name golang1.17-container -p 5000:5000 -v $(pwd):/app docker_golang1.17_hotreload