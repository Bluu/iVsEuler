# Problem 15

=begin

Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
How many routes are there through a 20x20 grid?

=end

class Problem15

	def initialize
		@result = 0
	end

	def DoMath
		# PERMUTACIONES DE n ELEMENTOS DE LOS CUALES p1 SON DE UN TIPO, p2 SON DE OTRO TIPO, ¼ , pk SON DE OTRO TIPO, DONDE p1+p2+...+pk=n
		# X = (n+n)! / (n! x n!)
		n = 20
		@result = (fact(n + n) / (fact(n) * fact(n)))
	end

	def fact(n) (1..n).inject(1) {|r,i| r*i } end

	attr_reader :result

end