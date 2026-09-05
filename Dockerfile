FROM oven/bun:1-alpine AS base

WORKDIR /losi-online

COPY package.json ./
COPY bun.lock ./

RUN bun install --frozen-lockfile

COPY . .

RUN bun run build

FROM nginx:alpine AS final

COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY --from=base /losi-online/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
