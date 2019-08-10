require 'minitest/autorun'
require './lib/jungle_beat'

class JungleBeatTest < MiniTest::Test
  def setup
    @jb = JungleBeat.new
  end

  def test_does_it_exist
    assert_instance_of JungleBeat, @jb
  end

  def test_instance_variables
    assert_instance_of LinkedList, @jb.list
  end

  def test_main_functions
    assert_equal nil, @jb.list.head
    assert_equal "deep doo ditt", @jb.append("deep doo ditt")
    assert_equal "deep", @jb.list.head.data
    assert_equal "doo", @jb.list.head.next_node.data
    assert_equal "woo hoo shu", @jb.append("woo hoo shu")
    assert_equal 6, @jb.count
    assert @jb.play
  end
end
