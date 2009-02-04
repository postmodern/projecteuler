module Math
  def Math.fib(&block)
    prev = 1
    current = 2

    block.call(prev)
    block.call(current)

    loop do
      j = prev + current

      block.call(j)

      prev = current
      current = j
    end

    return current
  end

  def Math.primes(&block)
    factors = []
    i = 2

    loop {
      if factors.all? { |j| i % j != 0 }
        factors << i

        if block.arity == 2
          block.call(i,factors)
        else
          block.call(i)
        end
      end

      i += 1
    }

    factors
  end
end
