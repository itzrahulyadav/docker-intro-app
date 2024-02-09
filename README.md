# CI/CD app with Docker and Jenkins

- This app is built in AWS ec2 using Jenkins and Docker
- Jenkins is integrated with github where it:
    - It pulls the code from SRM.
    - Builds the docker image.
    - Runs the docker container.
    - nothing


    ```
     version: 0.2
env:
  variables:
    REPOSITORY_NAME: spiderman
    IMAGE_TAG: spidermanapp
    CONTAINER_NAME: spiderman_ctr
phases:
  pre_build:
    commands:
      - REPOSITORY_URI=192043038610.dkr.ecr.ap-south-1.amazonaws.com     
      - aws --version
      - echo Logging in to Amazon ECR...
      - aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin $REPOSITORY_URI
      - docker pull  $REPOSITORY_URI/$REPOSITORY_NAME:$IMAGE_TAG
  build:
    commands:
      - echo Build started on `date`
      - echo Building the Docker image...
      - docker build -t $REPOSITORY_URI/$REPOSITORY_NAME:$IMAGE_TAG .
  post_build:
    commands:
      - echo Build completed on `date`
      - echo Pushing the Docker images...
      - docker push $REPOSITORY_URI/$REPOSITORY_NAME:$IMAGE_TAG



    ```
