#!/usr/bin/env ruby
"""
it must start with h ans end with n so we use
^\Ah and also n\Z
then it must have only 1 character at the center
"""
puts ARGV[0].scan(/^\Ah[A-Za-z0-9]n\Z/).join
