# Problem 10

=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.

=end

class Problem10

	def initialize
		@result = 0
	end

	def DoMath
		PrimeAtkin(2000000)
	end

	def PrimeAtkin(limit)
		isPrime = Array.new(limit+1)
		sqrt = Integer(Math.sqrt(limit))
		for x in 1..sqrt do
			for y in 1..sqrt do
				n = (4 * x * x) + (y * y)
				if ( (n <= limit) && ((n % 12 == 1) || (n % 12 == 5)) )
                  	isPrime[n] ^= true
                end

              	n = (3 * x * x) + (y * y)
              	if ( (n <= limit) && (n % 12 == 7) )
                  	isPrime[n] ^= true
                end

              	n = (3 * x * x) - (y * y)
              	if ( (x > y) && (n <= limit) && (n % 12 == 11) )
                  	isPrime[n] ^= true
                end
			end
		end
		p = 5
		for p in 1..sqrt do
	       	if ( isPrime[p] )
              	s = p * p
              	k = s
              	while ( k < limit )
                  	isPrime[k] = false
                  	k += s
               	end 
	        end
        end
            
      	n = 5
      	primesSum = 5
      	for n in 2..limit do
          	if ( isPrime[n] )
              	primesSum += n
            end
        end
        @result = primesSum
	end

	attr_reader :result

end