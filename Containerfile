FROM quay.io/toolbx-images/fedora-toolbox:latest

RUN dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
RUN rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

RUN dnf copr enable secureblue/hardened_malloc -y

RUN dnf install \
            dnf-plugins-core \
            brave-browser \
            hardened_malloc \
            -y

RUN echo "libhardened_malloc.so" > /etc/ld.so.preload
