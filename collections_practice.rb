# your code goes here
require 'pry'

def begins_with_r(array)
  value = nil
  array.each do |element|
    if element[0] == "r"
      value = true
    else 
      value = false
    end
  end
  value
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end 

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end 

def remove_non_strings(array)
  array.select do |element|
    element.is_a? String 
  end
end

def count_elements(array)
  new_array = Array.new
  array.uniq.select do |hash|
    hash[:count] = array.count(hash)
    new_array << hash
  end
  new_array
end

def merge_data(keys, data)
  new_array = []
  i = 0 
  data.each do |hash|
    hash.each do |name, value_hash|
      new_array << value_hash.merge(keys[i])
      i += 1
    end 
  end 
  new_array
end 

def find_cool(hash)
  hash.select do |person, temperature|
    person[:temperature] == "cool"
  end
end

def organize_schools(data)
  location_hash = {}

  data.values.each do |value_hash| 
    location = value_hash.values.first
    location_hash[location] = []
  end

  location_hash.each do |k, v|
    data.each do |key, value|
      if k == value[:location]
        location_hash[k] << key
      end
    end
  end

  location_hash
end 

