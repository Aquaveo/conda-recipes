#!/bin/bash
if [[ -z "$OPENSSL_CONF" ]]; then
  export OPENSSL_CONF="${CONDA_PREFIX}/share/cacurl/cacurl-openssl.cnf"
else
  print "WARNING: OPENSSL_CONF was already set, so I am not touching it. CACurl may not work as you expect..."
fi
