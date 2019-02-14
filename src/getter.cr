require "./http_fetch"

# TODO: Write documentation for `Getter`
module Getter
  VERSION = "0.1.0"
end

if ARGV.size == 0
  puts "Error: no url given"
  exit 1
end

puts Fetch.get_url(ARGV.last)
