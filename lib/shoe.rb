require 'set'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = Set.new                #sets always contain unique elements
  
  def initialize(brand)
    @brand = brand
    BRANDS << @brand #we can update in step-one since each shoe instance has a brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end