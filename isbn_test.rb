def valid_isbn(isbn)

  sum = 0
  isbn.each_with_index do |num, i|
    if i < isbn.length-1
      digit = num.to_i
      if 0 > digit || 9 < digit
        return false
      end
      sum += (digt * (10-i))
    end
  end
  last = isbn.last
  if (last != 'X' && (last.to_i < 0 || last.to_i > 9))
    return false
  end
  sum += ((last == 'X') ? 10 : last.to_i)
  return sum % 11 == 0

end

puts "Test 1:"
valid_isbn("3-598-21508-8")
puts "Test 2:"
valid_isbn("3-598-21508-9")
puts "Test 3:"
valid_isbn("3-598-21507-X")
puts "Test 4:"
valid_isbn("3-598-21507-A")
puts "Test 5:"
valid_isbn("3-598-P1581-X")
puts "Test 6:"
valid_isbn("3-598-2X507-9")
puts "Test 7:"
valid_isbn("3598215088")
puts "Test 8:"
valid_isbn("359821507X")
puts "Test 9:"
valid_isbn("98245726788")
puts "Test 10:"
valid_isbn("3-598P-21508-8")
puts "Test 11:"
valid_isbn("134456729")