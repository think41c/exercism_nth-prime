# A prime number is divisble by 1 and itself only. 
# 2, 3, 5, 7, 11, 13, 17, 23, 29, etc

class Prime

  def self.nth(x)
    number = 1
    primes = []

    if x == 0 
      raise ArgumentError
    end
    
    until primes.length == x
      self.determine_if_prime(number)
      # start_numb % (A range of numbers up to start_numb / 2) == 0  
      primes << 2 # Find a new prime number
      number += 1 
    end

    primes.last
  end

  def self.determine_if_prime(number)
    p (2..40).any? { |x| 40%2==0 }
  end
end

p Prime.nth(2)
