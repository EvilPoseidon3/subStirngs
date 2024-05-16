


def substrings(word, string_array)
  word_index_length = word.length - 1
  substring_index_array = []
  count_hash = {}
  for i in 0..word_index_length
    subword = []
    index_position = i
    loop do
      subword.push(word[index_position])
      substring_index_array.push(subword.join)
      index_position += 1
      break if index_position == word_index_length
    end
    subword = []
  end
  substring_index_array.map {|element|
    if string_array.include?(element)
      word_count = substring_index_array.count(element)
      count_hash[element] = word_count
    end
    }
  return count_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)