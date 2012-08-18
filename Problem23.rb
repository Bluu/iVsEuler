# Problem 23

=begin

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. 
For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 
is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant 
if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written 
as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers 
greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot 
be reduced any further by analysis even though it is known that the greatest number that cannot be 
expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=end

class Problem23

	def initialize
		@result = 0
	end

	def DoMath
		limit = 28123
		abundantNumbers = Array.new
		for i in 1..limit
			sumFactors = 0
			Factors(i).each {|x| sumFactors += x unless x == i}
			if (sumFactors > i)
				abundantNumbers << i
			end
		end
		sumAbundantNumbers = Array.new
		abundantNumbers.each do |x|
			abundantNumbers.each do |y|
				sum = x + y
				break if sum > limit
				sumAbundantNumbers << sum
			end
		end
		notAbundantNumbers = (1..limit).to_a - sumAbundantNumbers
		@result = notAbundantNumbers.inject(0) { |var, n| var += n }
	end

	def Factors(num) 
		1.upto(Math.sqrt(num)).select {|i| (num % i).zero?}.inject([]) do |f, i| 
			f << i
			f << num/i unless i == num/i
			f
    	end.sort
	end

	attr_reader :result

end