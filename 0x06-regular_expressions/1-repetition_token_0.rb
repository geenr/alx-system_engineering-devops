#!/usr/bin/env ruby
"""
hbtn - it can only take amx of 5 t's
"""
puts ARGV[0].scan(/hbt{,5}n/).join
