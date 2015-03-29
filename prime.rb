# A prime number is divisble by 1 and itself only. 
# 2, 3, 5, 7, 11, 13, 17, 23, 29, etc

class Prime

  def self.nth(x)
    number = 2
    primes = []

    if x == 0 
      raise ArgumentError
    end
    
    until primes.length == x
      if self.prime?(number) 
        primes << number
      end
      number += 1 
    end

    primes.last
  end

  def self.prime?(number)
    upper_range = number/2
    (2..upper_range).none? { |x| number % x == 0 }
  end
end

p Prime.nth(7)
