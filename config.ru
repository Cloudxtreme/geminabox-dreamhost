require "rubygems"
require "geminabox"

Geminabox.data = File.expand_path('data', File.dirname(__FILE__))
Geminabox.build_legacy = false

use Rack::Auth::Basic do |username, password|
  username = 'username'
  password = 'password'
end

run Geminabox