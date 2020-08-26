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
    @price.reverse.chop.reverse.to_i > 500000
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
end
