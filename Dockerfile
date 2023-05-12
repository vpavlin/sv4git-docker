FROM golang:latest

WORKDIR /opt/sv4git

RUN curl https://api.github.com/repos/bvieira/sv4git/releases/latest | grep linux_amd64 | sed -n 's/.*browser_download_url": "\(.*\)"/\1/p' | xargs curl -L -O &&\
    tar xzf * &&\
    rm --f *.gz

WORKDIR /opt/sv4git/repo

ENTRYPOINT [ "/opt/sv4git/git-sv" ]