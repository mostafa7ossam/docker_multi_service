#!/bin/bash

rm airports/*
cp airports_new/* airports

sed -i 's/airports_image:1.0.1/airports_image:1.1.0/g' docker-compose.yml

sudo docker-compose up -d --no-deps --build airports
