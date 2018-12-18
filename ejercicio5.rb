# Class Morseable
class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    if number >= 0 && number <= 4
      hash_minus(number)
    else
      hash_point(number)
    end
  end

  def hash_minus(number)
    h = '-----'
    return h if number.zero?

    i = 0
    h.each_char do
      h[i] = '.'
      break if i == number - 1

      i += 1
    end
    h
  end

  def hash_point(number)
    h = '.....'
    n = number - 5
    return h if number == 5

    i = 0
    h.each_char do
      h[i] = '-'
      break if i == n - 1

      i += 1
    end
    h
  end

  def to_morse
    generate_hash(@number)
  end
end
m = Morseable.new(3)
print m.to_morse
