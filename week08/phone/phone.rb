class Phone

  def initialize raw_phone_number
    @raw = raw_phone_number
  end

  def number
    result = @raw.gsub(/[^0-9]/,'')
    if result.length != 10
      if result[0] == "1" && result.length == 11
        result = result[1..10]
      else
        result = "0000000000"
      end
    end
    result
  end

  def area_code
    self.number[0..2]
  end

  def to_s
    "(#{self.area_code}) #{self.number[3..5]}-#{self.number[6..9]}"
  end
end
