!#/bin/bash

cat /var/lib/docker/volumes/bee_clef-1/_data/password && echo
cat /var/lib/docker/volumes/bee_clef-1/_data/keystore/$(ls -1 /var/lib/docker/volumes/bee_clef-1/_data/keystore/ | head -1) && echo
