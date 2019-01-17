#!/bin/bash

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 2181 \
--amazonec2-open-port 3030 \
--amazonec2-open-port 8081 \
--amazonec2-open-port 8082 \
--amazonec2-open-port 8083 \
--amazonec2-open-port 9581 \
--amazonec2-open-port 9582 \
--amazonec2-open-port 9583 \
--amazonec2-open-port 9584 \
--amazonec2-open-port 9585 \
--amazonec2-open-port 9092 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.medium \
landoop &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.medium \
mysql1 &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.medium \
mysql2 &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.medium \
mysql3 &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.medium \
mysql4 &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.small \
worker1 &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.small \
worker2 &

docker-machine create \
--driver amazonec2 \
--amazonec2-open-port 3306 \
--amazonec2-region us-west-1 \
--amazonec2-instance-type t2.small \
worker3