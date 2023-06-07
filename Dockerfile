FROM registry.access.redhat.com/ubi9

WORKDIR /opt/sv4git

RUN URL=$(curl https://api.github.com/repos/vpavlin/sv4git/releases/latest | grep linux_amd64 | sed -n 's/.*browser_download_url": "\(.*\)"/\1/p') &&\
    curl -L -O ${URL} &&\
    tar xzf * &&\
    rm --f *.gz &&\
    dnf -y install git

WORKDIR /opt/sv4git/repo

ENTRYPOINT [ "/opt/sv4git/git-sv" ]