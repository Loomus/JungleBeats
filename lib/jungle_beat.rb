require './lib/linked_list'

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    string.split(" ").each do |word|
      @list.append(word)
    end
    return string
  end

  def count
    @list.count
  end

  def play
    string = @list.to_string
    p `say -r 500 #{string}`
  end
end
