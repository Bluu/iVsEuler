# Problem 4

=begin
	
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
Find the largest palindrome made from the product of two 3-digit numbers.
	
=end

class Problem4

	def initialize
		@result = 0
	end

	def DoMath
		i = 999
		product = 0
		while ( i > 99 )
			u = i
			while ( u > 99 )
				product = i * u
				if ( product.to_s() == product.to_s().reverse )
					if ( @result < product )
						@result = product
					end
				end
				u -= 1
			end
			i -= 1
		end
	end

	attr_reader :result

end