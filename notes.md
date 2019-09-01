• If you copy something you must reference it (for example in a comment)
• If there are not already comments explaining what it does you must add some
• You should endeavour to test that what you've copied / amended works and fulfills the objective
• Generally speaking there will be marks for just achieving anything at all
(unless you copied it without referencing), plus some for each sub-requirement,
and then a few for style and explanation.
1. Write a Dockerfile to run Litecoin 0.17.1 in a container. It should somehow
verify the checksum of the downloaded release (there's no need to build the
project), run as a normal user, and when run without any modifiers (i.e. docker
run somerepo/litecoin:0.17.1) should run the daemon and print it's output to
the console. The build should be security conscious (and ideally pass a security
test such as CIS).


# docker installation
* https://gist.github.com/levsthings/0a49bfe20b25eeadd61ff0e204f50088
# checksum validation
* https://help.ubuntu.com/community/HowToSHA256SUM
# docker cis controls
https://www.digitalocean.com/community/tutorials/how-to-audit-docker-host-security-with-docker-bench-for-security-on-ubuntu-16-04


# kubernetes not working (Unable to connect to the server: dial tcp 192.168.99.101:8443: connect: no route to host)
https://neutrollized.blogspot.com/2018/01/unable-to-connect-to-server-dial-tcp.html
* removing VPN and restart kubernetes solved it
# useful kubernetes commands
from: https://kubernetes.io/docs/reference/kubectl/cheatsheet/
source <(kubectl completion zsh)
# statefulsets
https://kubernetes.io/docs/tutorials/stateful-application/basic-stateful-set/#creating-a-statefulset
https://bogotobogo.com/DevOps/Docker/Docker_Kubernetes_StatefulSet.php
# docker registry
https://ropenscilabs.github.io/r-docker-tutorial/04-Dockerhub.html
