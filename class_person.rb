class Person

  attr_accessor :name, :hair_color, :height, :smiling 

  # # Instance Variables
  # def initialize
  #   @name = nil
  #   @hair_color = nil
  #   @height = 0.0
  #   @top_color = nil
  #   @smiling = false
  # end

  # # Setter instance methods

  # def set_name(name)
  #   @name = name
  # end

  # def set_hair_color(color)
  #   @hair_color = color
  # end

  # def set_top_color(color)
  #   @top_color = color
  # end

  # def set_height(h)
  #   @height = h
  # end

  # def set_smiling(smiling)
  #     @smiling = smiling
  # end

  # # Getter instance methods
  # def get_name 
  #   return @name
  # end

  # def get_hair_color
  #   return @hair_color
  # end

  # def get_top_color
  #   return @top_color
  # end

  # def get_height
  #   return @height
  # end

  # def get_smiling
  #   return @smiling
  # end

  # Instance Methods
  def dance
    return 'Dancing'
  end

  def sleep
    return 'Sleeping'
  end

  def who_am_i
    word = (get_smiling == false) ? '' : " I am smiling!"
    return "My name is #{@name}, I am #{@height}cm tall, have #{@hair_color} hair and wearing a #{@top_color}." + word
    

  end
end
