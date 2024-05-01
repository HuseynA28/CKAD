# Use the latest official Ubuntu image as the base
FROM ubuntu:latest

# Label the image
LABEL version="1.1"
LABEL maintainer="huuu"

# Update the package list and upgrade all packages
RUN apt-get update && apt-get upgrade -y

# Install nginx
RUN apt-get install nginx -y

# Expose port 80 to the outside world
EXPOSE 80

# Set the default command to run when starting the container
CMD ["nginx", "-g", "daemon off;"]
