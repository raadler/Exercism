module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(n)
    unless n > 0
      raise ArgumentError, 'You must list a number greater than 0'
    end
    n = n.to_f
    if n < 6
      #formula below doesn't work for the first 5 primes, so the first 5 are hard-coded
      primes = [2, 3, 5, 7, 11]
    else
      primes = []
      composites = {}
      #formula for estimating nth primes where n > 5
      estimate = n * Math.log(n) + n * Math.log(Math.log(n))
      (2..estimate).each do |current| #the rest is my code from sieve
       if composites[current]
         next
       else
         primes << current
         counter = 2
         while (counter * current <= estimate)
           composites[(counter * current)] = true
           counter += 1
         end
       end
     end
   end
   primes[n-1]
  end
end
