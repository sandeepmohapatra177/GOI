#!/bin/bash

kubectl create secret generic goi-postgres-secret \
  -n goi \
  --from-literal=POSTGRES_DB=goidb \
  --from-literal=POSTGRES_USER=goiuser \
  --from-literal=POSTGRES_PASSWORD=goipassword

