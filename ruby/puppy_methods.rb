#Release 0
class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do |x|
    puts "Woof!"
    end
  end
  
  def roll_over(command)
    puts "roll over #{command}"
  end
  
  def dog_years(age)
    age.to_i * 7
  end
  
  def shake(command)
    puts "shake #{command}"
  end
  
end

puppy1 = Puppy.new
#Driver code
puppy1.fetch("ball")
p puppy1.speak(5)
p puppy1.roll_over("Doggy")
p puppy1.dog_years(2)
p puppy1.shake("Doggy")