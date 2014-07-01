# This will be my custom rbenv build dockerfile

FROM ubuntu:trusty

RUN [ "apt-get", "-qqy", "update"]
RUN [ "apt-get", "-qqy", "dist-upgrade" ]
RUN [ "apt-get", "-qqy", "install", "build-essentials", "git" ]
# Here we install the build dependencies for both languages 1.9 and 2
RUN [ "apt-get", "-qqy", "build-dep", "ruby1.9.1" ]
RUN [ "apt-get", "-qqy", "build-dep", "ruby1.9.3" ]
RUN [ "apt-get", "-qqy", "build-dep", "ruby2.0" ]

# Here we cole the rbenv to the home folder

RUN [ "git", "clone", "https://github.com/sstephenson/rbenv.git", "~/.rbenv" ]
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN [ "git", "clone", "https://github.com/sstephenson/ruby-build.git", "~/.rbenv/plugins/ruby-build" ]
