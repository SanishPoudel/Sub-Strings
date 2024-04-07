dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Enter text for evaluation:"
text = gets.chomp

def substrings(text, array)
  result = Hash.new(0)
  array.each do |array_word|
    value = text.downcase.scan(array_word)
    unless value == []
      value.each do |item|
        result[item] += 1
      end
    end
  end
  result
end

p substrings(text, dictionary)