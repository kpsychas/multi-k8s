[![Build Status](https://travis-ci.org/kpsychas/multi-k8s.svg?branch=master)](https://travis-ci.org/kpsychas/multi-k8s)

# About
This project was created as part of the course
[Docker and Kubernetes: The Complete Guide] [1].

It features a web application with multiple
components that run in different containers.
The following actions take place when a new revision is pushed on `master` branch

1. Travis-CI build is triggered
2. Development build is run to verify there are no errors
3. Images of each container are created and pushed on Docker Hub
4. Application is deployed on Google Cloud by
pulling the images from Docker Hub


Currently the Google project is down,
but dashboard looks as follows when deployed successfully.

![Deployment Services][2]

![Deployment Workloads][3]


For reference instructions for Google Cloud configuration are in lectures: 247, 255, 262-267, 272

[1]: https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/

[2]: ./deployment_services.PNG

[3]: ./deployment_workloads.PNG
