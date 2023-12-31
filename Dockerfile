FROM node:18

WORKDIR /app


RUN npm install -g pnpm
COPY package.json .
COPY pnpm-lock.yaml .
RUN pnpm install

COPY . .

RUN pnpm build

CMD ["node", "dist/main.js"]
