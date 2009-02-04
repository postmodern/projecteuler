class Array

  def sum
    reduce(0) { |i,j| i + j }
  end

  def joint_product
    reduce { |i,j| i * j } || 0
  end

end
