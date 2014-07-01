CF GORouter
===========

This file will give you a viable option to run your own CF GORouter
(https://github.com/cloudfoundry/gorouter) to make some tests and maybe install
a little Cloudfoundry custom deployment.

### Config
To run this container you will need to generate a config with the details of
your nats server and the rest of the components to discover them. You can get a
sample config file from:
https://raw.githubusercontent.com/cloudfoundry/gorouter/master/example_config/example.yml

### Run
Once you have generated your custom config you can run your GORouter running:

		$ sudo docker run -v ~/Documents/config.yml:/opt/config.yml -p 0.0.0.0:80:8081 -d cacciald/gorouter /gopath/bin/gorouter -c /opt/config.yml 

This will run a daemonized gorouter with your config file in place (~/Documents/config.yml mounted on /opt/config.yml) and the port 8081 (Default go router port) of the container exposed on the port 80 of the host in all the ip's.
