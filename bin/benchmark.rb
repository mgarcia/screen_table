#!/usr/bin/env ruby
$:.unshift File.expand_path("../../lib", __FILE__)

require 'benchmark'
require 'screen_table'
require 'mathn'

n=10000

Benchmark.bmbm do |x|
	x.report("MyPrime") 	{ MyPrimes.new.first(n) }
	x.report("Prime") { Prime.first(n)}
end
