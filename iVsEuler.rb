# iVsEuler.rb

=begin
	
author:		German Cuamea
email:		bluu@me.com
date:		2012
summary:	This program contains the solution for the Euler problems that you can find in http://projecteuler.net/
	
=end

require_relative 'Header' 

problem1Result = Problem1.new
problem1Result.DoMath
puts 'Problem 1 Result = ' + problem1Result.result.to_s() 

Problem2Result = Problem2.new
Problem2Result.DoMath
puts 'Problem 2 Result = ' + Problem2Result.result.to_s()

problem4Result = Problem4.new
problem4Result.DoMath
puts 'Problem 4 Result = ' + problem4Result.result.to_s()