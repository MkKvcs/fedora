FROM quay.io/toolbx-images/fedora-toolbox:latest

RUN dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
RUN rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

RUN dnf install \
            neofetch \
            neovim \
            ibm-plex-fonts-all \
            dnf-plugins-core \
            brave-browser \
            -y
     
