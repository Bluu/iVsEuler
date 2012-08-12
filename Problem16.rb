# Problem 16

=begin

215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
What is the sum of the digits of the number 21000?

=end

class Problem16

	def initialize
		@result = 0
	end

	def DoMath
		var = 2**1000
		@result = var.to_s.split("").inject(0) { |sum, n| sum + n.to_i }
	end

	attr_reader :result

end