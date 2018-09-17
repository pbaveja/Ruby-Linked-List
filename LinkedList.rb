class LinkedList
  def initialize
    @head = nil
  end

  def append(data)
    if @head
      find_tail.next = Node.new(data)
    else
      @head = Node.new(data)
    end
  end
 
 def find(data)
    node = @head
    return false if !node.next
    return node if node.data == data
    while (node = node.next)
      return node if node.data == data
    end
  end

  def delete(data)
    if @head.data == data
      @head = @head.next
      return
    end
    node = find_before(data)
    node.next = node.next.next
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end
  
  def append_after(target, data)
    node = find(target)
    return unless node
    old_next       = node.next
    node.next      = Node.new(data)
    node.next.next = old_next
  end

  def find_before(data)
    node = @head
    return false if !node.next
    return node  if node.next.data == data
    while (node = node.next)
      return node if node.next && node.next.data == data
    end
  end
  
  def print
    node = @head
    puts node
    while (node = node.next)
      puts node
    end
  end
end