#taking nginx as the base image
FROM nginx:latest
#copying the index.html files from the dist folder 
COPY dist/assets/ /usr/share/nginx/html 
#exposing to the port 80
EXPOSE 80