echo running tests for django
UUID=$(cat /proc/sys/kernel/random/uuid)

pass "Unable to start the $VERSION container" docker run --privileged=true -d --name $UUID mubox/build-django sleep 365d

defer docker kill $UUID

pass "Unable to create code folder" docker exec $UUID mkdir -p /opt/code

# fail "Detected something when there shouldn't be anything" docker exec $UUID bash -c "cd /opt/engines/django/bin; ./sniff /opt/code"

pass "Failed to detect" docker exec $UUID bash -c "cd /opt/engines/django/bin; ./sniff /opt/code"
