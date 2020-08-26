class Room

  attr_reader :category, :length, :width

  def initialize(category,length,width)
    @category = category.to_sym
    @length = length
    @width = width.to_s
  end

  def area
    length * width.to_i
  end
end
