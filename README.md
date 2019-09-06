# Serverless.com framework for Docker: gtron/docker-serverless.com
A lightweight image to use serverless.com without installing it

[Serverless Application Framework](http://serverless.com)

This image containing NodeJS, the Serverless Framework and the AWS-Cli.

## Usage


### Bare docker:

You car run:

`docker run --rm --name sls -u $UID -v /home/$USER/.aws:/home/node/.aws -v /home/$USER/.aws:/root/.aws -v $PWD:/opt/app -P -ti gtron/docker-serverless.com serverless`
