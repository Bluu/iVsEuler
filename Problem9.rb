# Problem 9

=begin

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

class Problem9

	def initialize
		@result = 0
	end

	def DoMath
		for a in 1..1000
			for b in 1..1000
				c = Math.sqrt((a * a) + (b * b))
				if ((a + b + c) == 1000)
					@result = Integer(a * b * c)
					break
				end
			end
			if (@result != 0)
				break
			end
		end
	end

	attr_reader :result

end