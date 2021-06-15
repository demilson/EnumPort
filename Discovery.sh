#!/bin/bash

for i in $(seq 1 255); do
	timeout 1 bash -c "ping -c 1 segmento.$i" > /dev/null && echo "segmento.$i - Activo" &
done; wait
