# Problem 3

=begin

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?

=end

class Problem3

	def initialize
		@result = 0
	end

	def DoMath
		i = 3
		numToFact = 600851475143
		begin
			if ( numToFact % i == 0 )
				if ( @result < i )
					@result = i
				end
				numToFact = numToFact / i
			end
			if ( numToFact != 1 )
				i += 2
			else
				i = 0
			end
		end while (i != 0)
	end

	attr_reader :result

end