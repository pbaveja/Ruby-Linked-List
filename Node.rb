class Node
  attr_accessor :data 
  attr_accessor :pointer
  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end
end