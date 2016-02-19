require 'minitest/autorun'
require_relative 'selection_sort'

class SelectionSortTest < Minitest::Test

  def test_nil_case
    assert_equal nil, SelectionSort.sort(nil)
  end

  def test_empty_array
    assert_equal [], SelectionSort.sort([])
  end

  def test_already_sorted_array
    assert_equal [1,2,3,4,5], SelectionSort.sort([1,2,3,4,5])
  end

  def test_sorting_scrambled_array
    assert_equal [1, 8, 10, 35, 78], SelectionSort.sort([78, 1, 10, 8, 35])
  end

  def test_sorting_an_array_that_is_in_reverse_order
    assert_equal [1, 8, 10, 17, 35, 78], SelectionSort.sort([78, 35, 17, 10, 8, 1])
  end
end
