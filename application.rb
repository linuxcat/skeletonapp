$:.unshift File.join(__FILE__, '../config')

require 'sinatra/base'
require 'sinatra/json'
require 'mongoid'
require 'bundler/setup'
require 'app_base'

require_relative 'lib/models/mongoid_specs'

require_relative 'lib/controllers/home_page'
require_relative 'lib/controllers/teams'
require_relative 'lib/controllers/users'

class SkeletonApp < Sinatra::Base
  set :app_file, __FILE__
  set :views, settings.root + '/views'
end