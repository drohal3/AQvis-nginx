#!/bin/sh

# Replace environment variables in the NGINX configuration template
envsubst '$FRONTEND_SERVICE_HOST $FRONTEND_SERVICE_PORT $BACKEND_SERVICE_HOST $BACKEND_SERVICE_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start NGINX
nginx -g 'daemon off;'