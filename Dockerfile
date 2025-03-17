FROM registry.access.redhat.com/ubi8/nodejs-20 AS builder

ADD app $HOME

RUN npm install

FROM registry.access.redhat.com/ubi8/nodejs-20-minimal

USER root
RUN microdnf update -y

USER 185

EXPOSE 3000

COPY --from=builder $HOME $HOME

CMD ["npm", "run", "-d", "start"]