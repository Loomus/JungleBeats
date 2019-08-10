class Node
    attr_accessor :data,
                :next_node

  def initialize(string)
    @data = string
    @next_node = nil
  end
end
