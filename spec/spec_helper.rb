require "rspec"

require File.dirname(__FILE__) + "/../lib/cnab"

LINE = (0..239).to_a.map { |i| i = i % 10 }.join("")
