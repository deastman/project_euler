def summation_of_primes(n)
  sum = 0

  (2...n).each do |i|
    if is_prime?(i)
      sum += i
    end
  end

  sum
end

def is_prime?(n)
  # 2 is the smallest prime
  return false if n < 2

  2.upto(Math.sqrt(n)) do |i|
    return false if n % i == 0
  end

  true
end
