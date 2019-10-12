FROM node:lts-alpine 
RUN apk --no-cache add python python3 python3-dev py-pip ca-certificates groff less bash make jq curl wget g++ zip git openssh 

RUN pip --no-cache-dir install awscli && \
    update-ca-certificates

RUN npm update && \
    npm upgrade && \
    npm install -g serverless 

RUN \
    npm install -D serverless-plugin-typescript typescript  && \
    # https://serverless.com/plugins/serverless-offline-ssm/
	npm install --save-dev serverless-offline serverless-offline-ssm && \
    # https://serverless.com/plugins/serverless-resources-env/
    npm install serverless-resources-env --save && \
    # https://serverless.com/plugins/serverless-prune-plugin/
    npm install --save-dev serverless-prune-plugin && \
    # https://serverless.com/plugins/serverless-pseudo-parameters/
    npm install serverless-pseudo-parameters && \ 
    # https://serverless.com/plugins/serverless-apigateway-plugin/
    npm install --save serverless-apigateway-plugin &&  \
    # https://serverless.com/plugins/serverless-plugin-elastic-beanstalk/
    npm install --save serverless-plugin-elastic-beanstalk && \
    # https://www.npmjs.com/package/serverless-plugin-git-variables
    npm install --save  serverless-plugin-git-variables && \
    npm install --save serverless-plugin-optimize

WORKDIR /opt/app
