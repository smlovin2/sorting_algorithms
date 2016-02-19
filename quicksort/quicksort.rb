module Quicksort
  def self.sort(array, low, high)
    if array.nil? || array.empty? || low >= high
      return array
    end

    partition_point = partition(array, low, high)

    sort(array, low, partition_point)
    sort(array, partition_point + 1, high)

    array
  end

  private

  def self.partition(array, low, high)
    pivot = median(array, low, high)

    loop do
      lower_index = low.upto(high).find do |i|
        array[i] >= pivot
      end

      higher_index = high.downto(low).find do |j|
        array[j] <= pivot
      end

      if lower_index >= higher_index
        return higher_index
      end
      swap(array, lower_index, higher_index)
    end
  end

  def self.median(array, low, high)
    middle = (low + high)/2

    if array[low] < array[middle]
      if array[low] >= array[high]
        return array[low]
      elsif array[middle] < array[high]
        return array[middle]
      end
    else
      if array[low] < array[high]
        return array[low]
      elsif array[middle] >= array[high]
        return array[middle]
      end
    end
    array[high]
  end

  def self.swap(array, i, j)
    array[i], array[j] = array[j], array[i]
  end
end
