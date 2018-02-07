require('pry')

class Number
  def initialize(number)
    @number = number
  end

  def to_word

    @digits = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    @eleven_to_nineteen = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

    @multiples_of_ten = {10 => "ten", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}

    if (@number.digits.count == 4)
      digit_array = @number.digits.reverse()
      dig1 = digit_array[0]
      dig2 = digit_array[1]
      dig3 = digit_array[2]
      dig4 = digit_array[3]
      word = thousands(dig1, dig2, dig3, dig4)
    elsif (@number.digits.count == 3)
      digit_array = @number.digits.reverse()
      dig1 = digit_array[0]
      dig2 = digit_array[1]
      dig3 = digit_array[2]
      word = hundreds(dig1, dig2, dig3)
    elsif (@number.digits.count == 2)
      digit_array = @number.digits.reverse()
      dig1 = digit_array[0]
      dig2 = digit_array[1]
      word = tens(dig1,dig2)
    else
      word = @digits.fetch(@number)
    end
    # word = eleven_to_nineteen.fetch(@number)
    word
    # word
  end

  def thousands(dig1, dig2, dig3, dig4)
    thousands = @digits.fetch(dig1) + " thousand " + hundreds(dig2,dig3,dig4)
    thousands
  end

  def hundreds(dig1, dig2, dig3)
    hundreds = @digits.fetch(dig1) + " hundred " + tens(dig2, dig3)
    hundreds
  end

  def tens(dig1, dig2)
    number = (dig1 * 10) + dig2
    if @eleven_to_nineteen.has_key?(number)
      tens = @eleven_to_nineteen.fetch(number)
    elsif @multiples_of_ten.has_key?(number)
      tens = @multiples_of_ten.fetch(number)
    else
      tens = @multiples_of_ten.fetch(dig1*10) + " " + @digits.fetch(dig2)
    end
    return tens
  end
end
