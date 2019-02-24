# marcel-dev
My scalable microservice architecture


## Get our Docker container ready!

We need to build the "build" docker file that has node, npm, npx and other things

You can use compose wich has a reference like below:
```
docker-compose build 
```
OR
```
cd ./src
docker build . -t frame-app
```
And then get into it with:
```
docker run -it --rm -v ${PWD}:/src -p 3000:3000 -w /src frame-app sh
```

```
 docker run -it --rm -v ${PWD}:/src -p 3000:3000 -w /src aimvector/ui-microservice-build sh
```

I used the tutorial below:

`https://facebook.github.io/create-react-app/docs/getting-started`


## Creating our app

```
npx create-react-app frame-app
```

Once it was created, I built it and ran it:
```
cd frame-app
npm start
```

This will run everything in development mode.