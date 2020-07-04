sssd
daemonize /usr/libexec/sssd/sssd_kcm --uid 0 --gid 0
echo -e "kinit yourfasname@FEDORAPROJECT.ORG\nkoji hello\nklist -A"
bash

