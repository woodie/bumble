begin
  require 'spec'
  require 'appengine-sdk'
rescue LoadError
  require 'rubygems'
  require 'spec'
  require 'appengine-sdk'
end

AppEngine::SDK.load_apiproxy
require 'appengine-apis/testing'
AppEngine::Testing.install_test_env

