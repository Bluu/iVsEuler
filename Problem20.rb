# Problem 20

=begin

n! means n  (n  1)  ...  3  2  1

For example, 10! = 10  9  ...  3  2  1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

=end

class Problem20

	def initialize
		@result = 0
	end

	def DoMath
		@result = fact(100).to_s.split("").inject(0) { |sum, n| sum + n.to_i }
	end

	def fact(n) (1..n).inject(1) {|r,i| r*i } end

	attr_reader :result

end