def words(word)
  word_hash = {}

  individual_words = word.split(" ")
  individual_words.each do |item|
    if word_hash[item] == nil
      word_hash[item] = 1
    else
      word_hash[item] += 1
    end
  end

  return word_hash
end
