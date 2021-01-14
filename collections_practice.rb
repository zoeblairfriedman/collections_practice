require 'pry'

def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort { |a,b| b <=> a}
end

def sort_array_char_count(array)
    array.sort_by{|word| word.length}
end

def swap_elements(array)
    a = array[1]
    b = array[2]
    array[2] = a 
    array[1] = b 
    array
end

def swap_elements_from_to(array, index, destination_index)
    a = array[index]
    b = array[destination_index]
    array[destination_index] = a 
    array[index] = b 
    array
end

# swap_elements_from_to(["a", "b", "c"],0,2)
# swap_elements_from_to(["a", "b", "c"],2,1)

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    kesha_array = []
    array.each do |word|
        letters = word.split("")
        letters[2] = "$"
        new_word = letters.join
        kesha_array << new_word
    end
    kesha_array
end

def find_a(array)
array.select { |word| word.start_with? "a" }
end

def sum_array(array)
    array.inject {|sum, number| sum + number}
end

def add_s(array)
 i = 0
 while i < array.length
    array[i] = array[i] + "s" unless i == 1
    i += 1
 end
 array
end
