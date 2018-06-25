# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue ArgumentError => e
  e.message
  return nil
end


# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else 
    raise FruitError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
rescue CoffeeError => e
  p e.message
  retry
rescue FruitError => e
  p e.message
end  

class FruitError < StandardError
  def message
    "Not a fruit"
  end
end

class CoffeeError < StandardError
  def message
    "Coffe is not a fruit"
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime = nil)
    raise StandardError if yrs_known < 5
    @name = name
    @yrs_known = yrs_known
    raise DescriptiveError if fav_pastime.nil?
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

class DescriptiveError < StandardError
  def message
    "Description is error"
  end
end
