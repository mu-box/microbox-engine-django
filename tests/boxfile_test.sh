echo running tests for django
UUID=$(cat /proc/sys/kernel/random/uuid)

pass "Unable to start the $VERSION container" docker run --privileged=true -d --name $UUID mubox/build-django sleep 365d

defer docker kill $UUID

pass "Failed to execute the boxfile script" docker exec $UUID bash -c "cd /opt/engines/django/bin; ./boxfile '$(payload default-boxfile)'"
