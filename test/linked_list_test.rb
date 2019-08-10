require 'minitest/autorun'
require './lib/linked_list'

class LinkedListTest < MiniTest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_does_it_exist
    assert_instance_of LinkedList, @linked_list
  end

  def test_instance_variables
    refute @linked_list.head
  end

  def test_append
    node = @linked_list.append("doop")
    assert_instance_of Node, node
    refute @linked_list.head.next_node
    assert_equal 1, @linked_list.count
    assert_equal "doop", @linked_list.to_string
  end

  def test_append_second_node
    first_node = @linked_list.append("doop")
    second_node = @linked_list.append("deep")

    assert_equal second_node, @linked_list.head.next_node
    assert_equal 2, @linked_list.count
    assert_equal "doop deep", @linked_list.to_string
  end

  def test_prepend_method
    node_a = @linked_list.append("plop")
    node_b = @linked_list.append("suu")
    node_c = @linked_list.prepend("dop")

    assert_equal "dop", node_c.data
    assert_equal "dop plop suu", @linked_list.to_string
    assert_equal 3, @linked_list.count
  end

  def test_insert_method
    node_a = @linked_list.append("plop")
    node_b = @linked_list.append("suu")
    node_c = @linked_list.prepend("dop")
    node_d = @linked_list.insert(1, "woo")

    assert_equal "woo", node_d.data
    assert_equal "dop woo plop suu", @linked_list.to_string
  end

  def test_find_method
    node_a = @linked_list.append("deep")
    node_b = @linked_list.append("woo")
    node_c = @linked_list.append("shi")
    node_d = @linked_list.append("shu")
    node_e = @linked_list.append("blop")

    assert_equal 'shi', @linked_list.find(2,1)
    assert_equal 'woo shi shu', @linked_list.find(1,3)
  end

  def test_includes_method
    node_a = @linked_list.append("deep")
    node_b = @linked_list.append("woo")
    node_c = @linked_list.append("shi")
    node_d = @linked_list.append("shu")
    node_e = @linked_list.append("blop")

    assert @linked_list.includes?('deep')
    refute @linked_list.includes?('dep')
  end

  def test_pop_method
    node_a = @linked_list.append("deep")
    node_b = @linked_list.append("woo")
    node_c = @linked_list.append("shi")
    node_d = @linked_list.append("shu")
    node_e = @linked_list.append("blop")

    assert_equal 'blop', @linked_list.pop
    assert_equal 'shu', @linked_list.pop
    assert_equal 'deep woo shi', @linked_list.to_string
  end
end
