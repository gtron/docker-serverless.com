FROM node:lts-alpine 
RUN apk --no-cache add python python3 python3-dev py-pip ca-certificates groff less bash make jq curl wget g++ zip git openssh 

RUN pip --no-cache-dir install awscli && \
    update-ca-certificates

RUN npm update && \
    npm upgrade && \
    npm install -g serverless 

WORKDIR /opt/app
