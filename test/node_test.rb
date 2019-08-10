require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new('plop')
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_instance_variables_work
    assert_equal "plop", @node.data
    refute @node.next_node
  end
end
