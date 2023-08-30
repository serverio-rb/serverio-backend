# frozen_string_literal: true

require_relative './lib/serverio/server'

def time_formatted
  puts ::Time.now.strftime('%Y-%m-%d %H:%M:%S')
end

puts "[#{time_formatted}] INFO 🚀 serverio-rb starting"

if !RUBY_PLATFORM.match(/darwin/) && !RUBY_PLATFORM.match(/linux/)
  puts "[#{time_formatted}] ERROR ❗ Only macOS and Linux available"
  exit(1)
end

run ::Serverio::Server
