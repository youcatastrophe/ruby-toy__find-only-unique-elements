require 'test_helper'
require 'unique_elements'

class UniquenessTest < Minitest::Test
  def test_default_case
    test_array = ["one"]
    result = find_unique_elements(test_array)

    assert_equal(1, result.length)
    assert_includes(result, "one")
  end

  def test_simple_duplicate_case
    # No unique elements
    test_array = ["one", "one"]
    result = find_unique_elements(test_array)

    assert_empty(result)
  end

  def test_mixed_numbers_and_string
    test_array = [1, 2, "three", "three"]
    result = find_unique_elements(test_array)

    assert_includes(result, 1)
    assert_includes(result, 2)
    refute_includes(result, "three")
  end

end
