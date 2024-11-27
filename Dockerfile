# Use an NGINX base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default NGINX static files
RUN rm -rf ./*

# Copy your application files to the container
COPY . .

# Expose port 80 to access the web application
EXPOSE 80

# Command to run NGINX
CMD ["nginx", "-g", "daemon off;"]