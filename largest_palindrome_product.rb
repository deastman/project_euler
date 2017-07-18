def largest_palindrome_product
  number_1 = 999
  largest_palindrome = 0

  while number_1 >= 100
    number_2 = number_1

    while number_2 >= 100
      product = number_1 * number_2

      if is_palindrome?(product) && (product > largest_palindrome)
        largest_palindrome = product
      end

      number_2 -= 1
    end

    number_1 -= 1
  end

  largest_palindrome
end

def is_palindrome?(number)
  number_as_string = number.to_s

  number_as_string.each_char.with_index(1) do |char, index|
    right_hand_pointer = number_as_string.length - index

    if char != number_as_string[right_hand_pointer]
      return false
    elsif right_hand_pointer - index <= 1
      return true
    end
  end
end
