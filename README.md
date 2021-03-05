# Running Flask on Kubernetes

## Want to learn how to build this?

Check out the [post](https://testdriven.io/running-flask-on-kubernetes).

## Want to use this project?

#### Building the images
##### Flask

Build and push the image to Docker Hub:

```sh
$ docker build -t jaiganeshjk/flask-app ./services/server
$ docker push jaiganeshjk/flask-app
```

##### Vue

Build and push the image to Docker Hub:

```sh
$ docker build -t jaiganeshjk/flask-vue ./services/client
$ docker push jaiganeshjk/flask-vue
```
##### Postgresql

Build and push the image to Docker Hub:

```sh
$ docker build -t jaiganeshjk/flask-db ./services/db
$ docker push jaiganeshjk/flask-db
```

### Deploy into Kubernetes Cluster
Create a new namespace called bookshelf-app and apply the manifests in the kubernetes directory
```sh
#Navigate to the kubernetes directory
cd kubernetes

#Create the Namespace
kubectl create namespace bookshelf-app

#Apply all the manifests in the kubernetes directory
kubectl -n bookshelf-app create -f . 
```
### Access the Application

Use the port-forward as shown below to access the application 
```sh
kubectl port-forward svc/flask-vue -n flask 8080:8080 5000:5000
```
Try the bookshelf app at [http://localhost:8080/](http://localhost:8080/).
Try the flask endpoint at [http://localhost:5000/books](http://localhost:5000/books).
