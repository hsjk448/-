FROM node:lts-buster
RUN git clone https://github.com/hsjk448/𝙅𝙖𝙘𝙠𝙨𝙤𝙣 𝙈𝙙/root/ikmalvin
WORKDIR /root/hsjk448
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
