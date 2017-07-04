def sum_multiples_of_three_and_five(endpoint)
  sum = 0

  (1...endpoint).each do |number|
    if (number % 5 == 0) || (number % 3 == 0)
      sum += number
    end
  end

  sum
end
