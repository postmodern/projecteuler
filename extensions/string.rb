class String

  def unquote
    gsub(/(^\"|\"$)/,'')
  end

  def word_value
    sum = 0

    upcase.each_byte { |b| sum += (b - 'A'[0]) + 1 }

    sum
  end

end
