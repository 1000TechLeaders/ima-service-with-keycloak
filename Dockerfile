FROM quay.io/keycloak/keycloak:25.0.0

COPY ./providers/ /opt/keycloak/providers/

RUN /opt/keycloak/bin/kc.sh build

ENV KC_HOSTNAME=localhost
ENV KC_HTTP_ENABLED=true
ENV KC_PROXY_HEADERS=xforwarded
ENV KC_ADMIN=admin
ENV KC_ADMIN_PASSWORD=admin

EXPOSE 8080

CMD ["start-dev"]