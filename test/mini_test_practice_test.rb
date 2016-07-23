require 'test_helper'
#require 'mini_test_practice'

class MiniTestPracticeTest < Minitest::Test
  def setup
    @main = ::MiniTestPractice::Main.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_odd?
    assert_equal false, @main.odd?(-10000), '-10000 is not odd'
    assert_equal false, @main.odd?(-2), '-2 is not odd'
    assert_equal true, @main.odd?(-1), '-1 is not odd'
    assert_equal false, @main.odd?(0), '0 is not odd'
    assert_equal true, @main.odd?(1), '1 is odd'
    assert_equal false, @main.odd?(2), '2 is not odd'
    assert_equal false, @main.odd?(10000), '10000 is not odd'
    assert_equal true, @main.odd?(3), '3 is odd'
    refute @main.odd?(4), '4 is not odd'
    assert @main.odd?(5), '5 is odd'
    refute @main.odd?(6), '6 is not odd'
    assert @main.odd?(7), '7 is odd'
  end
end
