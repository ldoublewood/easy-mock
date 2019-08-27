FROM node:12.9.0

# set pwd to easy-mock home dir

WORKDIR /home/easy-mock

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

COPY ./package.json /home/easy-mock

RUN cnpm install

COPY . /home/easy-mock

RUN npm run build

CMD ["npm", "start"]

