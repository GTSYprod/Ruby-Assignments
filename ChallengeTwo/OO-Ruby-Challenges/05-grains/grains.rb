class Grains
  def self.square(square_number)
    raise ArgumentError, "Square must be between 1 and 64" unless (1..64).include?(square_number)
    2 ** (square_number - 1)
  end

  def self.total
    (1..64).sum { |square| 2 ** (square - 1) }
  end
end