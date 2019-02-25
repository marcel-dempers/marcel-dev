# marcel-dev
My scalable microservice architecture


## Get our Docker container ready!

We have two dockerfiles here, our development image that has node, npm, npx and other dependancies and a production multistage image

You can use compose wich has a reference like below:
```
docker-compose build 
```

You can run the development server with :
```
docker-compose up dev-image
```

Production server is a lightweight NGINX image that simply serves the output of <br/>
the `npm build` result. Take a look at the `dockerfile` to see how we achieve multistage build for small production image


I used the tutorial below:

`https://facebook.github.io/create-react-app/docs/getting-started`

