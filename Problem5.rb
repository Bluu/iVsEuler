# Problem 5

=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

class Problem5
	
	def initialize
		@result = 0
	end

	def DoMath
		i = 2520
		j = 11
		timesTrue = 0
		begin
            begin
	            if ( i % j == 0 )
	             	timesTrue += 1
	            end
	            j += 1
            end while ( j < 21 )
            if ( timesTrue == 10 )
                @result = i
                i = 0
            else
                timesTrue = 0
                j = 11
                i += 2520
            end
		end while ( i != 0 )
	end

	attr_reader :result

end