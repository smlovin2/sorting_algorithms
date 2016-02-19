module Mergesort
  def self.sort(array)
    if array.nil? || array.empty? || array.size == 1
      return array
    end
    sorted_array = []

    left_sub_array = sort(array[0...array.length/2])
    right_sub_array = sort(array[array.length/2...array.length])

    while !left_sub_array.empty? || !right_sub_array.empty? do
      if left_sub_array.empty?
        sorted_array += right_sub_array
        right_sub_array = []
      elsif right_sub_array.empty?
        sorted_array += left_sub_array
        left_sub_array = []
      elsif left_sub_array.first < right_sub_array.first
        sorted_array << left_sub_array.shift
      else
        sorted_array << right_sub_array.shift
      end
    end

    sorted_array
  end
end
