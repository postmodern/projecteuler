class Integer

  def digits
    to_s.bytes.map { |i| i.chr.to_i }
  end

  def primes
    factors = []

    (2..self).each { |i|
      if factors.all? { |j| i % j != 0 }
        factors << i
      end
    }

    factors
  end

  def prime?
    primes.last == self
  end

  def factorial
    (1..self).inject { |accum,i| accum * i } || 1
  end

  def fib(&block)
  end

  def triangle
    (self * (self + 1)) * 0.5
  end

  def divisors
    (1...self).select { |i| self % i == 0 }
  end

  def perfect?
    self == divisors.sum
  end

end
