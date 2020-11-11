FROM golang AS gympair_api
WORKDIR /gympair-user-service
COPY . /gympair-user-service
RUN go build main.go 
EXPOSE 9090
ENTRYPOINT ./main -m release

FROM mysql AS gympair_mysql
COPY ./gympair_user_table.sql /docker-entrypoint-initdb.d