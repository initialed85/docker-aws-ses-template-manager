FROM node:18-bullseye AS builder

RUN apt-get update && apt-get install -y git

RUN npm i -g @adonisjs/cli

RUN git clone https://github.com/MattRuddick/aws-ses-template-manager.git

WORKDIR aws-ses-template-manager

RUN git checkout 6bbf63fbcf093d24b252a8c9f9626785b5669f6b

RUN npm install

ENV HOST="0.0.0.0"
ENV PORT=3333

ENTRYPOINT ["adonis", "serve"]
