class Bob
  def hey(remark)
    remark = remark.strip

    return "Fine. Be that way!" if remark.empty?

    is_question = remark.end_with?("?")
    is_yelling = remark.match?(/[A-Z]/) && remark.upcase == remark && remark.downcase != remark

    if is_yelling
      "Whoa, chill out!"
    elsif is_question
      "Sure."
    else
      "Whatever."
    end
  end
end