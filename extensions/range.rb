class Range

  def reverse_each(&block)
    (0..(self.end - self.begin)).each { |i|
      block.call(self.end - i)
    }

    self
  end

end
