require 'minitest/autorun'
require_relative '../code/ruby_intro'

class TC_Part_2 < MiniTest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_concat
    assert_equal("Welcome, ", custom_concat(""))
    assert_equal("Welcome, Jerry", custom_concat("Jerry"))
    assert_equal("Welcome, to the Ruby world!", custom_concat("to the Ruby world!"))
  end

  def test_consonant
    assert_equal(false, initial_consonant?(""))
    assert_equal(false, initial_consonant?("12345"))
    assert_equal(false, initial_consonant?("12345hello"))
    assert_equal(true, initial_consonant?("hello12345"))
    assert_equal(true, initial_consonant?("HELLO RUBY"))
    assert_equal(true, initial_consonant?("hEllO worlD"))
    assert_equal(false, initial_consonant?("A dog"))
    assert_equal(false, initial_consonant?("English is easy"))
    assert_equal(false, initial_consonant?("Initialization is complete in 2 minutes."))
  end

  def test_divisible
    assert_equal(false, divisible_by_n?( "1", 0))
    assert_equal(false, divisible_by_n?("", 1))
    assert_equal(false, divisible_by_n?( "11", 2))
    assert_equal(false, divisible_by_n?( "1111211103002", 2))
    assert_equal(true, divisible_by_n?( "11101100111110", 2))
    assert_equal(true, divisible_by_n?( "101011001", 5))
    assert_equal(true, divisible_by_n?( "1000110000101", 13))
    assert_equal(false, divisible_by_n?( "0B1000110000101", 13))
    assert_equal(false, divisible_by_n?( "0b1000110000101", 13))
  end

  # # Fake test
  # def test_fail
  #
  #   fail('Not implemented')
  # end
end