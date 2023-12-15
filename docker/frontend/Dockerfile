FROM node:18.17.0

WORKDIR /app

COPY frontend/package.json /app/package.json
COPY frontend/package-lock.json /app/package-lock.json

RUN npm install
COPY . /app

CMD ["yarn", "dev"]
