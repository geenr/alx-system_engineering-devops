#!/usr/bin/env ruby
"""
hbtn - Can only take amx of 5 t's
"""
puts ARGV[0].scan(/hbt{,5}n/).join
