# A prime number is divisble by 1 and itself only. 
# 2, 3, 5, 7, 11, 13, 17, 23, 29, etc

class Prime

  def self.nth(x)
    number = 3
    primes = []

    if x == 0 
      raise ArgumentError
    end
    
    until primes.length == x
      if self.determine_if_prime(number) 
        puts "#{number} is NOT prime"
      else
        puts "#{number} it prime"
      end

      primes << 2 # Find a new prime number
      number += 1 
    end

    primes.last
  end

  def self.determine_if_prime(number)
    p "#{number} - is being checked now"
    p (2..(number/2)).any? { |x| # number/2, b/c no need to go further than half the number being checked for prime
      puts "I'm dividing #{number} by #{x}."
      number % x == 0 }
    # end
      
  end
end

p Prime.nth(6)
