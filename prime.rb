class Prime

  def self.nth(x)
    primes = []
    if x == 0 
      raise ArgumentError
    end
    
    until primes.length == x 
      primes << 2 # Find a new prime number
    end

    primes.last
  end

end
