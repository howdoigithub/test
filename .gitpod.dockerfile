FROM gitpod/workspace-dotnet:latest

USER root
RUN apt-get update 
RUN apt-get install netcat -y
RUN apt-get install mono-complete -y
RUN cd /tmp && git clone "https://github.com/rofl0r/proxychains-ng" && cd proxychains-ng && make && make install && make install-config
