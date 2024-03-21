# syntax=docker/dockerfile:1
# webhook test
FROM node:18-alpine
WORKDIR /app
COPY . .
# Install Python and other build dependencies required by node-gyp
# Then, install your application's dependencies via yarn
RUN apk add --no-cache python3 make g++ && \
    yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000