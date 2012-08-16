# Problem 67

=begin

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.

NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

=end

class Problem67

	def initialize
		@result = 0
	end

	def DoMath
		fileRows = Array.new
		File.open("Problems Data/Problem67.txt").each_line { |line| fileRows << line }

		newRow = Array.new
		while (fileRows.length != 1)
			rowAbove = fileRows[fileRows.length - 2].split(' ').map(&:to_i)

			if(newRow.empty?)
				rowBelow = fileRows[fileRows.length - 1].split(' ').map(&:to_i)
			else
				rowBelow = newRow
			end

			i = 0
			rowAbove.each do |num|
				sumRows = rowBelow[i..(i+1)].max + num
				rowAbove[i] = sumRows
				i += 1
			end
			newRow.clear
			newRow = rowAbove
			fileRows.delete_at(fileRows.length - 1)
		end
		@result = newRow[0]
	end

	attr_reader :result

end