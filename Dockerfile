FROM debian:latest

# These settings prevent a timezone prompt when Python installs
ENV TZ=US/Pacific \
    DEBIAN_FRONTEND=noninteractive

# Update the apt repo
RUN apt-get update && apt-get -y upgrade

# Install the latest 3.x version of Python available from apt
RUN apt-get install -y wget git python3 python3-venv
