FROM registry.fedoraproject.org/fedora:42
LABEL org.opencontainers.image.source=https://github.com/empjustine/datacompression
RUN dnf --assumeyes upgrade --minimal --nodocs --noplugins --setopt=install_weak_deps=False \
    && dnf --assumeyes install ImageMagick libjxl-utils zstd --nodocs --noplugins --setopt=install_weak_deps=False \
    && dnf clean all