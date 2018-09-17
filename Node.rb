class Node
  attr_accessor :data 
  attr_accessor :next
  def initialize(data)
    @data = data
    @next = nil
  end

  def to_s
    "Node Data: #{data}"
  end
end

