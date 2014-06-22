require 'sinatra/base'
require 'mongoid'


class AppBase < Sinatra::Base
  configure do
    :development
    Bundler.setup(:default, :assets, :development)
    set :environment, :development
    set :root, File.dirname('../')
    enable :sessions, :logging, :static, :inline_templates, :method_override, :dump_errors, :run
    Mongoid.load!(File.expand_path(File.join('config', 'mongoid.yml')))
  end

end