$:.unshift File.join(__FILE__, '../config')

require 'sinatra/base'
require 'mongoid'
require 'bundler/setup'
require 'app_base'


require_relative 'lib/controllers/home_page'

class SkeletonApp < Sinatra::Base
  set :app_file, __FILE__
  set :views, settings.root + '/views'
end