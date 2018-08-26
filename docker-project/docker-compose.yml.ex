version: '3'
services:

  connector:
    image: bitwalker/alpine-elixir-phoenix:1.6.4
    volumes:
     - "./gs1_connector:/app/gs1_connector"
    working_dir: "/app/gs1_connector"
    user: "1000:1000"
    command: "sh -c /app/gs1_connector/launch.sh"
    environment:
     - "MIX_ENV=docker"
    ports:
      - 4000:4000
    links:
     - postgres

  mock:
    image: bitwalker/alpine-elixir-phoenix:1.6.4
    volumes:
     - "./gs1_plateform_aval_mock:/app/gs1_plateform_aval_mock"
    working_dir: "/app/gs1_plateform_aval_mock"
    user: "1000:1000"
    command: "sh -c /app/gs1_plateform_aval_mock/launch.sh"
    environment:
     - "MIX_ENV=docker"
    ports:
      - 4001:4000
    links:
     - postgres

  postgres:
    image: postgres:9.5
    environment:
     - "POSTGRES_USER=postgres"
     - "POSTGRES_PASSWORD=postgres"
     - "POSTGRES_DB=gs1_connector_dev"
    ports:
      - 5432:5432
    volumes:
     - "/home/nico/tmp/docker-data/GS1-connector:/var/lib/postgresql/data"

  #keycloak:
    #image: jboss/keycloak:latest
    #ports:
     #- 8080:8080
    #links: 
     #- server

  #client:
    #image: node:8.9.4-alpine
    #volumes:
     #- "./client:/app"
    #ports:
     #- 8080:8080
    #working_dir: /app
    #command: npm run dev -- --host 0.0.0.0 --port 8080


  #server:
    #image: node:8.9.4-alpine
    #volumes:
     #- ".:/app"
    #ports:
     #- 3000:3000
    #entrypoint: 
     #- "node"
     #- "/app/app.js"

