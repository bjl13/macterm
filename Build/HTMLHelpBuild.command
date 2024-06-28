#!/bin/sh

# when double-clicked in the Finder, this will run a
# terminal (preferably, MacTerm!) to run "make" for you

# since the generator depends on 'python3' and other
# tools and the Developer paths typically contain
# different versions of tools, PATH is not set here
# (as it is in other wrappers); instead, 'make' is
# explicitly found in /usr/bin without pulling in
# other tools, allowing more typical paths (such as
# /opt/homebrew/bin) to define the dependencies

cd `dirname $0` && /usr/bin/make -f GNUmakefile_HTMLHelp

