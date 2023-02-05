FROM nginx:1.10.1-alpine
COPY src/html /usr/share/nginx/html

#Expose 80

#EXPOSE 80

#run commands
#CMD ["nginx","-g","daemon off;"]
