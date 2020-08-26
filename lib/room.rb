class Room

  attr_reader :category, :length, :width

  def initialize(category,length,width)
    @category = category.to_sym
    @length = length
    @width = width.to_s
  end
end
