class Meetup 
  attr_reader :name, :image, :description, :link 
  def initialize(attributes={})
    @name = attributes[:name]
    @image = attributes[:image]
    @description = attributes[:description]
    @link = attributes[:link]
  end
end