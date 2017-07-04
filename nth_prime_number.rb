def nth_prime_number(n)
  primes_found = 1
  i = 2

  while (primes_found < n) do
    if !is_multiple_of_2?(i)
      if is_prime?(i)
        primes_found += 1
      end
    end

    i += 1
  end

  i - 1
end

def is_prime?(n)
  # 2 is the smallest prime
  return false if n < 2

  2.upto(Math.sqrt(n)) do |i|
    return false if n % i == 0
  end

  true
end

def is_multiple_of_2?(n)
  n % 2 == 0
end
