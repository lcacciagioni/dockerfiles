#!/usr/bin/env bash
# Script to start hazelcast on docker

# Here we eval if some variables exists on the environment if they dont then we set them
MIN_HEAP=${MIN_HEAP:=1G}
MAX_HEAP=${MAX_HEAP:=1G}
GROUP_NAME=${GROUP_NAME=dev}
GROUP_PASS=${GROUP_PASS=devpass}

sed -i.bak "s/GROUP_NAME/$GROUP_NAME/" /opt/hazelcast/hazelcast-conf.xml
sed -i.bak2 "s/GROUP_PASS/$GROUP_PASS/" /opt/hazelcast/hazelcast-conf.xml

java -Xms$MIN_HEAP -Xmx$MAX_HEAP -Djava.net.preferIPv4Stack=true -Dhazelcast.config=/opt/hazelcast/hazelcast-conf.xml -cp "/opt/hazelcast/hazelcast-3.2.5.jar:/opt/hazelcast/" Start
