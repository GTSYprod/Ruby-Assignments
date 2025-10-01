class Pangram
  def self.is_pangram?(str)
    str.downcase.scan(/[a-z]/).uniq.size == 26
  end
end