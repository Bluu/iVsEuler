# Problem 21 

=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

class Problem21

	def initialize
		@result = 0
	end

	def DoMath
		i = 220
		while (i < 10001)
			a = i
			b = 0
			sumFactorsB = 0
			Factors(a).each {|x| b += x unless x == a}
			Factors(b).each {|x| sumFactorsB += x unless x == b}
			if(a == sumFactorsB && a != b)
				@result += a + b
				i = b + 1
			else
				i += 1
			end
		end
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