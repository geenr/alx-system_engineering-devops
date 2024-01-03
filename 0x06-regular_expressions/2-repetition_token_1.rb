#!/usr/bin/env ruby
"""
in hbtn we can only have 0 or 1 b so we use
the question mark
"""
puts ARGV[0].scan(/hb?tn/).join
