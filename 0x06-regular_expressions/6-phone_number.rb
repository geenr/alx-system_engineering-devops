#!/usr/bin/env ruby
"""
it can only match numbers which must always be 10
so we use \d - which stands for only digit numbers it same as [0-9]
we start by setting the range {10,10}
the plus sign at the end is to enable recurring numbers eg 999
"""
puts ARGV[0].scan(/^\d{10,10}$/).join
