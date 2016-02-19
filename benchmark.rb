require 'benchmark'
require_relative 'insertion_sort/insertion_sort'
require_relative 'selection_sort/selection_sort'
require_relative 'mergesort/mergesort'
require_relative 'quicksort/quicksort'

array_size = 10000
test_array = Array.new(array_size) {rand(array_size)}

ordered_array = (1..array_size).to_a
reverse_array = ordered_array.reverse

Benchmark.bmbm do |x|
  x.report("insertion_sort") {InsertionSort.sort(test_array)}
  x.report("selection_sort") {SelectionSort.sort(test_array)}
  x.report("mergesort") {Mergesort.sort(test_array)}
  x.report("quicksort") {Quicksort.sort(test_array, 0, test_array.size - 1)}
  x.report("insertion_sort with ordered array") {InsertionSort.sort(ordered_array)}
  x.report("selection_sort with ordered array") {SelectionSort.sort(ordered_array)}
  x.report("mergesort with ordered array") {Mergesort.sort(ordered_array)}
  x.report("quicksort with ordered array") {Quicksort.sort(ordered_array, 0, ordered_array.size - 1)}
  x.report("insertion_sort with reverse array") {InsertionSort.sort(reverse_array)}
  x.report("selection_sort with reverse array") {SelectionSort.sort(reverse_array)}
  x.report("mergesort with reverse array") {Mergesort.sort(reverse_array)}
  x.report("quicksort with reverse array") {Quicksort.sort(reverse_array, 0, reverse_array.size - 1)}
end
