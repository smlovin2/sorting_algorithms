module InsertionSort
  def self.sort(array)
    return if array.nil?

    sorted_array = []
    array.each do |sortee|
      insert_location = sorted_array.length
      sorted_array.reverse_each do |sorted|
        if sortee >= sorted
          break
        end
        insert_location = insert_location - 1
      end
      sorted_array.insert(insert_location, sortee)
    end

    sorted_array
  end
end
