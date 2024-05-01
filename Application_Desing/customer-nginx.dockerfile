from ubunut:latest


label verson = "1.1"
label maintainer ="huuu"
run apt-get update
run apt-get upgrade -y

run apt-get install nginx -y

expose 80
cmd ["nginx", "-g", "daemon off;"]
