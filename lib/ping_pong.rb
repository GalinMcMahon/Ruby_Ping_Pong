class Fixnum
  define_method(:ping_pong) do
    numbers = (1..self)
    numbers_array = []
    numbers.each() do |number|
      if number.%(15)== 0
        numbers_array.push("ping-pong")
      elsif number.%(3)== 0
        numbers_array.push("ping")
      elsif number.%(5)== 0
        numbers_array.push("pong")
      else
        numbers_array.push(number)
      end
    end
    numbers_array
  end
end
