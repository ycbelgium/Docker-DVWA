#!/bin/bash

service apache2 start
service mysql start

while [ 1 ]; do sleep 1000;done
