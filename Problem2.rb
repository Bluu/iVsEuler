# Problem 2

=begin

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

=end

class Problem2

	def initialize
		@result = 0
	end

	def DoMath
		prevOne = 1
		prevTwo = 2
		while ( prevTwo < 4000000 )
			if ( prevTwo % 2 == 0 )
				@result += prevTwo
			end
			currentVal = prevOne + prevTwo
			prevOne = prevTwo
			prevTwo = currentVal
		end
	end

	attr_reader :result

end