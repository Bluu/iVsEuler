# Problem 17

=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

class Problem17

	def initialize
		@result = 0
	end

	def DoMath
		numsInWords = ""
		for i in 1..1000
			numsInWords << numToWord(i)
		end
		@result = numsInWords.delete(' ').length
	end

	def numToWord(n)
		word = ""
		case n
			when 1
				word << "one "
			when 2
				word << "two "
			when 3
				word << "three "
			when 4
				word << "four "
			when 5
				word << "five "
			when 6
				word << "six "
			when 7
				word << "seven "
			when 8
				word << "eight "
			when 9
				word << "nine "
			when 10
				word << "ten "
			when 11
				word << "eleven "
			when 12
				word << "twelve "
			when 13
				word << "thirteen "
			when 14
				word << "fourteen "
			when 15
				word << "fifteen "
			when 16
				word << "sixteen "
			when 17
				word << "seventeen "
			when 18
				word << "eighteen "
			when 19
				word << "nineteen "
			when 20
				word << "twenty "
			when 30
				word << "thirty "
			when 40
				word << "forty "
			when 50
				word << "fifty "
			when 60
				word << "sixty "
			when 70
				word << "seventy "
			when 80
				word << "eighty "
			when 90
				word << "ninety "
			else
				if (n == 1000)
					word << "one thousand"
				end
				if (n < 1000 && n > 100)
					firstDigit, secondDigit, thirdDigit = n.to_s.split('')
					word << numToWord(Integer(firstDigit))
					word << "hundred "
					if(secondDigit != "0" || thirdDigit != "0")
						word << "and " + numToWord(Integer((secondDigit + thirdDigit), 10))
					end
				end
				if (n == 100)
					word << "one hundred "
				end
				if (n < 100 && n > 20)
					firstDigit, secondDigit = n.to_s.split('')
					if (secondDigit != "0")
						word << numToWord(Integer(firstDigit + "0"))
						word << numToWord(Integer(secondDigit))
					end
				end
		end
		return word
	end

	attr_reader :result

end