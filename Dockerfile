FROM docker.io/cm2network/steamcmd

RUN ./steamcmd.sh +login anonymous +force_install_dir ~/SatisfactoryDedicatedServer +app_update 1690800 validate +quit

WORKDIR /home/steam/SatisfactoryDedicatedServer

EXPOSE 15777/udp
EXPOSE 15000/udp
EXPOSE  7000/udp

ENTRYPOINT ["./FactoryServer.sh"]
