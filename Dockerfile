FROM nginx:1.15.8-alpine
COPY dist/ /etc/nginx/html
{
  "name": "movie-quote-consumer",
  "version": "0.0.1",
  "author": {
    "name": "g00glen00b"
  },
  "scripts": {
    "start": "webpack-dev-server --open --mode development --port 8081 --env.API_URL=http://localhost:8080/api",
    "build": "webpack --mode production --env.API_URL=./movie-quote-service/api",
    "docker": "docker build -t $npm_package_author_name/$npm_package_name:$npm_package_version ."
  }
}
