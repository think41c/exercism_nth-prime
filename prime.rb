class Prime

  def self.nth(x)
    primes = []
    if x == 0 
      raise ArgumentError
    end
    
    until primes.length == x 
      primes.last
      primes << 0 # Find a new prime number
    end

    2
  end

end
