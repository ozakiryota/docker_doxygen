########## Pull ##########
FROM ubuntu:22.04
########## Non-interactive ##########
ENV DEBIAN_FRONTEND=noninteractive
########## Common tool ##########
RUN apt-get update && \
	apt-get install -y \
		wget
########## Doxygen ##########
RUN apt-get update && \
	apt-get install -y \
		doxygen \
		graphviz \
		texlive-latex-extra
########## PlantUML ##########
RUN apt-get update && \
	apt-get install -y \
			default-jdk && \
	mkdir ~/plantuml && \
	wget https://github.com/plantuml/plantuml/releases/download/v1.2022.7/plantuml-1.2022.7.jar -O ~/plantuml/plantuml.jar
########## Initial position ##########
WORKDIR /root/doxygen_ws