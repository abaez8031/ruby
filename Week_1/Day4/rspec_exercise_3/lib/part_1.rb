def is_prime?(num)
  return false if num < 2
  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

def nth_prime(n)
  primes = []
  i = 0
  while primes.length < n
    primes << i if is_prime?(i)
    i += 1
  end
  primes[-1]
end

def prime_range(min, max)
  primes = []
  (min..max).each do |num|
    primes << num if is_prime?(num)
  end
  primes
end