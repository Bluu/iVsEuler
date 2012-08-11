# Problem 14

=begin

The following iterative sequence is defined for the set of positive integers:
n  n/2 (n is even)
n  3n + 1 (n is odd)
Using the rule above and starting with 13, we generate the following sequence:
13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
Which starting number, under one million, produces the longest chain?
NOTE: Once the chain starts the terms are allowed to go above one million.

=end

class Problem14

	def initialize
		@result = 0
	end

	def DoMath
		chain = 1
		startNum = 1000000
		currentNum = startNum
		num = 0
		i = 1
		while (i != 0)
			if(currentNum.odd?)
				currentNum = (3 * currentNum) + 1
			else
				currentNum = currentNum / 2
			end
			chain += 1
			if (currentNum == 1)
				startNum -= 1
				currentNum = startNum
				chain = 1
			end
			if(@result < chain)
				@result = chain
				num = startNum
			end
			if(startNum < 800000)
				i = 0
			end
		end
		@result = num
	end

	attr_reader :result

end