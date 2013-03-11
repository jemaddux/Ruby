class PrimeNumber
  def find_up_to(input)
    primes = []
    (0..input).each do |number|
      if number%2==0

      else
        prime = true
        (0..10).each do |sub|
          prime = false
        end
        if prime == true
          puts number
        end
      end
    end
  end
end

PrimeNumber.new.find_up_to(30)
