# Use the official NGINX base image
FROM nginx:alpine

# Copy the custom NGINX configuration template
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copy the shell script
COPY start-nginx.sh /start-nginx.sh

# Ensure the shell script is executable
RUN chmod +x /start-nginx.sh

# Set the entrypoint to run the shell script
ENTRYPOINT ["/start-nginx.sh"]