require_relative "HttpPing/version"
require 'rbconfig'
require_relative 'HttpPing/ping'
require_relative 'HttpPing/h_ping'

module HttpPing
  # By doing a "require 'net/ping'" you are requiring every subclass.  If you
  # want to require a specific ping type only, do "require 'net/ping/tcp'",
  # for example.
  #


  RbConfig = Config unless Object.const_defined?(:RbConfig)

  begin
    `busybox`
    RbConfig::CONFIG['busybox'] = true
  rescue Errno::ENOENT
    RbConfig::CONFIG['busybox'] = false
  end

  if File::ALT_SEPARATOR
    require_relative 'HttpPing/wmi'
  end
end
