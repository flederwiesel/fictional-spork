# syntax=docker/dockerfile:1.4
# https://docs.docker.com/engine/reference/builder/#syntax

FROM ubuntu:jammy

RUN cat <<-"EOF" > $HOME/.bash_aliases
	ll="ls -AlF --color --time-style=+%F\\ %T"
	EOF

RUN cat <<NUR > $HOME/.bash_aliases

source $HOME/.bash_aliases
NUR

RUN bash <<EOF
apt-get update
apt-get upgrade --yes
apt-get install --yes build-essential git nano
EOF
