#!/usr/bin/env ruby
"""
in hbtn it can have 0 or more t's but no other letter
can be used in place of the t so we use the *
"""
puts ARGV[0].scan(/hbt*n/).join
