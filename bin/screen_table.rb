#!/usr/bin/env ruby
$:.unshift File.expand_path("../../lib", __FILE__)

require "screen_table"

n = ARGV[0] ?  ARGV[0].to_i : 10 

p n


#puts "Print product [1..n]*[1..n] (n=#{n}) "
#ScreenTable.new(Array(1..n)).draw

puts "Print the first primes product n*n (n=#{n})"
ScreenTable.new(MyPrimes.new.first(n)).draw
