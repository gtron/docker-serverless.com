# Serverless.com framework for Docker: gtron/docker-serverless.com
A lightweight image to use serverless.com without installing it

[Serverless Application Framework](http://serverless.com)

This image containing NodeJS, the Serverless Framework and the AWS-Cli.



## Plugins

 - serverless-plugin-optimize 
 - serverless-aws-documentation
 - serverless-plugin-typescript typescript 
 - serverless-offline serverless-offline-ssm (https://serverless.com/plugins/serverless-offline-ssm/)
 - serverless-resources-env (https://serverless.com/plugins/serverless-resources-env/)
 - serverless-prune-plugin (https://serverless.com/plugins/serverless-prune-plugin/) 
 - serverless-pseudo-parameters (https://serverless.com/plugins/serverless-pseudo-parameters/)
 - serverless-apigateway-plugin (https://serverless.com/plugins/serverless-apigateway-plugin/)
 - serverless-plugin-elastic-beanstalk (https://serverless.com/plugins/serverless-plugin-elastic-beanstalk/)


## Usage

### Bare docker:

You car run:

`docker run --rm --name sls -u $UID -v /home/$USER/.aws:/home/node/.aws -v /home/$USER/.aws:/root/.aws -v $PWD:/opt/app -P -ti gtron/docker-serverless.com serverless`


