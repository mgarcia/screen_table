#!/usr/bin/env ruby
$:.unshift File.expand_path("../../lib", __FILE__)

require "screen_table"

puts "Print product [1..n]*[1..n] (n=20) "
ScreenTable.new(Array(1..20)).draw

puts "Print Primes product n*n (n=10) "
ScreenTable.new(MyPrimes.new.first(10)).draw
