# MinIO for Laravel APP via Helm [DEVELOPMENT]

MinIO's High Performance Object Storage is Open Source, Amazon S3 compatible, Kubernetes


## Installation

__Install Helm(MacOS Client)__

`brew install helm`

__Install Helm-tiller on Minikube(Server)__

`minikube addons enable helm-tiller`

__Install Helm-tiller on GCP K8S(Server)__

[medium](https://medium.com/google-cloud/installing-helm-in-google-kubernetes-engine-7f07f43c536e)

__Add google stable repo for helm__

`helm repo add stable https://kubernetes-charts.storage.googleapis.com/`

[docs](https://helm.sh/docs/intro/quickstart/#initialize-a-helm-chart-repository)

__Install MinIO via Helm__

`helm install stable/minio --generate-name`

[docs](https://github.com/helm/charts/tree/master/stable/minio)

__Configure Laravel__

[docs](https://github.com/minio/cookbook/blob/master/docs/how-to-use-minio-as-laravel-file-storage.md)

__Configure Laravel__

This Laravel APP Already configured - you can call /minio from laravel app.

web.php
```php
...
Route::get('/minio', function () {
    $randomId = uniqid();
    Storage::disk('minio')->put((string)$randomId . ".txt", 'Hello from current unix timestamp:' . (string)$randomId);
});
```