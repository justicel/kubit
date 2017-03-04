#!/usr/bin/env bash

helm repo up

for f in helm/*.yaml; do
  read -r FIRSTLINE < $f
  if [[ "${FIRSTLINE}" =~ ^#\ helm ]]; then
    command $(echo "${FIRSTLINE}" | cut -c 2-)
  fi
done

rm *.tgz
