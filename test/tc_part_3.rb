require 'minitest/autorun'
# require 'test/unit'
require_relative '../code/ruby_intro'

class TC_Part_3 < MiniTest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
    @car = Car.new("honda", 1)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  def test_formatted_price
    @car.price = 200000000000000
    assert_equal("200000000000000 dollars only", @car.formatted_price)
    @car.price = 2000000000000.99
    assert_equal("2000000000000 dollars and 99 cents only", @car.formatted_price)
    @car.price = 1.01
    assert_equal("1 dollar and 1 cent only", @car.formatted_price)
    @car.price = 0.60
    assert_equal("60 cents only", @car.formatted_price)
    @car.price = 0.10
    assert_equal("10 cents only", @car.formatted_price)
    @car.price = 0.01
    assert_equal("1 cent only", @car.formatted_price)
    @car.price = 0.1
    assert_equal("10 cents only", @car.formatted_price)
    @car.price = 4611686018427387902.99
    assert_equal("4611686018427387902 dollars and 99 cents only", @car.formatted_price)
    @car.price = 1.00
    assert_equal("1 dollar only", @car.formatted_price)
  end

  def test_Error
    assert_raises(ArgumentError){Car.new("", 100)}
    assert_raises(ArgumentError){Car.new("honda", 0)}
    assert_raises(ArgumentError){Car.new("toyota", -100)}
  end

  # # Fake test
  # def test_fail
  #
  #   fail('Not implemented')
  # end
end