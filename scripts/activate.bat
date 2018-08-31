if not defined OPENSSL_CONF (
  set OPENSSL_CONF="%CONDA_PREFIX%/share/cacurl/cacurl-openssl.cnf"
) else (
  echo "WARNING: OPENSSL_CONF was already set, so I am not touching it. CACurl may not work as you expect..."
)
