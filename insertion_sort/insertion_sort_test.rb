require 'minitest/autorun'
require_relative 'insertion_sort'

class InsertionSortTest < Minitest::Test

  def test_nil_case
    assert_equal nil, InsertionSort.sort(nil)
  end

  def test_empty_array
    assert_equal [], InsertionSort.sort([])
  end

  def test_already_sorted_array
    assert_equal [1,2,3,4,5], InsertionSort.sort([1,2,3,4,5])
  end

  def test_sorting_scrambled_array
    assert_equal [1, 8, 10, 35, 78], InsertionSort.sort([78, 1, 10, 8, 35])
  end

  def test_sorting_an_array_that_is_in_reverse_order
    assert_equal [1, 8, 10, 17, 35, 78], InsertionSort.sort([78, 35, 17, 10, 8, 1])
  end
end
