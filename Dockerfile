FROM joshuacox/dockarmaiii
MAINTAINER Josh Cox <josh 'at' webhosting coop>

USER root
ENV ARMOCTO_UPDATED 20150513

# override these variables in your Dockerfile
ENV STEAM_USERNAME anonymous
ENV STEAM_PASSWORD ' '
ENV STEAM_GUARD_CODE ' '

EXPOSE  2302
EXPOSE  2303
EXPOSE  2304
EXPOSE  2305
EXPOSE  2344
EXPOSE  2345

# Octohost specifics
# NO_HTTP_PROXY
# MOUNT_FROM_HOST /exports/armocto/steam /home/steam

# Octohost ports

# Game port (Inbound): 2302 UDP
# PORTS_FROM_HOST 2302 2302/udp

# Steam query port (Inbound): 2303 UDP
# PORTS_FROM_HOST 2303 2303/udp

# Steam master traffic port (Inbound): 2304 UDP
# PORTS_FROM_HOST 2304 2304/udp

# Client ports (Outbound): 2302-2305 UDP
# PORTS_FROM_HOST 2305 2305/udp

# BattlEye (Outbound): 2344 TCP/UDP
# PORTS_FROM_HOST 2344 2344
# PORTS_FROM_HOST 2344 2344/udp

# BattlEye (Outbound): 2345 TCP
# PORTS_FROM_HOST 2345 2345
