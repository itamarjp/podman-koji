FROM fedora:33
RUN dnf -y update && dnf clean all
RUN dnf -y install sssd-kcm sssd-common daemonize krb5-workstation koji rootfiles && dnf clean all
COPY entrypoint.sh /root
RUN chmod 700 /root/entrypoint.sh
ENTRYPOINT /root/entrypoint.sh
