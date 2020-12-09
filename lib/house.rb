class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price.gsub("$", '').to_i
    @address = address
    @rooms = []
  end

  def add_room (room)
    @rooms << room
  end

  def above_market_average?
  price >= 500000
  end

  def rooms_from_category(room_type)
    @rooms.select do |room|
        room.category == room_type
  end
  end

  def area
    rooms.each do |room|
      house_area += room.area
    end
  end

  def details
    details = {}
    p details["price"] = price
    p details["address"] = address
    details
  end

end
