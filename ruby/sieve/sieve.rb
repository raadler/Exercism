 module BookKeeping
   VERSION = 1
 end
 class Sieve
   attr_reader :number

   def initialize(number)
     @number = number
     @primes_array = []
     @composites = {}
   end

   def primes
     unless number < 2
       (2..number).each do |current|
         if @composites[current]
           next
         else
           @primes_array << current
           counter = 2
           while (counter * current <= number)
             @composites[(counter * current)] = true
             counter += 1
           end
         end
       end
     end
     @primes_array
   end
 end
