class Even
  def self.how_many_evens_upto(number)
    evens = []
    (0..number).each do |num|
      if num % 2 == 0
        evens << num
      end
    end
    puts evens.count
  end
end

Even.how_many_evens_upto(1_000_000)
