require 'thor'
require_relative '../http_ping'
#require_relative '../HttpPing/generators/recipe'

module HttpPing
  class CLI < Thor
    desc "ping URL", "HTTP ping to given url and return duration "
    def ping(url)
      h_ping = HttpPing::H_PING.new(url)
      puts "Can ping : " + h_ping.ping?.to_s
      puts "Duration : " + h_ping.duration.to_s
    end
  end
end