#!/usr/bin/env ruby
#can only take in numbers to a max of 10 numbers
puts ARGV[0].scan(/^[0-9]{10,10}$/).join
