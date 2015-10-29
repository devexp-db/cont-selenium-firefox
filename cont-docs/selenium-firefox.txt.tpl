===========================================
Fedora's Selenium Firefox Standalone Server
===========================================

Based on: https://github.com/devexp-db/cont-selenium-firefox

API version: {{ m.cont_selenium_firefox_version }}

Basic usage:
------------

What you usually want is to allow your host scritps to connect to Selenium
server.  The only thing you need to do is mapping container's port to hosts port
(-p HOST_PORT:CONT_PORT):

$ docker run -ti --rm -p 4444:4444  fedora/selenium-firefox

Then test the (already running) container with perl:
----------------------------------------------------

$ docker run --rm fedora/selenium-firefox container-help \
        --component selenium-firefox \
        --topic     examples/perl \
    > /tmp/perl.pl
$ perl /tmp/perl.pl
4xF: Freedom. Friends. Features. First.
