#!/bin/sh

# compile coffeescript files
./node_modules/.bin/coffee --compile -o js/ celestrium/core-coffee/
./node_modules/.bin/coffee --compile -o js/ main.coffee RandomDataProvider.coffee PhoneticAlphabet.coffee

# serve files out of this directory
python -m SimpleHTTPServer
