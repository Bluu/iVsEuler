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

problem2Result = Problem2.new
problem2Result.DoMath
puts 'Problem 2 Result = ' + problem2Result.result.to_s()

problem3Result = Problem3.new
problem3Result.DoMath
puts 'Problem 3 Result = ' + problem3Result.result.to_s()

problem4Result = Problem4.new
problem4Result.DoMath
puts 'Problem 4 Result = ' + problem4Result.result.to_s()

problem5Result = Problem5.new
problem5Result.DoMath
puts 'Problem 5 Result = ' + problem5Result.result.to_s()

problem6Result = Problem6.new
problem6Result.DoMath
puts 'Problem 6 Result = ' + problem6Result.result.to_s()

problem7Result = Problem7.new
problem7Result.DoMath
puts 'Problem 7 Result = ' + problem7Result.result.to_s()

problem8Result = Problem8.new
problem8Result.DoMath
puts 'Problem 8 Result = ' + problem8Result.result.to_s()