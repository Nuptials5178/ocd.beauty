FROM oven/bun:1-alpine AS base

WORKDIR /losi-online

COPY package.json ./
COPY bun.lock ./

RUN bun install --frozen-lockfile --ignore-scripts

COPY . .

RUN bun run build

FROM joseluisq/static-web-server:2.44.0 AS final

COPY --from=base /losi-online/dist /public

ENV SERVER_LOG_LEVEL=info
ENV SERVER_LOG_FORMAT=pretty
ENV SERVER_LOG_WITH_ANSI=true

EXPOSE 80
