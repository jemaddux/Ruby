class Even
  def self.how_many_evens_upto(number)
    evens = (2..number).each_with_object([]) do |num, evens|
      evens << num if num % 2 == 0
    end
    puts evens.count
  end
end

Even.how_many_evens_upto(4)
