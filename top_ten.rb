class TopTen
  require 'terrace'

  attr_reader :terraces

  def initialize(amount = 10)
    @amount = amount
    create_terraces
  end

  def by_size
    sorted = terraces.sort { |t1, t2| t1.size <=> t2.size }

    sorted.map(&:size).reverse
  end

  def create_terraces
    @amount.times do
      length = rand(1..10)
      width  = rand(1..10)

      terraces << Terrace.new(length, width)
    end
  end

  def terraces
    @terraces ||= []
  end
end
