FROM oven/bun:1-alpine AS base

WORKDIR /losi-online

COPY package.json ./
COPY bun.lock ./

RUN bun install --frozen-lockfile --ignore-scripts

COPY . .

RUN bun run build

FROM nginx:alpine AS final

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=base /losi-online/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
