def substrings(text, dictionary)
  dictionary.reduce({}) do |result, word|
    matches = text.downcase.scan(word.downcase).size
    if matches > 0
      result[word] = matches
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
result = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result
