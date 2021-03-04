# Running Flask on Kubernetes

## Want to learn how to build this?

Check out the [post](https://testdriven.io/running-flask-on-kubernetes).

## Want to use this project?

### Kubernetes

#### Building the images
##### Flask

Build and push the image to Docker Hub:

```sh
$ docker build -t jaiganeshjk/flask-app ./services/server
$ docker push jaiganeshjk/flask-app
```

#### Vue

Build and push the image to Docker Hub:

```sh
$ docker build -t jaiganeshjk/flask-vue ./services/client
$ docker push jaiganeshjk/flask-vue
```
### Postgresql
```sh
$ docker build -t jaiganeshjk/flask-db ./services/db
$ docker push jaiganeshjk/flask-db
```


Try it out at [http://hello.world/](http://hello.world/).
