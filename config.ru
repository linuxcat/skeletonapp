require File.join(File.dirname(__FILE__), 'application')

map('/') {run HomePage.new()}
