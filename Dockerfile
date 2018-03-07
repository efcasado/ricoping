ARG DKR_IMAGE

FROM $DKR_IMAGE

# EPMD port
EXPOSE 4369/tcp
# Distributed Erlang port
EXPOSE 9000/tcp

ARG MIX_ENV

COPY ./_build/${MIX_ENV}/rel/rico_ping /opt/rico_ping

ENTRYPOINT [ "/opt/rico_ping/bin/rico_ping", "foreground" ]
