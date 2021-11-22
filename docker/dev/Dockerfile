FROM node:12
WORKDIR /code
RUN apt-get update -y
RUN npm install -g @angular/cli
RUN npm install --quiet
#RUN npm i -g angular-cli-ghpages
RUN ng build --base-href "http://localhost:4201"
RUN npm run build:appcache
CMD bash