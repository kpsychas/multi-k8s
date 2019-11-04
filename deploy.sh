docker build -t kpsychas/multi-client:latest -t kpsychas/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t kpsychas/multi-server:latest -t kpsychas/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t kpsychas/multi-worker:latest -t kpsychas/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push kpsychas/multi-client:latest
docker push kpsychas/multi-server:latest
docker push kpsychas/multi-worker:latest

docker push kpsychas/multi-client:$SHA
docker push kpsychas/multi-server:$SHA
docker push kpsychas/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=kpsychas/multi-server:$SHA
kubectl set image deployments/client-deployment client=kpsychas/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=kpsychas/multi-worker:$SHA
