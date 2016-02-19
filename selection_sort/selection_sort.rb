module SelectionSort
  def self.sort(list)
    return if list.nil?

    list.each_index do |i|
      cur_min_index = i
      offset = i + 1
      list.drop(offset).each_index do |j|
        cur_min_index = j+offset if list[j+offset] < list[cur_min_index]
      end
      tmp = list[i]
      list[i] = list[cur_min_index]
      list[cur_min_index] = tmp
    end

    list
  end
end
