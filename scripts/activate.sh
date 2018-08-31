#!/bin/bash
if [[ -z "$OPENSSL_CONF" ]]; then
  export OPENSSL_CONF="${CONDA_PREFIX}/share/cacurl/cacurl-openssl.cnf"
fi
