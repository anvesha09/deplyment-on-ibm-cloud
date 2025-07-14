# Use Nginx base image
FROM nginx:alpine

# Copy your static files to Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80 (default Nginx port)
EXPOSE 80

# No CMD needed — Nginx runs by default
