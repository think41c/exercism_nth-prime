class Prime

  def self.nth(x)
    starting_numb = 1
    primes = []

    if x == 0 
      raise ArgumentError
    end
    
    until primes.length == x
      self.determine_if_prime
      # start_numb % (A range of numbers up to start_numb / 2) == 0  
      primes << 2 # Find a new prime number
      starting_numb += 1 
    end

    primes.last
  end

  def self.determine_if_prime
    puts "hi"
  end
end

p Prime.nth(2)
