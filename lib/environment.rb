require_relative "CTA/version"
require_relative "CTA/cli"
require_relative "CTA/api"
require_relative "CTA/stations"

require "pry"
require "httparty"


module CTA
  class Error < StandardError; end
  # Your code goes here...
end
