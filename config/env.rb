require './config/logger'    #LOGGER
require './config/memcached' #CACHE

def current_environment
  ENV['RACK_ENV'] || 'development'
end

def dev?
  current_environment != 'production'
end
alias :development? :dev?

require 'pry' if development?
