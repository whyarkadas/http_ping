require_relative '../lib/http_ping'

url = 'https://gitlab.com'

puts  "HTTP Ping to -->  " + url

#p1 = Net::Ping::HTTP.new(url)
h_ping = HttpPing::H_PING.new(url)
puts "Can ping : " + h_ping.ping?.to_s
puts "Duration : " + h_ping.duration.to_s