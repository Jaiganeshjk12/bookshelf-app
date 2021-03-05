# Running Bookshelf-app on Kubernetes

## Want to learn how to build this?

Check out the [post](https://testdriven.io/running-flask-on-kubernetes).

#### Building the images and pushing to your own repository
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

### Deploy into Kubernetes Cluster using the manifests file in the repo
Create a new namespace called bookshelf-app and apply the manifests in the kubernetes directory
```sh
#Navigate to the kubernetes directory
cd kubernetes

#Create the Namespace
kubectl create namespace bookshelf-app

#Apply all the manifests in the kubernetes directory
kubectl -n bookshelf-app create -f . 
```
### Deploy into Kubernetes Cluster using helm chart
Refer [Configurable helm values](#configurable-helm-values) for all the flags that can be configured with this chart.

```sh
#add the helm repo 
helm repo add bookshelf https://jaiganeshjk12.github.io/bookshelf-app/

#create the namespace in which you will be installing the application
kubectl create namespace bookshelf-app

#install helm with custom values. 
helm install bookshelf-app bookshelf/bookshelf-app -n bookshelf-app --set database.volume.storageClassName=<storageClassName>
```

### Access the Application

Use the port-forward as shown below to access the application 
```sh
kubectl port-forward svc/flask-vue -n flask 8080:8080 5000:5000
```
Try the bookshelf app at [http://localhost:8080/](http://localhost:8080/).

Try the flask endpoint at [http://localhost:5000/books](http://localhost:5000/books).

## Configurable helm values

parameter|description|default
---------|-----------|-------
image.flaskapp|configure custom image for flask server component|jaiganeshjk/flask-app:latest
image.flaskvue|configure custom image for Vue client|jaiganeshjk/flask-vue:latest
image.flaskdb|configure custom image for postgres database|postgres:12.1-alpine
database.volume.storageClassName|configure storage class name based on the platform|gp2
database.volume.resourceRequests.storage|size for the postgres PVC|20Gi
database.volume.accessModes|Access mode for the PVC|[ "ReadWriteOnce" ]
database.port.defaultPort|Postgres default port|5432
database.credentials.postgresuser|Postgres default user|postgres
database.credentials.postgrespasswd|Postgres default passwd|pleasechangeme
