class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times 

  end

end

puppy1 = Puppy.new


puppy1.fetch("ball")