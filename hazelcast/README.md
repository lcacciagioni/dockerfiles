Hazelcast
=========

Hazelcast is one of the leading Open Source In-Memory Data Grid. It can be used for Database Caching, NoSQL Data Store, Web Session Clustering, App Scalling, and many others.

### Environment Variables
This particular docker image has a couple of environment variables to make his configuration dynamic at startup.

`MIN_HEAP`: This variable is to set the initial mem of the java HEAP. (Default: 1G)

`MAX_HEAP`: This variable is to set the maximum mem of the java HEAP. (Default: 1G)

`GROUP_NAME`: This is to set the group name for the hazelcast cluster. (Default: dev)

`GROUP_PASS`: This variable sets the password for the group of the hazelcast cluster. (Default: devpass)

### How to run
This docker image has multicast enabled on port 54327 and services enabled on port 5701 without port auto increment

	docker run --rm=true --name hazelcast1 -p 5701:5701 -p 54327:54327 -e "MIN_HEAP=256M" -e "MAX_HEAP=256M" -e "GROUP_NAME=test" -e "GROUP_PASS=test_pass" cacciald/hazelcast

### Contribute

Please contribute and fork [https://github.com/lcacciagioni/dockerfiles](https://github.com/lcacciagioni/dockerfiles "Fork") and submit any issue that you find [https://github.com/lcacciagioni/dockerfiles/issues](https://github.com/lcacciagioni/dockerfiles/issues "Issues").


Hope that this works for you!!!
