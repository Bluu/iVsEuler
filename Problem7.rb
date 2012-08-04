# Problem 7

=begin

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?

=end

class Problem7

	def initialize
		@result = 0
	end

	def DoMath
		PrimeAtkin(1000000)
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
            
        primes = Array.new   
      	primes << 2 << 3
      	n = 5
      	for n in 2..limit do
          	if ( isPrime[n] )
              	primes << n
            end
        end
        @result = primes[10000]
	end

	attr_reader :result

end