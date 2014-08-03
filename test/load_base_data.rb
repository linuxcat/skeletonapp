require 'mongoid'
require_relative '../lib/models/mongoid_specs'


Mongoid.load!('../config/mongoid.yml', :development)

team = Binary::Team.new(:name => "B-Team")
team.save