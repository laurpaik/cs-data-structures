# frozen_string_literal: true

# A LinkedList class
class LinkedList
  # a node in the list
  class Node
    attr_accessor :val, :succ

    # by default, the successor is nil
    def initialize(val, succ = nil)
      @val = val
      @succ = succ
    end
  end

  def initialize(val)
    @head = Node.new(val, nil)
  end

  def append(val)
    current = head
    current = current.succ while current.succ
    current.succ = Node.new(val, nil)
  end

  def prepend(val)
    head.val = val
    # without self, it can't tell if head is the local variable or the method
    # moves head down one
    self.head = Node.new(nil, head)
    self
  end

  def to_s
    node = head.succ
    result = ''
    while node
      result += (result.empty? ? '' : ', ') + node.val.to_s
      node = node.succ
    end
    result
  end

  # def remove(val)
  #   current.succ = @head
  #   if current.val = val
  #     @head = current.succ
  #   else
  #     while (current.succ != nil) && (current.succ.val != val)
  #       current = current.succ
  #     end
  #     unless current.succ == nil
  #       current.succ = current.succ.next
  #     end
  #   end
  # end
end
