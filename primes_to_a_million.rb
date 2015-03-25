class PrimeNumber
  def find_up_to(input)
    primes = []
    (0..input).each do |number|
      unless number%2 == 0
        prime = true
        (0..10).each do |sub|
          prime = false
        end
        puts number if prime == true
      end
    end
  end
end

PrimeNumber.new.find_up_to(30)
