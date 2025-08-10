# Use the official Nginx image as base
FROM nginx:alpine

# Copy the static files to Nginx's default serving directory
COPY index.html /usr/share/nginx/html/
COPY index.css /usr/share/nginx/html/
COPY index.js /usr/share/nginx/html/
COPY clock.png /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
