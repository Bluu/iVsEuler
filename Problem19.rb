# Problem 19

=begin

You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end

require 'date'

class Problem19

	def initialize
		@result = 0
	end

	def DoMath
		startDate = Date.parse('1st Jan 1901')
		endDate = Date.parse('31st Dec 2000')

		sundays1stMonth = (startDate..endDate).to_enum.select { |d| (0.eql?(d.wday) and 1.eql?(d.mday))}
		
		@result = sundays1stMonth.count
	end

	attr_reader :result

end