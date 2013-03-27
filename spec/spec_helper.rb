require "rspec"
require "coveralls"

Coveralls.wear!

require File.dirname(__FILE__) + "/../lib/cnab"

LINE = (0..239).to_a.map { |i| i %= 10 }.join("") + "\r\n"