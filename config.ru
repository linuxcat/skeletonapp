require File.join(File.dirname(__FILE__), 'application')

map('/') { run HomePage.new() }
map('/teams') { run Teams.new() }
map('/users') { run Users.new() }




