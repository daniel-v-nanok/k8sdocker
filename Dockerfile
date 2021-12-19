FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN apk add --update python3 py3-pip
RUN python3 -m ensurepip
RUN pip install awscli
RUN npm install
COPY . .
RUN npm run build