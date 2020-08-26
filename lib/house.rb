require './lib/room'


class House

  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    rooms << room
  end

  def above_market_average?
    (@price.delete "$").to_i > 500000
  end

  def rooms_from_category(category)
    @rooms.find_all {|room| room.category == category}
  end

  def area
    sum = 0
    rooms.length.times do |room|
      sum += rooms[room].area
    end
    sum
  end

  def details
    hashed = {}
    hashed["price"] = (@price.delete "$").to_i
    hashed["address"] = @address
    hashed
  end

  def price_per_square_foot
    ((@price.delete "$").to_f/area.to_f).round(2)
  end

  def rooms_sorted_by_area
    #require 'pry'; binding.pry
    @rooms = (@rooms.sort_by{|room| room.area}).reverse
  end

  def rooms_sorted_by_category
    @rooms = (@rooms.sort_by{|room| room.category})
    require 'pry'; binding.pry
  end
end
