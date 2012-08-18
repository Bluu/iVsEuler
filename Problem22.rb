# Problem 22

=begin

Using Problem22.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

What is the total of all the name scores in the file?

=end

class Problem22

	def initialize
		@result = 0
	end

	def DoMath
		fileNames = ""
		File.foreach("Problems Data/Problem22.txt") { |line| fileNames << line.delete("\"")}
		arrFileNames = fileNames.split(',').sort
		arrFileNames.each_with_index { |val, index| @result += (AlphabeticalValue(val) * (index + 1)) } 
	end

	def AlphabeticalValue(word)
		wordValue = 0
		wordSplit = word.split('')
		wordSplit.each { |x| wordValue += LetterValue(x) }
		return wordValue
	end

	def LetterValue(letter)
		case(letter.upcase)
			when "A"
				return 1
			when "B"
				return 2
			when "C"
				return 3
			when "D"
				return 4
			when "E"
				return 5
			when "F"
				return 6
			when "G"
				return 7
			when "H"
				return 8
			when "I"
				return 9
			when "J"
				return 10
			when "K"
				return 11
			when "L"
				return 12
			when "M"
				return 13
			when "N"
				return 14
			when "O"
				return 15
			when "P"
				return 16
			when "Q"
				return 17
			when "R"
				return 18
			when "S"
				return 19
			when "T"
				return 20
			when "U"
				return 21
			when "V"
				return 22
			when "W"
				return 23
			when "X"
				return 24
			when "Y"
				return 25
			when "Z"
				return 26
			else
				return 0
		end
	end

	attr_reader :result

end