FROM postgres:9.5

ADD docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
ADD schemas /schemas

# We need to have a configured directory for this ahead of time now.
ENV PGDATA /var/lib/postgres/data

# No reason we can't do entrypoint commands prior to the container start
ADD docker-init.sh /docker-init.sh
RUN /docker-init.sh

ENTRYPOINT ["/bin/sh", "-c"]  # The entrypoint commands were already run

CMD gosu postgres postgres
