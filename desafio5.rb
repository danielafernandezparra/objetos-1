class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
      return nil if number < 0 || number > 9
      h = { number => "#{'.' * number}#{'-' * (5 - number)}" } if number <= 5
      h = { number => "#{'-' * (number - 5)}#{'.' * (10 - number)}" } unless number <= 5
      h
    end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
print "\n"
print m.generate_hash 2
